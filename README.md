## Triadica

> render DOT file that can be handled by Graphviz

Triadica is now a pure Calcit DOT source generator. The former native
`render-dot-file` bridge was an unimplemented `"TODO"` stub and was retired;
use `triadica.core/digraph`, `graph`, `node`, `arrow`, and `connect` directly.

### Usages

Install with `caps add calcit-lang/calcit-graphviz@<tag>` and run `caps`.

See [Generate DOT source](docs/generate-dot-source.md) for the `digraph`,
`graph`, `node`, `arrow`, and `connect` composition model. The page is indexed
by `calcit docs read/search`.

### 正式 Calcit 0.30 与前端迁移

使用者影响：在模块 `0.0.12` 基础上将 Calcit CLI/procs 同步到正式 `0.30.0`，
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

### License

MIT
