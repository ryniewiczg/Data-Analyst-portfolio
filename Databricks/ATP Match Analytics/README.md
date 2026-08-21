# ATP Match Analytics — Databricks Pipeline

A small data pipeline built on Databricks to practice the Bronze/Silver/Gold
pattern (Medallion architecture). The topic is tennis, but the actual point
of the project is the cleaning layer — turning a messy source file into
something you can trust.

## The data

I generated the source file myself. It's not real ATP results — I made it up,
but I made it messy on purpose: the same surface spelled nine different ways,
dates in three formats, prize money written as text with different currency
symbols, a duplicate row, a couple of retired matches. Basically the kind of
mess you actually get from real systems.

## What it does

* **Bronze**: raw data, untouched, just renamed columns where the source had
spaces in the names (Databricks doesn't like that)
* **Silver**: one clean row per match — dates parsed, surfaces normalized,
duplicates removed, currency extracted where possible (and marked UNKNOWN
where it isn't)
* **Gold**: four views built for specific questions — win rate per player,
win rate by surface, tournament stats, head-to-head records

Everything is SQL. No Python.

## A few things I had to figure out

Getting dates from three formats into one column: `TRY\_TO\_DATE` wrapped in
`COALESCE`, trying each format in order. Regular `TO\_DATE` just throws an
error on the first mismatch, so you need the "try" version or the whole
query dies.

Currency: `$3,500,000` and `€450 000` both needed cleaning, but some rows had
just a number with no symbol at all. I didn't guess the currency for those —
marked them UNKNOWN and counted them, instead of pretending I knew.

One "duplicate" row wasn't actually identical — one copy had the match
duration, the other didn't. Simple `DISTINCT` wouldn't have caught it.
Used `ROW\_NUMBER()` to keep the more complete row.

Also built the same pipeline twice — once as a plain notebook with regular
SQL, and once as a Lakeflow Declarative Pipeline. The declarative version
took some getting used to (streaming tables vs materialized views aren't
interchangeable, learned that the hard way), but the dependency graph it
draws automatically is genuinely useful.

## Structure

```
sql/           the three layers, notebook version
pipeline/      same logic, Lakeflow Declarative Pipeline version
data/          the source CSV
docs/          dashboard screenshot
```

## 

