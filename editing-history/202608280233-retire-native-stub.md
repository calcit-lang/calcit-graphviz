# Retire native stub / 退役 native 占位桥接

- Retired the Rust dylib and `render-dot-file`, which only returned the literal `"TODO"` for map input.
- 退役 Rust dylib 与 `render-dot-file`；该入口对 map 输入只返回字面量 `"TODO"`。
- Public/local usage audits found no consumers of the native entry point or module dependency.
- 公开与本地使用面审计未发现 native 入口或模块依赖方。
- Preserved the functional pure-Calcit DOT builders and changed CI to execute a real `digraph` smoke.
- 保留可用的纯 Calcit DOT builder，并让 CI 实际执行 `digraph` smoke。
- Updated map-pair reads for nominal `Option`: `.unwrap` is used only at the proven two-item pair invariant, fixing leaked Option debug values in generated DOT.
- 按名义 `Option` 更新 map pair 读取；仅在确定为双元素 pair 的不变量处调用 `.unwrap`，修复 DOT 输出泄漏 Option 调试值的问题。
- Upgraded to Calcit 0.13.52, `calcit.std` 0.2.20, and `setup-calcit@v1.3.0`.
- 升级到 Calcit 0.13.52、`calcit.std` 0.2.20 与 `setup-calcit@v1.3.0`。
