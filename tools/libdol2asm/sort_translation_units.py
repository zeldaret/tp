
from collections import defaultdict

from . import util
from .context import Context

class Node:
    def __init__(self, name):
        self.name = name
        self.depth = 0
        self.id = name

    def __eq__(self, other):
        return other.id == self.id

    def __hash__(self):
        return hash(self.id)

    def __repr__(self):
        return self.__str__()

    def __str__(self):
        return str((self.depth, self.name))

def unique_keeporder(seq):
    seen = set()
    seen_add = seen.add
    return [x for x in seq if not (x in seen or seen_add(x))]

def sort(context: Context, keys, order_sections):
    nodes = dict([(x, Node(x)) for x in keys])
    orders = []
    for os, osv in order_sections.items():
        orders.append([ x for x in unique_keeporder(osv)])

    edges = []
    graph = dict()
    for node in nodes.values():
        graph[node.id] = []
    for order in orders:
        for a, b in util.mapOverlap(order, 2):
            if not a or not b:
                continue
            graph[a].append(b)
            edges.append([a, b])

    predecessor_count = defaultdict(int)
    for f, t in edges:
        predecessor_count[t] += 1

    top_node = None
    top_nodes = [x for x in nodes.keys() if predecessor_count[x] == 0]
    if len(top_nodes) > 1:
        pass
    elif len(top_nodes) == 0:
        context.error("error: found no top-level node")

    def calculate_max_depth(k, depth):
        node = nodes[k]
        if depth <= node.depth:
            return

        node.depth = depth
        for edge in graph[k]:
            calculate_max_depth(edge, depth + 1)

    for top_node in top_nodes:
        calculate_max_depth(top_node, 1)

    sorted_nodes = list(nodes.values())
    sorted_nodes.sort(key=lambda x: x.depth)
    return [x.id for x in sorted_nodes]
