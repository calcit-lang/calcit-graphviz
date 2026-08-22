
import * as $clt from "./calcit.core.mjs";
import { get_dylib_path } from "./calcit.std.util.mjs";
const _t_ = $clt.init_tags(["Date0","DateTrait","add","ambiguous","date","extract","fn","format","none","single","timestamp",]);

export function extract_time(x) {
  if (arguments.length !== 1) throw $clt._args_throw('extract-time', 1, arguments.length);
  let tmp_AUTO_1 = get_dylib_path("/dylibs/libcalcit_std");
  let tmp_AUTO_2 = x.getRequired(_t_.date);
  return $clt._$n_call_dylib_edn(tmp_AUTO_1, "extract_time", tmp_AUTO_2)
}

export function format_time(time, format) {
  if (arguments.length < 1) throw $clt._args_between_throw('format-time', 1, 2, arguments.length);
  if (arguments.length > 2) throw $clt._args_between_throw('format-time', 1, 2, arguments.length);
  let tmp_AUTO_3 = get_dylib_path("/dylibs/libcalcit_std");
  let tmp_AUTO_4 = time.getRequired(_t_.date);
  return $clt._$n_call_dylib_edn(tmp_AUTO_3, "format_time", tmp_AUTO_4, format)
}

export function get_timestamp(date) {
  if (arguments.length !== 1) throw $clt._args_throw('get-timestamp', 1, arguments.length);
  let tmp_AUTO_5 = get_dylib_path("/dylibs/libcalcit_std");
  let tmp_AUTO_6 = date.getRequired(_t_.date);
  return $clt._$n_call_dylib_edn(tmp_AUTO_5, "get_timestamp", tmp_AUTO_6)
}

export function add_duration(date, n, k) {
  if (arguments.length !== 3) throw $clt._args_throw('add-duration', 3, arguments.length);
  let tmp_AUTO_7 = (function _fn_(){
    let tmp_AUTO_8 = get_dylib_path("/dylibs/libcalcit_std");
    let tmp_AUTO_9 = date.getRequired(_t_.date);
    return $clt._$n_call_dylib_edn(tmp_AUTO_8, "add_duration", tmp_AUTO_9, n, k);
  })();
  return $clt._$n__PCT__$M_(Date, _t_.date, tmp_AUTO_7)
}

export function from_ymd(y, m, d) {
  if (arguments.length !== 3) throw $clt._args_throw('from-ymd', 3, arguments.length);
  let v__2 = (function _fn_(){
    let tmp_AUTO_19 = get_dylib_path("/dylibs/libcalcit_std");
    return $clt._$n_call_dylib_edn(tmp_AUTO_19, "from_ymd", y, m, d);
  })();
  ($clt.not($clt.enum_$q_(v__2)) ? (function _fn_(){
    let err_AUTO_20 = new Error($clt.str("tag-match expected enum value, got", v__2));
    err_AUTO_20.data = null;
    throw err_AUTO_20;
  })() : null);
  let tag__1 = $clt._$n_enum_$o_nth(v__2, 0);
  $clt._$n_enum_$o_validate(v__2, tag__1);

  if (($clt.identical_$q_(tag__1, _t_.single) ? $clt.identical_$q_(2, $clt._$n_enum_$o_count(v__2)) : false)) { return (function __bind__(d){
    return $clt._$n__PCT__$M_(Date, _t_.date, d)
  })($clt._$n_enum_$o_nth(v__2, 1)) }
   else if (($clt.identical_$q_(tag__1, _t_.ambiguous) ? $clt.identical_$q_(3, $clt._$n_enum_$o_count(v__2)) : false)) { let a = $clt._$n_enum_$o_nth(v__2, 1);
  let b = $clt._$n_enum_$o_nth(v__2, 2);
  let err_AUTO_21 = new Error($clt.str("ambiguous: ", a, " ", b));
  err_AUTO_21.data = null;
  throw err_AUTO_21;

   }
   else if (($clt.identical_$q_(tag__1, _t_.none) ? $clt.identical_$q_(1, $clt._$n_enum_$o_count(v__2)) : false)) { let err_AUTO_22 = new Error("cannot construct");
  err_AUTO_22.data = null;
  throw err_AUTO_22;
   } else { let err_AUTO_23 = new Error("unreachable!");
  err_AUTO_23.data = null;
  throw err_AUTO_23; }


}

