
import * as $clt from "./calcit.core.mjs";
import { get_dylib_path } from "./calcit.std.util.mjs";
const _t_ = $clt.init_tags(["ProcessOutput","stderr","stdout",]);

export function execute_$x_(command, dir) {
  if (arguments.length < 1) throw $clt._args_between_throw('execute!', 1, 2, arguments.length);
  if (arguments.length > 2) throw $clt._args_between_throw('execute!', 1, 2, arguments.length);
  {
    {

    if ($clt.not(true)) { let err_AUTO_1 = new Error($clt.str_spaced("expects 1st argument to be string, got:", "command in list"));
    err_AUTO_1.data = null;
    throw err_AUTO_1; } else {  null; };
    }

    if (($clt.list_$q_(command) ? (function _fn_(){
      let v1__1 = $clt.every_$q_(command, $clt.string_$q_);

      if (v1__1) { return v1__1 } else { return false }
    })() : false)) { null } else { {
    console.error($clt.printable("Failed assertion:", $clt.format_to_lisp(new $clt.CalcitSliceList([new $clt.CalcitSymbol("and"), new $clt.CalcitSliceList([new $clt.CalcitSymbol("list?"), new $clt.CalcitSymbol("command")]), new $clt.CalcitSliceList([new $clt.CalcitSymbol("every?"), new $clt.CalcitSymbol("command"), new $clt.CalcitSymbol("string?")])]))));
    }
    let err_AUTO_2 = new Error("command in list (and (list? command) (every? command string?))");
    err_AUTO_2.data = null;
    throw err_AUTO_2;
     };
  }
  let tmp_AUTO_3 = get_dylib_path("/dylibs/libcalcit_std");
  let tmp_AUTO_4 = ($clt.nil_$q_(dir) ? "./" : dir);
  return $clt._$n_call_dylib_edn(tmp_AUTO_3, "execute_command", tmp_AUTO_4, command)
}

export function on_ctrl_c(f) {
  if (arguments.length !== 1) throw $clt._args_throw('on-ctrl-c', 1, arguments.length);
  let tmp_AUTO_5 = get_dylib_path("/dylibs/libcalcit_std");
  return $clt._$n_call_dylib_edn_fn(tmp_AUTO_5, "on_ctrl_c", f)
}

export function stream_$x_(command, f, dir) {
  if (arguments.length < 2) throw $clt._args_between_throw('stream!', 2, 3, arguments.length);
  if (arguments.length > 3) throw $clt._args_between_throw('stream!', 2, 3, arguments.length);
  {
    {

    if ($clt.not(true)) { let err_AUTO_6 = new Error($clt.str_spaced("expects 1st argument to be string, got:", "command in list"));
    err_AUTO_6.data = null;
    throw err_AUTO_6; } else {  null; };
    }

    if (($clt.list_$q_(command) ? (function _fn_(){
      let v1__1 = $clt.every_$q_(command, $clt.string_$q_);

      if (v1__1) { return v1__1 } else { return false }
    })() : false)) { null } else { {
    console.error($clt.printable("Failed assertion:", $clt.format_to_lisp(new $clt.CalcitSliceList([new $clt.CalcitSymbol("and"), new $clt.CalcitSliceList([new $clt.CalcitSymbol("list?"), new $clt.CalcitSymbol("command")]), new $clt.CalcitSliceList([new $clt.CalcitSymbol("every?"), new $clt.CalcitSymbol("command"), new $clt.CalcitSymbol("string?")])]))));
    }
    let err_AUTO_7 = new Error("command in list (and (list? command) (every? command string?))");
    err_AUTO_7.data = null;
    throw err_AUTO_7;
     };
  }
  let tmp_AUTO_8 = get_dylib_path("/dylibs/libcalcit_std");
  let tmp_AUTO_9 = ($clt.nil_$q_(dir) ? "./" : dir);
  return $clt._$n_call_dylib_edn_fn(tmp_AUTO_8, "stream_command", tmp_AUTO_9, command, f)
}



export var ProcessOutput = $clt._$n_enum_def_$o_new(_t_.ProcessOutput, $clt._$L_(_t_.stdout, new $clt.CalcitSliceList([new $clt.CalcitSymbol('quote'), new $clt.CalcitSymbol("String")])), $clt._$L_(_t_.stderr, new $clt.CalcitSliceList([new $clt.CalcitSymbol('quote'), new $clt.CalcitSymbol("String")])));

