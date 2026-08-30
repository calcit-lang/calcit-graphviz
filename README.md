## Triadica

> render DOT file that can be handled by Graphviz

Triadica is now a pure Calcit DOT source generator. The former native
`render-dot-file` bridge was an unimplemented `"TODO"` stub and was retired;
use `triadica.core/digraph`, `graph`, `node`, `arrow`, and `connect` directly.

### Usages

Install with `caps add calcit-lang/graphviz@<tag>` and run `caps`.

See [Generate DOT source](docs/generate-dot-source.md) for the `digraph`,
`graph`, `node`, `arrow`, and `connect` composition model. The page is indexed
by `calcit docs read/search`.

### License

MIT
