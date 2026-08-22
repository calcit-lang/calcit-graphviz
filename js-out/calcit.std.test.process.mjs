
import * as $clt from "./calcit.core.mjs";
import { stream_$x_ } from "./calcit.std.process.mjs";
const _t_ = $clt.init_tags([]);

export function main_$x_() {
  if (arguments.length !== 0) throw $clt._args_throw('main!', 0, arguments.length);
  {
    console.log($clt.printable("starting-streamed-process"));
  }
  let tmp_AUTO_1 = $clt._$L_("sh", "-c", "printf 'out-1\\n'; sleep 0.2; printf 'err-1\\n' >&2; sleep 0.2; printf 'out-2\\n'; sleep 0.2; printf 'err-2\\n' >&2");
  let tmp_AUTO_2 = function f_PCT_(event) {
    if (arguments.length !== 1) throw $clt._args_throw('f%', 1, arguments.length);
    console.log($clt.printable("received-ProcessOutput", event))
  }
  ;
  return stream_$x_(tmp_AUTO_1, tmp_AUTO_2)
}



