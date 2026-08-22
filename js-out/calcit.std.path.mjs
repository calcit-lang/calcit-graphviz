
import * as $clt from "./calcit.core.mjs";
import { get_dylib_path } from "./calcit.std.util.mjs";
const _t_ = $clt.init_tags([]);

export function join_path(...xs) {
  xs = $clt.arrayToList(xs);
  let tmp_AUTO_1 = get_dylib_path("/dylibs/libcalcit_std");
  return $clt._$n_call_dylib_edn(tmp_AUTO_1, "join_path", ...$clt.listToArray(xs))
}

export function path_basename(x) {
  if (arguments.length !== 1) throw $clt._args_throw('path-basename', 1, arguments.length);
  let tmp_AUTO_2 = get_dylib_path("/dylibs/libcalcit_std");
  return $clt._$n_call_dylib_edn(tmp_AUTO_2, "path_basename", x)
}

export function path_dirname(x) {
  if (arguments.length !== 1) throw $clt._args_throw('path-dirname', 1, arguments.length);
  let tmp_AUTO_3 = get_dylib_path("/dylibs/libcalcit_std");
  return $clt._$n_call_dylib_edn(tmp_AUTO_3, "path_dirname", x)
}



