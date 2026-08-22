
import * as $clt from "./calcit.core.mjs";
import { get_dylib_path } from "./calcit.std.util.mjs";
const _t_ = $clt.init_tags([]);

export function nanoid_$x_(size, chars) {
  if (arguments.length < 0) throw $clt._args_between_throw('nanoid!', 0, 2, arguments.length);
  if (arguments.length > 2) throw $clt._args_between_throw('nanoid!', 0, 2, arguments.length);
  let tmp_AUTO_1 = get_dylib_path("/dylibs/libcalcit_std");
  return $clt._$n_call_dylib_edn(tmp_AUTO_1, "call_nanoid", size, chars)
}

export function rand(from, to) {
  if (arguments.length < 0) throw $clt._args_between_throw('rand', 0, 2, arguments.length);
  if (arguments.length > 2) throw $clt._args_between_throw('rand', 0, 2, arguments.length);
  let tmp_AUTO_2 = get_dylib_path("/dylibs/libcalcit_std");
  return $clt._$n_call_dylib_edn(tmp_AUTO_2, "rand", from, to)
}

export function rand_between(x, y) {
  if (arguments.length !== 2) throw $clt._args_throw('rand-between', 2, arguments.length);
  let tmp_AUTO_3 = rand($clt._$n__(y, x));
  return $clt._$n__ADD_(x, tmp_AUTO_3)
}

export function rand_hex_color_$x_() {
  if (arguments.length !== 0) throw $clt._args_throw('rand-hex-color!', 0, arguments.length);
  let tmp_AUTO_4 = get_dylib_path("/dylibs/libcalcit_std");
  return $clt._$n_call_dylib_edn(tmp_AUTO_4, "rand_hex_color")
}

export function rand_int(from, to) {
  if (arguments.length < 0) throw $clt._args_between_throw('rand-int', 0, 2, arguments.length);
  if (arguments.length > 2) throw $clt._args_between_throw('rand-int', 0, 2, arguments.length);
  let tmp_AUTO_5 = get_dylib_path("/dylibs/libcalcit_std");
  return $clt._$n_call_dylib_edn(tmp_AUTO_5, "rand_int", from, to)
}

export function rand_nth(xs) {
  if (arguments.length !== 1) throw $clt._args_throw('rand-nth', 1, arguments.length);

  if ($clt._$n_list_$o_empty_$q_(xs)) { return $clt._PCT_none } else { let tmp_AUTO_6 = rand_int($clt._$n_list_$o_count(xs));
  return $clt.get(xs, tmp_AUTO_6) }
}

export function rand_shift(x, y) {
  if (arguments.length !== 2) throw $clt._args_throw('rand-shift', 2, arguments.length);
  let tmp_AUTO_7 = $clt._$n__(x, y);
  let tmp_AUTO_8 = rand($clt._$n__$s_(2, y));
  return $clt._$n__ADD_(tmp_AUTO_7, tmp_AUTO_8)
}



