
import * as $clt from "./calcit.core.mjs";
import { get_dylib_path } from "./calcit.std.util.mjs";
const _t_ = $clt.init_tags([]);

export function parse_json(s) {
  if (arguments.length !== 1) throw $clt._args_throw('parse-json', 1, arguments.length);
  let tmp_AUTO_1 = get_dylib_path("/dylibs/libcalcit_std");
  return $clt._$n_call_dylib_edn(tmp_AUTO_1, "parse_json", s)
}

export function stringify_json(data, colon_$q_) {
  if (arguments.length < 1) throw $clt._args_between_throw('stringify-json', 1, 2, arguments.length);
  if (arguments.length > 2) throw $clt._args_between_throw('stringify-json', 1, 2, arguments.length);
  let tmp_AUTO_2 = get_dylib_path("/dylibs/libcalcit_std");
  return $clt._$n_call_dylib_edn(tmp_AUTO_2, "stringify_json", data, colon_$q_)
}



