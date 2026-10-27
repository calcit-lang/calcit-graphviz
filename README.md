## Triadica

> render DOT file that can be handled by Graphviz

### 正式 0.31.0 配对：使用者影响

候选模块 **0.0.13** 配对正式 **Calcit / @calcit/procs 0.31.0** 和已发布 **std 0.2.45**。
下游需同步精确工具链和依赖图并保留 Caps strict；0.0.13 尚未发布，不移动历史 tag。
本体是纯 DOT 生成器，不提供独立原生渲染库；native Demo 调用系统 `dot`，
JS 验收使用已有 run-tests 入口；调用系统 dot 的完整 Demo 仍为 native。

本次更新工具链/标准库/runtime、lockfile，并迁移 Demo 的旧树格式解析。
十帧改为显式三叶分组数据（0 到 9 个叶子）；布局会改变，不再把 FingerVec 调试文本
误当作旧三叉树结构，也不模拟 Calcit List 的内部布局。DOT 公共 API 不变。
生成器类型为 List<Number> → List<List<String>>，原累加器回归检查空树、单叶、跨组与九叶数据。
迁移依据为 calcit-lang/calcit#2193，没有新增编译器兼容层。
相对已发布 **0.0.12**，候选还包含此前已合并的图级 Tag 属性修复
（`rankdir :LR` → 合法 `rankdir = LR`）、空格标签引用、Demo 的 first Option 读取及回归。
nil 属性、开放标量边界和十帧 Demo 保留；引用规则不是完整 DOT 转义，外部文本仍须验证。

原工作流同仓库 PR 自动上传隔离前端 COS 预览，使用 action 自身校验；合并 main
会更新原 Demo 生产前缀，没有服务器 rsync。本轮不合并或部署生产、不发布模块。
本地正式 0.31.0 已通过全定义、完整 strict、原三项附带测试、native/JS suite、文档示例、
Graphviz 实际渲染、十帧生成及 CDN 构建；独立 CI 与 COS 校验以本 PR 精确提交结果为准。
Map `.empty?` 的既有运行时动态分派提示仍存在，不声称开放边界已清零。

Triadica is now a pure Calcit DOT source generator. The former native
`render-dot-file` bridge was an unimplemented `"TODO"` stub and was retired;
use `triadica.core/digraph`, `graph`, `node`, `arrow`, and `connect` directly.

### Usages

Install with `caps add calcit-lang/calcit-graphviz@<tag>` and run `caps`.

See [Generate DOT source](docs/generate-dot-source.md) for the `digraph`,
`graph`, `node`, `arrow`, and `connect` composition model. The page is indexed
by `calcit docs read/search`.

### 0.30 历史迁移记录（非当前安装要求）

历史记录：当时在模块 `0.0.12` 基础上将 Calcit CLI/procs 同步到正式 `0.30.0`，
标准库同步正式 `0.2.42`，保留 Caps `0.1.1` 和 Node24/Yarn4.18。
DOT 公共 API、属性格式、十帧 demo 与 COS 前缀不变；demo 的副作用入口明确返回 Unit，
此前已移除没有调用的内部 `concat-them` helper。本轮保留模块版本和公共 API；
demo 与原附带测试改用 `first` 的公开 Option 合同，以无副作用的 nil fallback 保留旧取值行为。
升级仍需通过原有 native/JS、文档、Graphviz 渲染与 COS 门禁后审阅，不代表已发布新模块。
Snapshot 只由官方事务/raw revision守卫修改。
native/default 与 run-tests target明确，前端沿用原JS编译和Graphviz渲染流程。

属性改用受检 `Map<Tag,Dynamic>` 与 `map-entries`，保留Tag key证据；标量转换
按 String/Tag/Number/Bool/Symbol/Nil 实际收窄后调用 to-string。其他属性值必须
预先显式转换，不能用声明/强转骗过边界。wrap现在有String→String合同；原空格
加引号格式保持，但这不是完整DOT转义，不承诺不可信文本安全。开放输入尚未清零。

CI使用四namespace的 `--check-only --ns`，覆盖21个全公开定义及两项附带测试；
保留严格入口/run-tests、当前 weak-types 动态分派零门禁并检查弃用调用为零。
删除退役的 quality ratchet/baseline，不再在 CI 运行硬编码迁移 preset。
AI按诊断审阅项目源码，类型合同和实际后端行为直接作为门禁。

DOT graph/node/edge组合明确返回 String，节点标识和字符串 children 使用具体
String 合同。图属性使用 runtime decode 后的 MapEntry，不再通过断言与异构
二元 List 读取。demo使用具名 loop，迭代参数由初值推断，不用 apply-args 的
断言证明；counter使用defref，旧wo-log改为do。完整类型检查与两个附带测试通过。
无属性的 nil 输入先显式处理，避免对 nil 调用 empty?；JS公共API smoke覆盖此
实际兼容问题。属性仍允许开放标量，树输入保留递归异构数据；Map empty? 会走运行时分派。
不把分析计数当作完整类型证明，也不声称全部类型债务清零。

COS使用正式v1.2.0，上传验证仅由public-base-url和内置verify提供；生产前缀
保持，PR改为number/run/attempt隔离。队列串行、不取消上传，上传前检查main HEAD，
过期任务跳过；预检不是原子锁。无原服务器部署步骤，不新增或猜测server路径。
Actions采用核对过的正式tags，tags可移动，readonly/no credentials不代表不可变。

原前端定时器的 `/output/demoN.svg` 不会进入Vite产物，也不匹配CDN前缀；现在
通过Vite glob打包原十帧并使用生成URL，key 0重置和既有fullscreen事件保持。
native demo只写被忽略的output生成目录；CI运行它生成十帧，不运行用户服务。
没有新增concurrently、checker、测试脚本，js-out/output/dist不入库。

### 0.30.1 alpha.5 历史迁移记录

历史记录：当时保留 DOT 公共 API、模块版本 `0.0.12`、旧 nil 属性行为与生产 COS 前缀。
修复图级属性把 Tag 冒号写入 DOT 的问题：例如 `rankdir :LR` 现在生成合法 `rankdir = LR`，
含空格的标签复用节点属性已有的引用规则。这不是对任意外部文本的完整 DOT 转义。
CLI 与 `@calcit/procs` 配对使用已发布的 `0.30.1-alpha.5`，标准库使用正式 `0.2.43`；
这是正式 CLI/npm 发布前的历史验证；当前正式安装要求与验证范围见文首。

默认 demo 保留 native 入口。新的 JS 生成器会拒绝它使用的 native-only 树格式化原语，
因此 JS 验收改为编译已有 `run-tests` 入口并执行 smoke check，另行执行公共 API 断言与 Graphviz 渲染校验；
没有添加新 helper、改写规则、验证脚本或放宽门禁。源码只修复实际 Graphviz 复现的问题，
不为版本号强行重写；原两项附带测试保留，增加一项图级属性回归，关联 issue #37。

本地已验证三项附带测试、完整定义检查、两个原入口、文档示例、JS suite、图级属性真实 Graphviz 渲染、
新建 output 目录中的十帧 Graphviz SVG、原渲染命令和 CDN 构建。原生 Map 动态分派提示保留，
不声称全部开放边界已清零。独立 CI 与 COS action 自身校验仍需以 PR 精确提交结果为准；
本轮不合并、不发布模块或部署生产。

### License

MIT
