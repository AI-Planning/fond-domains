
# FOND Benchmarks

Flat collection of all FOND domains in circulation. Notes are our (Christian Muise & Sebastian Sardina) best guesses :hand_over_mouth:

These are planning domains that include the `oneof` effect to model non-deterministic actions (without probabilities). The `oneof` construct was proposed as part of NPDDL (which starts from level 2 of PDDL 2.1) in the following 2003 workshop paper:

* [Extending PDDL to nondeterminism, limited sensing and iterative conditional plans](http://users.cecs.anu.edu.au/~thiebaux/workshops/ICAPS03/proceedings/PDDL-ICAPS03.pdf), Piergiorgio Bertoli, Alessandro Cimatti, Ugo Dal Lago, Marco Pistore, International Workshop on PDDL @ ICAPS 2003, pp 15-24,2003

Planning under non-deterministic `oneof` actions was then first used in the 2006 [IPC-5](https://lpg.unibs.it/ipc-5/) as an addition ot the probabilistic/uncertainty track (now probabilistic and non-deterministic track):

* [5th International Planning Competition: Non-deterministic Track Call For Participation](https://ipc06.icaps-conference.org/probabilistic/docs/cf-ipc-prob.pdf), Blai Bonet and Robert Givan, IPC-5 @ ICAPS 2006.

## Notable Changes

- added empty `:parameters` block to some actions:
  - `finish` action in `faults`, `faults-new`, and `st_faults`
  - `changetire` action in `tireworld` and `st_tireworld`.
- added missing `:requirements` in domains:
  - `st_blocksworld`, `st_first_responders`, `st_mapfdu`, `st_tires`, `st_faults`, `puffbot_dialogue_pddl`, `tidyup-mdp`, and `zenotravel`.


## Probabilistic Interesting  - (Little and Thiebaux 2007)

[(Little and Thiebaux 2007)](https://users.cecs.anu.edu.au/~thiebaux/papers/icaps07wksp.pdf) proposed the following four "probabilistically interesting" domains:

- `climber`: requires a strong conservative, less efficient, plan (to avoid falling and dying).
- `river`
- `bus-fare`
- `triangle-tireworld`

Domains taken from FOND replanner [safe-planner](https://github.com/mokhtarivahid/safe-planner/tree/master/benchmarks/prob_interesting).

## IPC-6 2008

The following four domains from the [**2008 IPC-6 FOND track**](https://ipc08.icaps-conference.org/probabilistic/wiki/index.php/Results.html#Fully_Observable_Non-Deterministic_.28FOND.29_track) in the [uncertainty part](https://ipc08.icaps-conference.org/probabilistic/wiki/):

- `blocksworld` (all solvable)
- `faults` (all solvable)
- `first-responders`
- `forest` (at least 48/66 proven unsolvable)
  - type `problem` renamed to `sub-problem` to avoid a conflict with the `problem` keyword.

These domains are already FOND ones, that is, they use the non-deterministic `oneof` construct. Not every problem has a strong-cyclic plan, some were proved unsolvable (see Table 1 in [2012 PRP paper](https://cdn.aaai.org/ojs/13520/13520-40-17038-1-2-20201228.pdf)).


In addition, the following domains were crafted but not used in the final competition:

- `rectangle-tireworld`: a variant of `triangle-tireworld` where the network is rectangular; nondeterministic by removing probabilities from the FOP version.
  - `rectangle-tireworld-noghost`: same but without the `ghostTeleport`  action.
- `tireworld`: adapted the IPC-5 (2006) probabilistic version by replacing probabilities with `oneof` non-determinism. Provided as an example before competition.

A description of the above domains can be found in 2008 Bryce & Buffet's [International Planning Competition Uncertainty Part: Benchmarks and Results](https://ipc08.icaps-conference.org/probabilistic/wiki/images/0/03/Results.pdf) report.

## PRP (2012)

The [2012 PRP paper](https://cdn.aaai.org/ojs/13520/13520-40-17038-1-2-20201228.pdf) used all the four final 2008 IPC-6 FOND track domains and probabilistic interesting ones, plus the following ones.

First, the `blocksworld` and `forest` domains were extended as follows:

- `blocksworld-new`: scaled the number of blocks from 1 to 50 (the highest number of blocks in the original benchmark set is 20).
- `forest-new`: generator slightly to guarantee that every problem has a strong cyclic plan.

Second, the PRP paper modified three domains from [**2006 IPC5 Probabilistic Track**](https://ipc06.icaps-conference.org/probabilistic/) by stripping the probabilities and replacing them with non-deterministic `oneof` constructs:

- `blocksworld-2`: same domain as the IPC-6 `blocksworld` but with 15 instances coming from the probabilistic track.
- `elevators`
- `zenotravel`

Many additional domains were added later to its [repo](https://github.com/QuMuLab/planner-for-relevant-policies/tree/master/fond-benchmarks) (but not reported in the 2012 paper itself) and became default benchmarks for later FOND planners: 👍

- `blocksworld-ex`: FOND version of the probabilistic `ex-blocksworld` in 2008 IPC-6. In this domain, blocks can explode.
- `first-responders-new`: as with `forest-new` and `blocksworld-new`, this is `first-responders-new` but with expanded sets of the benchmark to scale much larger.

## FOND-SAT (2018)

These five come from the [FOND-SAT](https://github.com/tomsons22/FOND-SAT) repo/paper, crafted to have many "misleading plans" (i.e., weak plans leading to dead-ends):

- `tireworld-spiky`: modification of `triangle-tireworld`.
- `tireworld-truck`: modification of `tireworld-spiky` itself.
- `islands`
- `doors`: a variation of `chain-of-rooms` (used by QBFPLAN and MBP).
- `miner`


## Misc Domains

- `acrobatics`: similar to `beam-walk`; by Miquel Ramirez 2014.
- `beam-walk`: [(Cimatti, Roveri, & Traverso, 1998)](https://cdn.aaai.org/AAAI/1998/AAAI98-124.pdf)
- `chain-of-rooms`: from [Constructing conditional plans by a theorem-prover](https://jair.org/index.php/jair/article/view/10230/), JAIR 10 (1999), 323–352, as part of the QBFPLAN planner.
- `earth-observation`: ([J Aldinger & J Löhr, 2013)](https://gki.informatik.uni-freiburg.de/papers/aldinger-loehr-pcd2013.pdf)
- `puffbot-dialog`: domain generating the dialogue policy for building dialogue agents in the health-care setting. Reported in [Teixeira et. al SAC'21 paper](https://dl.acm.org/doi/10.1145/3412841.3441942) and [PhD thesis](https://iris.unitn.it/retrieve/handle/11572/361402/595412/phd_unitn_santos_teixeira_milene.pdf).
  - have problem-specific objects moved to domain constants, since they are used in actions.
- `tidyup-mdp`: from MyND (as far as we can trace it back; see [here](https://bitbucket.org/robertmattmueller/mynd/src/master/data/fond-pddl/tidyup-mdp/)); with significant clean-up by Christian Muise.
  - modified to fix some PDDL bugs: the `cup*` objects were moved from the problem files to constants in the domain, since they are mentioned explicitly in action preconditions.

### From strong domains: `st_xyz`

These are domains that were designed to admit _strong_ solutions. Strong cyclic plans exist, but it's the acyclic ones that are desired. 😉

- `st_blocksworld`, `st_faults`, `st_first_responders`, `st_tiresworld`: domains from the 2008 IPC-6 FOND track that were modified to have _strong_ solutions by [Jicheng Fu et. al ICTAI'13](https://ieeexplore.ieee.org/document/6735234).
- `st_mapfdu`: from Thorsten Engesser on planning for implicit coordination; [AAAI'20](https://doi.org/10.1609/aaai.v34i05.6204).

## Catalogue Tool

Script tool `catalogue.py` gives you access to all of the benchmarks in the form of dom/prob pairs (absolute paths). Example usage:

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

Script can also be run as follows:

```python
$ python catalogue.py
(  8) acrobatics
( 11) beam-walk
( 30) blocksworld
( 15) blocksworld-2
( 50) blocksworld-new
(  1) bus-fare
...
...
...
All domains in collection 'interesting':
         climber
         bus-fare
         river
```

## FOND Planners

Using PDDL with `oneof` construct:

- [PR2](https://github.com/QuMuLab/pr2) ([2024](https://arxiv.org/pdf/2312.11675)): Next iteration of PRP. 😉
- [CFOND-ASP](https://github.com/ssardina-research/cfond-asp) ([2023](https://ojs.aaai.org/index.php/ICAPS/article/view/19789/19548))
- [Paladinus](https://github.com/ramonpereira/paladinus) ([2022](https://ojs.aaai.org/index.php/ICAPS/article/view/19789/19548)).
- [FOND-SAT](https://github.com/tomsons22/FOND-SAT) ([2018](https://arxiv.org/pdf/1806.09455))
- [MyND](https://github.com/JackyCSer/MyNDPlanner) ([2010](https://ojs.aaai.org/index.php/ICAPS/article/view/13408/))
- [PRP](https://github.com/QuMuLab/planner-for-relevant-policies) ([2012](https://cdn.aaai.org/ojs/13520/13520-40-17038-1-2-20201228.pdf))

Not using `oneof` construct:

- FIP ([2011](https://www.ijcai.org/Proceedings/11/Papers/326.pdf)). Domains need to be (manually) determinized first (with specific naming on outcomes; fewer than 10).
- GAMER ([2009](https://dl.acm.org/doi/10.5555/1814110.1814112); [pdf](https://link.springer.com/chapter/10.1007/978-3-642-04617-9_1))
- NDP (2008)
- MBP ([2003](https://www.sciencedirect.com/science/article/pii/S0004370202003740))
- QBFPLAN ([1999](https://jair.org/index.php/jair/article/view/10230/))
- UMOP ([2000](https://jair.org/index.php/jair/article/view/10265)): universal OBDD-based planning framework for non-deterministic multi-agent domains (described in their NADL domain description language).