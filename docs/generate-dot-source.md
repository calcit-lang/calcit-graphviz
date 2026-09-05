---
title: "Generate DOT source"
summary: "Compose deterministic Graphviz DOT text with Triadica graph, node, arrow, and connection helpers"
scope: "module"
kind: "guide"
category: "visualization"
aliases:
  - "calcit graphviz"
  - "triadica"
  - "DOT graph"
  - "digraph"
  - "graphviz source"
  - "connect nodes"
  - "生成 DOT 图"
entry_for:
  - "triadica.core/digraph"
  - "triadica.core/graph"
  - "triadica.core/node"
  - "triadica.core/arrow"
  - "triadica.core/connect"
---

# Generate DOT source

Triadica is a pure Calcit source generator: it produces deterministic DOT text but does not invoke a Graphviz executable, create files, or render images. Keep rendering and file-system effects in an application adapter.

```cirru.no-check
triadica.core/digraph ({})
  []
    triadica.core/node |client $ {} (:label |Client)
    triadica.core/node |server $ {} (:label |Server)
    triadica.core/arrow |client |server $ {} (:label |request)
```

Use `digraph` for directed graphs and `graph` for undirected graphs. `node` emits a declaration, `arrow` emits a directed connection, and `connect` emits an undirected connection. Options are converted to DOT attribute lists; pass only application-owned labels, identifiers, and attributes, and escape or validate external text before including it in a graph.

Generate DOT as a pure projection of typed application state. This works well for diagnostics, dependency visualizations, and offline reports: the updater owns the state, Triadica formats it, and a boundary adapter decides whether to write the `.dot` file or invoke a renderer.
