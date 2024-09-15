import os
from glob import glob
import re

# Path to the directory containing this script
SCRIPT_DIR = os.path.dirname(os.path.realpath(__file__))


def get_instances(
    path,
    pattern="p_*.pddl",
    regex=None,
    sorted_by=lambda x: extract_instance_no(x),
):
    """Get sorted list of problem instance files in a folder

    pattern and regex are mutually exclusive to filter which files to include
    """

    if regex is not None:
        pattern = "p??.pddl"
        files = [f for f in os.listdir(path) if re.search(regex, f)]
    else:
        files = glob(os.path.join(path, pattern))

    if sorted_by is None:
        return sorted(files)
    else:
        return sorted(files, key=sorted_by)


def extract_instance_no(file_name):
    """Guess the instance number from the file name; otherwise yield file name itself"""
    # p_12_2.pddl
    x = re.search(r"p_(\d+)_(\d+).pddl", file_name)
    if x is not None:
        return int(x.group(1)), int(x.group(2))

    # p_12.pddl or p12.pddl
    x = re.search(r"p_?(\d+).pddl", file_name)
    if x is not None:
        return int(x.group(1))

    # pb_12.pddl or pb12.pddl
    x = re.search(r"pb_?(\d+).pddl", file_name)
    if x is not None:
        return int(x.group(1))

    # last option: just return file name
    # print(file_name)
    return file_name


acrobatics = [
    ("domain.pddl", os.path.basename(f))
    for f in get_instances(
        "acrobatics",
        pattern="p*.pddl",
    )
]
beamwalk = [
    ("domain.pddl", os.path.basename(f))
    for f in get_instances("beam-walk", pattern="p*.pddl")
]
blocks_world = [
    ("domain.pddl", os.path.basename(f))
    for f in get_instances("blocksworld", pattern="p*.pddl")
]
blocks_world2 = [
    ("domain.pddl", os.path.basename(f))
    for f in get_instances("blocksworld-2", pattern="p*.pddl")
]
blocks_world_new = [
    ("domain-fixed.pddl", os.path.basename(f))
    for f in get_instances("blocksworld-new", pattern="p*.pddl")
]

bus_fare = [
    ("domain.pddl", os.path.basename(f))
    for f in get_instances("bus-fare", pattern="p*.pddl")
]

chain_of_rooms = [
    ("domain.pddl", os.path.basename(f))
    for f in get_instances("chain-of-rooms", pattern="p*.pddl")
]

climber = [
    ("domain.pddl", os.path.basename(f))
    for f in get_instances("climber", pattern="p*.pddl")
]


doors = [
    ("domain.pddl", os.path.basename(f))
    for f in get_instances("doors", pattern="p*.pddl")
]

earth_observation = [
    ("domain.pddl", os.path.basename(f))
    for f in get_instances("earth-observation", pattern="p*.pddl")
]

elevators = [
    ("domain.pddl", os.path.basename(f))
    for f in get_instances("elevators", pattern="p*.pddl")
]

ex_blocksworld = [
    ("domain.pddl", os.path.basename(f))
    for f in get_instances("ex-blocksworld", pattern="p*.pddl")
]
faults = [
    (
        f"d_{extract_instance_no(f)[0]}_{extract_instance_no(f)[1]}-fixed.pddl",
        os.path.basename(f),
    )
    for f in get_instances(
        "faults",
        pattern="p_*_*.pddl",
        sorted_by=lambda x: extract_instance_no(x),
    )
]
faults_new = [
    (
        f"d_{extract_instance_no(f)[0]}_{extract_instance_no(f)[1]}-fixed.pddl",
        os.path.basename(f),
    )
    for f in get_instances(
        "faults-new",
        pattern="p_*_*.pddl",
        sorted_by=lambda x: extract_instance_no(x),
    )
]
first_responders = [
    (
        "domain-fixed.pddl",
        os.path.basename(f),
    )
    for f in get_instances(
        "first-responders",
        pattern="p_*_*.pddl",
        sorted_by=lambda x: extract_instance_no(x),
    )
]

