# Readable Action release tags / 可读 Action 正式版本标签

Tracks calcit-lang/calcit#857.

Replace raw revisions with verified exact released tags: checkout v7.0.1
(3d3c42e5aac5ba805825da76410c181273ba90b1), setup-node v6.5.0
(249970729cb0ef3589644e2896645e5dc5ba9c38), and setup-calcit v1.4.0
(annotated tag d02594b15f0e9de723fe1a202a3fa62a87afe07b peels to
704b3f5cd6f9ce3bd1e0c926dbdd1d181adb8180). GitHub tag objects were
verified on 2026-09-08. Preserve all validation steps and token permissions.

将三处裸 revision 改为已核实且指向同一提交的精确正式版本标签。
保留全部验证步骤、权限与凭据隔离；不修改源码、依赖或模块版本。

Local validation / 本地验证：exact Calcit/procs 0.13.77, strict Caps,
immutable Yarn, canonical Snapshot no diff, both entry checks, run-tests,
both dynamic-method zero gates, unchanged quality baseline, JS generation,
documentation checks, diff check. Native demo writes DOT output after
creating output/, then cannot execute Graphviz because dot is absent locally;
Node 24 Vite consequently cannot import output/demo.svg. The unchanged Linux
CI installs Graphviz before rendering and building Vite. No gates relaxed.
本机缺少 Graphviz，完整渲染与 Vite 构建由既有 Linux CI 验证。
