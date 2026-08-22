
import * as $clt from "./calcit.core.mjs";
import { get_dylib_path } from "./calcit.std.util.mjs";
const _t_ = $clt.init_tags([]);

export function set_interval(t, cb) {
  if (arguments.length !== 2) throw $clt._args_throw('set-interval', 2, arguments.length);
  let tmp_AUTO_1 = get_dylib_path("/dylibs/libcalcit_std");
  return $clt._$n_call_dylib_edn_fn(tmp_AUTO_1, "set_interval", t, cb)
}

export function set_timeout(t, cb) {
  if (arguments.length !== 2) throw $clt._args_throw('set-timeout', 2, arguments.length);
  let tmp_AUTO_2 = get_dylib_path("/dylibs/libcalcit_std");
  return $clt._$n_call_dylib_edn_fn(tmp_AUTO_2, "set_timeout", t, cb)
}



