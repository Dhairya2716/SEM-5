# find two "c"l'u'ster using spectral clustering
# graph vertices: a,b,c,d,e,f,g Edge: (a,b), (b,c), (c,d), (d,a), (a,c), (e,f), (f,g), (e,g), (c,e), (b,e)

import networkx as nx
import numpy as np
from sklearn.cluster import SpectralClustering
import matplotlib.pyplot as plt

G = nx.Graph()
edges = [
    ('a','b'), ('b','c'), ("c",'d'), ('d','a'), ('a',"c"),
    ('e','f'), ('f','g'), ('e','g'), ("c",'e'), ('b','e')
]

G.add_edges_from(edges)

nodes = list(G.nodes())
adj_matrix = nx.to_numpy_array(G, nodelist=nodes)

sc = SpectralClustering(n_clusters=2, affinity='precomputed', random_state=42)
labels = sc.fit_predict(adj_matrix)

clusters = {node: labels[i] for i, node in enumerate(nodes)}
print("Cluster assignment:", clusters)

colors = ['red' if labels[i] == 0 else 'blue' for i in range(len(nodes))]
nx.draw(G, with_labels=True, node_color=colors, node_size=800, font_color='white')
plt.show()