
import os

acrobatics = [("domain.pddl", f"p{i}.pddl") for i in range(1, 9)]
beamwalk = [("domain.pddl", f"p{i}.pddl") for i in range(1, 12)]
blocks = [("domain-fixed.pddl", f"p{i}.pddl") for i in range(1, 31)]
blocks2 = [("domain.pddl", "p%02d.pddl" % i) for i in range(1, 16)]
blocksnew = [("domain-fixed.pddl", f"p{i}.pddl") for i in range(1, 51)]
chainofrooms = [("domain.pddl", f"p{i}.pddl") for i in range(10, 101, 10)]
doors = [("domain.pddl", f"p{i}.pddl") for i in range(1, 16)]
earthobservation = [("domain.pddl", f"p{i}.pddl") for i in range(1, 41)]
elevators = [("domain.pddl", "p%02d.pddl" % i) for i in range(1, 16)]
exblocksworld = [("domain.pddl", "p%02d.pddl" % i) for i in range(1, 16)]
faults = [
    (f"d_{i}_{j}.pddl", f"p_{i}_{j}.pddl")
    for i in range(1, 11)
    for j in range(1, i + 1)
]
faultsnew = []
for base in range(0, 100, 10):
    for i in range(1, 10):
        faultsnew.append(
            (f"d_{base+i}_{base+10}-fixed.pddl", f"p_{base+i}_{base+10}.pddl")
        )
    for j in range(1, 10):
        faultsnew.append(
            (f"d_{base+10}_{base+j}-fixed.pddl", f"p_{base+10}_{base+j}.pddl")
        )
    faultsnew.append(
        (f"d_{base+10}_{base+10}-fixed.pddl", f"p_{base+10}_{base+10}.pddl")
    )
firstresponders = [
    ("domain-fixed.pddl", f"p_{i}_{j}.pddl") for i in range(1, 11) for j in range(1, 11)
]
firstrespondersnew = []
# some instances have no solution, and planners fail in weird ways (many have no relaxed AO determinized solution)
unsolveable_problems = set([(12,20), (24,30), (29,30), (2,10), (4,10), (5,10), (7,10)])
for base in range(0, 50, 10):
    for i in range(1, 10):
        if (base+i, base+10) in unsolveable_problems:
            continue
        firstrespondersnew.append((f"domain-fixed.pddl", f"p_{base+i}_{base+10}.pddl"))
    for j in range(1, 10):
        if (base+10, base+j) in unsolveable_problems:
            continue
        firstrespondersnew.append((f"domain-fixed.pddl", f"p_{base+10}_{base+j}.pddl"))
    firstrespondersnew.append((f"domain-fixed.pddl", f"p_{base+10}_{base+10}.pddl"))
forest = [
    ("domain.pddl", f"p_{i}_{j}.pddl") for i in range(2, 11) for j in range(1, 11)
]
forestnew = [
    ("domain.pddl", f"p_{i}_{j}.pddl") for i in range(1, 11) for j in range(1, 11)
]
islands = [("domain.pddl", f"p{i}.pddl") for i in range(1, 61)]
miner = [("domain.pddl", f"p{i}.pddl") for i in range(1, 52)]
puffbot = [(f"dm{i}.pddl", f"pb{i}.pddl") for i in range(1, 16)]
rectangletire = [("domain.pddl", f"p{i}.pddl") for i in range(1, 16)]
rectangletirenoghost = [("domain.pddl", f"p{i}.pddl") for i in range(1, 16)]
stblocks = [("domain.pddl", f"p{i}.pddl") for i in range(1, 31)]
stfaults = [(f"d_{i}_{i}.pddl", f"p_{i}_{i}.pddl") for i in range(1, 11)]
stfirst = [
    ("domain.pddl", prob)
    for prob in [
        "p_10_1.pddl",
        "p_10_10.pddl",
        "p_10_2.pddl",
        "p_10_3.pddl",
        "p_10_4.pddl",
        "p_10_5.pddl",
        "p_10_7.pddl",
        "p_10_8.pddl",
        "p_1_1.pddl",
        "p_1_10.pddl",
        "p_1_2.pddl",
        "p_1_3.pddl",
        "p_1_4.pddl",
        "p_1_5.pddl",
        "p_1_6.pddl",
        "p_1_7.pddl",
        "p_1_8.pddl",
        "p_1_9.pddl",
        "p_2_2.pddl",
        "p_2_3.pddl",
        "p_2_4.pddl",
        "p_2_7.pddl",
        "p_2_8.pddl",
        "p_3_1.pddl",
        "p_3_2.pddl",
        "p_3_7.pddl",
        "p_3_8.pddl",
        "p_4_1.pddl",
        "p_4_2.pddl",
        "p_4_3.pddl",
        "p_4_4.pddl",
        "p_4_6.pddl",
        "p_4_7.pddl",
        "p_4_8.pddl",
        "p_4_9.pddl",
        "p_5_1.pddl",
        "p_5_10.pddl",
        "p_5_2.pddl",
        "p_5_3.pddl",
        "p_5_4.pddl",
        "p_5_5.pddl",
        "p_5_8.pddl",
        "p_5_9.pddl",
        "p_6_1.pddl",
        "p_6_10.pddl",
        "p_6_2.pddl",
        "p_6_3.pddl",
        "p_6_4.pddl",
        "p_6_5.pddl",
        "p_6_8.pddl",
        "p_6_9.pddl",
        "p_7_1.pddl",
        "p_7_10.pddl",
        "p_7_2.pddl",
        "p_7_3.pddl",
        "p_7_4.pddl",
        "p_7_5.pddl",
        "p_7_6.pddl",
        "p_7_7.pddl",
        "p_7_8.pddl",
        "p_8_1.pddl",
        "p_8_10.pddl",
        "p_8_2.pddl",
        "p_8_4.pddl",
        "p_8_5.pddl",
        "p_8_6.pddl",
        "p_8_7.pddl",
        "p_8_8.pddl",
        "p_8_9.pddl",
        "p_9_1.pddl",
        "p_9_2.pddl",
        "p_9_3.pddl",
        "p_9_6.pddl",
        "p_9_7.pddl",
        "p_9_8.pddl",
    ]
]
stmapfdu = [("domain_p%02d.pddl" % i, "p%02d.pddl" % i) for i in range(1, 21)]
sttires = [("domain.pddl", "p%02d.pddl" % i) for i in range(2, 16)]
tidyup = [("domain.pddl", "tidyup_inst_mdp__%02d.pddl" % i) for i in range(1, 11)]
tireworld = [("domain.pddl", "p%02d.pddl" % i) for i in range(1, 16) if i not in [1,9,15]] # Instances 1, 9, and 15 are not solvable
tireworldspiky = [("domain.pddl", f"p{i}.pddl") for i in range(1, 12)]
tireworldtruck = [("domain.pddl", f"p{i}.pddl") for i in range(1, 75)]
triangletireworld = [("domain.pddl", f"p{i}.pddl") for i in range(1, 41)]
zenotravel = [("domain.pddl", "p%02d.pddl" % i) for i in range(1, 16)]