# some instances have no solution, and planners fail in weird ways (many have no relaxed AO determinized solution)
first_responders_new_unsolveable = set(
    [(12, 20), (24, 30), (29, 30), (2, 10), (4, 10), (5, 10), (7, 10)]
)
first_responders_new = [
    (
        "domain-fixed.pddl",
        os.path.basename(f),
    )
    for f in get_instances(
        "first-responders-new",
        pattern="p_*_*.pddl",
        sorted_by=lambda x: extract_instance_no(x),
    )
    if extract_instance_no(f) not in first_responders_new_unsolveable
]
forest = [("domain.pddl", os.path.basename(f)) for f in get_instances("forest")]
forest_new = [("domain.pddl", os.path.basename(f)) for f in get_instances("forest-new")]

islands = [
    ("domain.pddl", os.path.basename(f))
    for f in get_instances("islands", pattern="p*.pddl")
]
miner = [
    ("domain.pddl", os.path.basename(f))
    for f in get_instances("miner", pattern="p*.pddl")
]
puffbot = [
    (f"dm{extract_instance_no(f)}.pddl", os.path.basename(f))
    for f in get_instances("puffbot_dialogue_pddl", regex=r"pb\d+.pddl")
]
rectangle_tire = [
    ("domain.pddl", os.path.basename(f))
    for f in get_instances("rectangle-tireworld", regex=r"p\d+.pddl")
]
rectangle_tire_noghost = [
    ("domain.pddl", os.path.basename(f))
    for f in get_instances("rectangle-tireworld-noghost", regex=r"p\d+.pddl")
]

st_blocksworld = [
    ("domain.pddl", os.path.basename(f))
    for f in get_instances("st_blocksworld", pattern="p*.pddl")
]
st_faults = [
    (
        f"d_{extract_instance_no(f)[0]}_{extract_instance_no(f)[1]}.pddl",
        os.path.basename(f),
    )
    for f in get_instances("st_faults", regex=r"p_\d+_\d+.pddl")
]
st_first_respondeners = [
    (
        "domain.pddl",
        os.path.basename(f),
    )
    for f in get_instances("st_first_responders", regex=r"p_\d+_\d+.pddl")
]
st_mapfdu = [
    (
        f"domain_p{extract_instance_no(f):02}.pddl",
        os.path.basename(f),
    )
    for f in get_instances("st_mapfdu", regex=r"^p\d+.pddl")
]
sttires = [
    (
        "domain.pddl",
        os.path.basename(f),
    )
    for f in get_instances("st_tires", regex=r"^p\d+.pddl")
]
tidyup = [
    (
        "domain.pddl",
        os.path.basename(f),
    )
    for f in get_instances(
        "tidyup-mdp",
        regex=r"tidyup_inst_mdp__\d+.pddl",
        sorted_by=lambda x: int(re.search(r"tidyup_inst_mdp__(\d+).pddl", x).group(1)),
    )
]

tireworld_unsolvable = set([1, 9, 15])
tireworld = [
    (
        "domain.pddl",
        os.path.basename(f),
    )
    for f in get_instances("tireworld", regex=r"^p\d+.pddl")
    if extract_instance_no(f) not in tireworld_unsolvable
]

tireworld_spiky = [
    (
        "domain.pddl",
        os.path.basename(f),
    )
    for f in get_instances("tireworld-spiky", regex=r"^p\d+.pddl")
]
tireworld_truck = [
    (
        "domain.pddl",
        os.path.basename(f),
    )
    for f in get_instances("tireworld-truck", regex=r"^p\d+.pddl")
]
triangletire_world = [
    (
        "domain.pddl",
        os.path.basename(f),
    )
    for f in get_instances("triangle-tireworld", regex=r"^p\d+.pddl")
]

bus_fare = [
    ("domain.pddl", os.path.basename(f))
    for f in get_instances("bus-fare", pattern="p*.pddl")
]

