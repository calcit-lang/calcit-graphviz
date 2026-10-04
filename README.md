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

### 正式 Calcit 0.28 与前端迁移

使用正式 Calcit/procs 0.28.0、Caps 0.1.1、Node24/Yarn4.18；标准库升级到正式0.2.37，
模块版本0.0.10保持，未发版。Snapshot 只由官方事务/raw revision守卫修改。
native/default 与 run-tests target明确，前端沿用原JS编译和Graphviz渲染流程。

属性改用受检 `Map<Tag,Dynamic>` 与 `map-entries`，保留Tag key证据；标量转换
按 String/Tag/Number/Bool/Symbol/Nil 实际收窄后调用 to-string。其他属性值必须
预先显式转换，不能用声明/强转骗过边界。wrap现在有String→String合同；原空格
加引号格式保持，但这不是完整DOT转义，不承诺不可信文本安全。开放输入尚未清零。

CI退役编译器迁移 `fix --workflow strict --verify` preset，改为四namespace的
22个全公开定义检查及两项附带测试；原严格入口/run-tests、动态分派零门禁与质量
ratchet保留。该preset另行复查仍requires-review：core join-str返回证明、旧
apply-args断言和concat spread，不宣称这些proof已通过，也不增加编译器特例。
AI按这些诊断审阅项目源码；类型合同和实际后端行为直接作为门禁。

质量预算不是仅改数字：实际边界源码、schema与回归同时修改。逐定义将原wrap/
render-options的开放输入债务移到标量边界，新增函数仍有一个Dynamic输入；总
schemaDynamic 39→37、unresolved 41→39，typeNotFull仍19、unsafe仍0，其余
预算未增加。完整类型检查与两个附带测试通过；不声称全部类型债务清零。

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
