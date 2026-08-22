
import * as $clt from "./calcit.core.mjs";
import { get_dylib_path } from "./calcit.std.util.mjs";
const _t_ = $clt.init_tags([]);

export function md5(s) {
  if (arguments.length !== 1) throw $clt._args_throw('md5', 1, arguments.length);
  let tmp_AUTO_1 = get_dylib_path("/dylibs/libcalcit_std");
  return $clt._$n_call_dylib_edn(tmp_AUTO_1, "md5", s)
}