river = [
    (
        "domain.pddl",
        os.path.basename(f),
    )
    for f in get_instances("river", regex=r"^p\d+.pddl")
]
zenotravel = [
    (
        "domain.pddl",
        os.path.basename(f),
    )
    for f in get_instances("zenotravel", regex=r"^p\d+.pddl")
]


DOMAINS = {
    "acrobatics": acrobatics,  #
    "beam-walk": beamwalk,  #
    "blocksworld": blocks_world,
    "blocksworld-2": blocks_world2,
    "blocksworld-new": blocks_world_new,  #
    "bus-fare": bus_fare,
    "chain-of-rooms": chain_of_rooms,  #
    "climber": climber,
    "doors": doors,  #
    "earth-observation": earth_observation,  #
    "elevators": elevators,  #
    "ex-blocksworld": ex_blocksworld,
    "faults": faults,
    "faults-new": faults_new,  #
    "first-responders": first_responders,
    "first-responders-new": first_responders_new,  #
    "forest": forest,
    "forest-new": forest_new,  #
    "islands": islands,  #
    "miner": miner,  #
    "puffbot_dialogue_pddl": puffbot,
    "rectangle-tireworld": rectangle_tire,
    "rectangle-tireworld-noghost": rectangle_tire_noghost,
    "river": river,
    "st_blocksworld": st_blocksworld,
    "st_faults": st_faults,
    "st_first_responders": st_first_respondeners,
    "st_mapfdu": st_mapfdu,
    "st_tires": sttires,
    "tidyup-mdp": tidyup,  #
    "tireworld": tireworld,  #
    "tireworld-spiky": tireworld_spiky,  #
    "tireworld-truck": tireworld_truck,  #
    "triangle-tireworld": triangletire_world,  #
    "zenotravel": zenotravel,  #
}

COLLECTIONS = {
    "original-fond-papers": [
        "acrobatics",
        "beam-walk",
        "blocksworld-new",
        "chain-of-rooms",
        "earth-observation",
        "elevators",
        "faults-new",
        "first-responders-new",
        "forest-new",
        "tidyup-mdp",
        "tireworld",
        "triangle-tireworld",
        "zenotravel",
    ],
    "new-fond-papers": [
        "doors",
        "islands",
        "miner",
        "tireworld-spiky",
        "tireworld-truck",
    ],
    "extra": [
        "ex-blocksworld",
        "puffbot_dialogue_pddl",
        "rectangle-tireworld",
        "rectangle-tireworld-noghost",
    ],
    "strong": [
        "st_blocksworld",
        "st_faults",
        "st_first_responders",
        "st_mapfdu",
        "st_tires",
    ],
    "interesting": ["climber", "bus-fare", "river"],
    "all": list(DOMAINS.keys()),
}

COLLECTIONS["all-fond-papers"] = (
    COLLECTIONS["original-fond-papers"] + COLLECTIONS["new-fond-papers"]
)


for dom in DOMAINS:
    # Replace all the files with their absolute path
    DOMAINS[dom] = [
        (
            os.path.abspath(os.path.join(SCRIPT_DIR, dom, dom_file)),
            os.path.abspath(os.path.join(SCRIPT_DIR, dom, prob_file)),
        )
        for dom_file, prob_file in DOMAINS[dom]
    ]


def confirm_files():
    for d in DOMAINS:
        print("(%3d) %s" % (len(DOMAINS[d]), d))
        for domain, problem in DOMAINS[d]:
            assert os.path.exists(domain), f"{domain} does not exist"
            assert os.path.exists(problem), f"{problem} does not exist"


# confirm_files()


if __name__ == "__main__":

    # Prints out every benchmark and the number of instances in them
    confirm_files()

    # Access the problems for a specific domain
    # for dom, prob in DOMAINS["acrobatics"]:
    #     print(dom)
    #     print(prob)

    # Access all the benchmarks for a specific collection
    print("All domains in collection 'all-fond-papers':")
    for domain_name in COLLECTIONS["all-fond-papers"]:
        print("\t", domain_name)

    print("All domains in collection 'interesting':")
    for domain_name in COLLECTIONS["interesting"]:
        print("\t", domain_name)
