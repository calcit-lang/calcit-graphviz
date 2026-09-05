# Fix native list accumulator / 修复原生 list 累加器

- Initialize `render-demo!` with an empty persistent list from `range 0` instead of an empty vector.
- Keep the existing accumulation order and make every value passed to `&format-ternary-tree` satisfy its list contract on Calcit 0.13.77.
- Explicitly unwrap the `Option` returned by `first` before passing the parsed tree to `make-tree-demo`.
- Add a definition-attached regression test that formats the first accumulated value without invoking the external Graphviz executable.

- 将 `render-demo!` 的初始累加器从空 vector 改为由 `range 0` 产生的空 persistent list。
- 保持现有累加顺序，并确保传给 `&format-ternary-tree` 的每个值都满足 Calcit 0.13.77 的 list 契约。
- 在将解析后的树传给 `make-tree-demo` 前，显式解包 `first` 返回的 `Option`。
- 添加定义附着的回归测试，在不调用外部 Graphviz 可执行文件的情况下覆盖首次累加值的格式化。