export function from_ywd(y, w, d) {
  if (arguments.length !== 3) throw $clt._args_throw('from-ywd', 3, arguments.length);
  let v__2 = (function _fn_(){
    let tmp_AUTO_24 = get_dylib_path("/dylibs/libcalcit_std");
    return $clt._$n_call_dylib_edn(tmp_AUTO_24, "from_ywd", y, w, d);
  })();
  ($clt.not($clt.enum_$q_(v__2)) ? (function _fn_(){
    let err_AUTO_25 = new Error($clt.str("tag-match expected enum value, got", v__2));
    err_AUTO_25.data = null;
    throw err_AUTO_25;
  })() : null);
  let tag__1 = $clt._$n_enum_$o_nth(v__2, 0);
  $clt._$n_enum_$o_validate(v__2, tag__1);

  if (($clt.identical_$q_(tag__1, _t_.single) ? $clt.identical_$q_(2, $clt._$n_enum_$o_count(v__2)) : false)) { return (function __bind__(d){
    return $clt._$n__PCT__$M_(Date, _t_.date, d)
  })($clt._$n_enum_$o_nth(v__2, 1)) }
   else if (($clt.identical_$q_(tag__1, _t_.ambiguous) ? $clt.identical_$q_(3, $clt._$n_enum_$o_count(v__2)) : false)) { let a = $clt._$n_enum_$o_nth(v__2, 1);
  let b = $clt._$n_enum_$o_nth(v__2, 2);
  let err_AUTO_26 = new Error($clt.str("ambiguous: ", a, " ", b));
  err_AUTO_26.data = null;
  throw err_AUTO_26;

   }
   else if (($clt.identical_$q_(tag__1, _t_.none) ? $clt.identical_$q_(1, $clt._$n_enum_$o_count(v__2)) : false)) { let err_AUTO_27 = new Error("cannot construct");
  err_AUTO_27.data = null;
  throw err_AUTO_27;
   } else { let err_AUTO_28 = new Error("unreachable!");
  err_AUTO_28.data = null;
  throw err_AUTO_28; }


}

export function get_time_$x_() {
  if (arguments.length !== 0) throw $clt._args_throw('get-time!', 0, arguments.length);
  let tmp_AUTO_29 = $clt._$n_call_dylib_edn(get_dylib_path("/dylibs/libcalcit_std"), "now_bang");
  return $clt._$n__PCT__$M_(Date, _t_.date, tmp_AUTO_29)
}

export function parse_time(time, format) {
  if (arguments.length !== 2) throw $clt._args_throw('parse-time', 2, arguments.length);
  let tmp_AUTO_30 = $clt._$n_call_dylib_edn(get_dylib_path("/dylibs/libcalcit_std"), "parse_time", time, format);
  return $clt._$n__PCT__$M_(Date, _t_.date, tmp_AUTO_30)
}



export var Date0 = $clt._$n_struct_def_$o_new(_t_.Date0, $clt._$L_(_t_.date, new $clt.CalcitSymbol("Dynamic")));

export var DateTrait = $clt._$n_trait_$o__$o_new(_t_.DateTrait, $clt._$L_($clt._$L_(_t_.format, _t_.fn), $clt._$L_(_t_.add, _t_.fn), $clt._$L_(_t_.timestamp, _t_.fn), $clt._$L_(_t_.extract, _t_.fn)));

export var DateImpl = (function _fn_(){
  let tmp_AUTO_10 = (function _fn_(){
    let tmp_AUTO_11 = function f_PCT_(self, ...args) {
      if (arguments.length < 1) throw $clt._args_fewer_throw('f%', 1, arguments.length);
      args = $clt.arrayToList(args);
      let tmp_AUTO_12 = $clt.option_$o_unwrap_or($clt.first(args), null);
      return format_time(self, tmp_AUTO_12)
    }
    ;
    return $clt._$L_(_t_.format, tmp_AUTO_11);
  })();
  let tmp_AUTO_13 = (function _fn_(){
    let tmp_AUTO_14 = function f_PCT_(self, n, k) {
      if (arguments.length !== 3) throw $clt._args_throw('f%', 3, arguments.length);
      return add_duration(self, n, k)
    }
    ;
    return $clt._$L_(_t_.add, tmp_AUTO_14);
  })();
  let tmp_AUTO_15 = (function _fn_(){
    let tmp_AUTO_16 = function f_PCT_(self) {
      if (arguments.length !== 1) throw $clt._args_throw('f%', 1, arguments.length);
      return get_timestamp(self)
    }
    ;
    return $clt._$L_(_t_.timestamp, tmp_AUTO_16);
  })();
  let tmp_AUTO_17 = (function _fn_(){
    let tmp_AUTO_18 = function f_PCT_(self) {
      if (arguments.length !== 1) throw $clt._args_throw('f%', 1, arguments.length);
      return extract_time(self)
    }
    ;
    return $clt._$L_(_t_.extract, tmp_AUTO_18);
  })();
  return $clt._$n_impl_$o__$o_new(DateTrait, tmp_AUTO_10, tmp_AUTO_13, tmp_AUTO_15, tmp_AUTO_17);
})();

export var Date = $clt.impl_traits(Date0, DateImpl);

