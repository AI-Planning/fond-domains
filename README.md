
# FOND Benchmarks

Flat collection of all FOND domains in circulation. Notes are my (Christian Muise) best guess.

## Notable Changes
- `faults` and `faults-new` have an empty `:parameters` block added to the `finish` action.

## FOND-SAT & Paladinus Domains

These come from the FOND-SAT/Paladinus repos.

- acrobatics
- beam-walk
- doors
- earth-observation
- islands
- miner
- tireworld-spiky
- tireworld-truck

## MyND Domains

### tidyup-mdp

Was modified to fix some PDDL bugs: the `cup*` objects were moved from the problem files to constants in the domain, since they are mentioned explicitly in action preconditions.

## Misc Domains

### st_mapfdu

From Thorsten Engesser on planning for implicit coordination. Strong cyclic plans exist, but it's the acyclic ones that are desired.

### puffbot_dialogue_pddl

From Milene Teixeira -- domain for building dialogue agents in the health-care setting.

# `catalogue.py`

This is a helper script that will give you access to all of the benchmarks in the form of dom/prob pairs (absolute paths). Example usage:

```python
from catalogue import confirm_files, COLLECTIONS, DOMAINS

# Prints out every benchmark and the number of instances in them
confirm_files()

# Access the problems for a specific domain
for dom,prob in DOMAINS['acrobatics']:
    print(dom)
    print(prob)

# Access all the benchmarks for a specific collection
for domain_name in COLLECTIONS['all-fond-papers']:
    print(domain_name)

```
