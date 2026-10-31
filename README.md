# Calcit Graphviz

纯 Calcit DOT 源码生成器，Demo 使用系统 Graphviz 渲染 SVG。

## 对使用者的影响

0.0.13 候选配对正式 Calcit / `@calcit/procs` **0.32.1** 与已发布 `calcit.std` **0.2.47**，需重新安装工具链并生成 JS。
候选尚未发布，旧 tag 不移动；本 PR 不合并、发版或生产部署。
DOT 公共 API、属性格式、原十帧 Demo 和 COS 前缀保持，不更换布局算法。

本轮通过官方 schema 工具将 Demo 计数器声明为真实 `Ref Number`，修复严格检查中 deref 缺少泛型 Ref 证据的问题。
其初值 0、reset 0、inc 递增及所有代码、原测试保持；不改为 Dynamic、不增加强转或编译器改写规则。
移除旧 procs 0.29.3 / finger-vec 0.1.1 的包龄豁免，使用一小时等待且无单包例外。
门禁适用于新解析版本；immutable 复用 lockfile 的已有解析，不会逐次重新核对发布时间。

## API 与边界

使用 `triadica.core/digraph`、`graph`、`node`、`arrow`、`connect` 组合 DOT，详见 [Generate DOT source](docs/generate-dot-source.md)。
安装应选择实际已发布 tag：`caps add calcit-lang/calcit-graphviz@<tag>`，然后运行 `caps`。
原未实现的 native render-dot-file 桥已退役，不重新引入占位接口。

图级 Tag 属性仍生成 `rankdir = LR`，含空格的标签按原规则加引号；这不是完整 DOT 转义，外部文本仍需验证。
属性使用受检 Map 和标量边界，保留原 nil 属性行为，不声称所有开放类型已闭合。
原 Map `.empty?` 运行时分派提示保留，不将静态零动态调用报告等同于没有运行时分派。

Demo 使用显式三叶分组数据，生成 0 到 9 个叶子的十帧，不把 FingerVec 调试文本当作内部树结构。
原 key 0 重置与 fullscreen 事件保持；Vite 打包 SVG 并生成资源 URL，避免原 /output 路径遗漏 CDN base。

## 开发与验收

使用 Node.js 24、Yarn 4.18.0、Graphviz 和配对 Calcit 0.32.1。

```sh
caps --strict --ci
yarn install --immutable
caps verify --toolchain
calcit --check-only --all-defs
calcit fix --workflow strict --verify
calcit --entry run-tests --check-only
calcit test --require-match
calcit --entry run-tests
calcit --entry run-tests js
node --input-type=module -e 'import { run_tests } from "./js-out/triadica.test.mjs"; run_tests();'
```

JS 测试使用原 run-tests 入口，生成后通过上述 Node 命令实际执行。默认 native Demo 先运行 `mkdir -p output`，再用 `calcit calcit.cirru` 生成原十帧；`yarn render` 保留原 dot 命令及其目录创建行为。
本地通过发布依赖严格安装、工具链配对、immutable、28 个全定义、完整 strict、22 个公开定义、原三项测试、双入口动态方法零发现与零弃用调用。
原 native/JS 回归、真实图属性 SVG 渲染、十帧生成、CDN 构建及开发文档检查通过；本轮未重复浏览器动画、重置或 fullscreen 交互验收。

## 前端发布

同仓库 PR 沿用独立 number/run/attempt 的 COS 预览前缀，fork PR 不上传。
上传只包含 dist，校验使用 COS Action v1.2.0 自身能力，不额外复制验证脚本。
生产仍只在 main 当前提交更新原前缀，过期任务跳过；当前提交预检不是原子锁。
本工作流无 rsync，不新增服务器路径；Actions 使用精确正式 tag，接受 tag 可移动的维护取舍。
`js-out`、`output`、`dist` 为忽略的生成目录，不进入版本库。

## License

MIT