DOMAINS = {
    "acrobatics": acrobatics,#
    "beam-walk": beamwalk,#
    "blocksworld": blocks,
    "blocksworld-2": blocks2,
    "blocksworld-new": blocksnew,#
    "chain-of-rooms": chainofrooms,#
    "doors": doors,#
    "earth-observation": earthobservation,#
    "elevators": elevators,#
    "ex-blocksworld": exblocksworld,
    "faults": faults,
    "faults-new": faultsnew,#
    "first-responders": firstresponders,
    "first-responders-new": firstrespondersnew,#
    "forest": forest,
    "forest-new": forestnew,#
    "islands": islands,#
    "miner": miner,#
    "puffbot_dialogue_pddl": puffbot,
    "rectangle-tireworld": rectangletire,
    "rectangle-tireworld-noghost": rectangletirenoghost,
    "st_blocksworld": stblocks,
    "st_faults": stfaults,
    "st_first_responders": stfirst,
    "st_mapfdu": stmapfdu,
    "st_tires": sttires,
    "tidyup-mdp": tidyup,#
    "tireworld": tireworld,#
    "tireworld-spiky": tireworldspiky,#
    "tireworld-truck": tireworldtruck,#
    "triangle-tireworld": triangletireworld,#
    "zenotravel": zenotravel,#
}

COLLECTIONS = {
    'original-fond-papers': [
        'acrobatics',
        'beam-walk',
        'blocksworld-new',
        'chain-of-rooms',
        'earth-observation',
        'elevators',
        'faults-new',
        'first-responders-new',
        'forest-new',
        'tidyup-mdp',
        'tireworld',
        'triangle-tireworld',
        'zenotravel',
    ],
    'new-fond-papers': [
        'doors',
        'islands',
        'miner',
        'tireworld-spiky',
        'tireworld-truck',
    ],
    'extra': [
        'ex-blocksworld',
        'puffbot_dialogue_pddl',
        'rectangle-tireworld',
        'rectangle-tireworld-noghost',
    ],
    'strong': [
        'st_blocksworld',
        'st_faults',
        'st_first_responders',
        'st_mapfdu',
        'st_tires',
    ],
    'all': list(DOMAINS.keys()),
}

COLLECTIONS['all-fond-papers'] = COLLECTIONS['original-fond-papers'] + COLLECTIONS['new-fond-papers']

# Path to the directory containing this script
SCRIPT_DIR = os.path.dirname(os.path.realpath(__file__))

for dom in DOMAINS:
    # Replace all the files with their absolute path
    DOMAINS[dom] = [
        (os.path.abspath(os.path.join(SCRIPT_DIR, dom, dom_file)), os.path.abspath(os.path.join(SCRIPT_DIR, dom, prob_file))) for dom_file, prob_file in DOMAINS[dom]
    ]

def confirm_files():
    for d in DOMAINS:
        print("(%3d) %s" % (len(DOMAINS[d]), d))
        for domain, problem in DOMAINS[d]:
            assert os.path.exists(domain), f"{domain} does not exist"
            assert os.path.exists(problem), f"{problem} does not exist"

# confirm_files()
