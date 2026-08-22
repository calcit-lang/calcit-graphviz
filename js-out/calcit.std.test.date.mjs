
import * as $clt from "./calcit.core.mjs";
import { extract_time } from "./calcit.std.date.mjs";
import { format_time } from "./calcit.std.date.mjs";
import { from_ymd } from "./calcit.std.date.mjs";
import { from_ywd } from "./calcit.std.date.mjs";
import { get_time_$x_ } from "./calcit.std.date.mjs";
import { get_timestamp } from "./calcit.std.date.mjs";
import { parse_time } from "./calcit.std.date.mjs";
const _t_ = $clt.init_tags(["hours","minutes",]);

export function main_$x_() {
  if (arguments.length !== 0) throw $clt._args_throw('main!', 0, arguments.length);
  {
    console.log($clt.printable("\n", "%%%% test date"));
  }
  {
    console.log($clt.printable("GET TIME", get_time_$x_()));
  }
  {
    console.log($clt.printable("time:", format_time(get_time_$x_(), "%Y-%m-%d %H:%M:%S %z")));
  }
  {
    let va__1 = 1417176009000;
    let vb__2 = get_timestamp(parse_time("2014-11-28 21:00:09 +09:00", "%Y-%m-%d %H:%M:%S %z"));

    if ($clt.not_$e_(va__1, vb__2)) { {
    console.error($clt.printable());
    }
    {
    console.error($clt.printable("Left: ", va__1));
    }
    {
    console.error($clt.printable("      ", $clt.format_to_lisp(1417176009000)));
    }
    {
    console.error($clt.printable("Right:", vb__2));
    }
    {
    console.error($clt.printable("      ", $clt.format_to_lisp(new $clt.CalcitSliceList([new $clt.CalcitSymbol("get-timestamp"), new $clt.CalcitSliceList([new $clt.CalcitSymbol("parse-time"), "2014-11-28 21:00:09 +09:00", "%Y-%m-%d %H:%M:%S %z"])]))));
    }
    let err_AUTO_1 = new Error("not equal in assertion!");
    err_AUTO_1.data = null;
    throw err_AUTO_1;
     } else {  null; }
  ;
  }
  {
    let _log_tmp = extract_time(get_time_$x_());
    console.log($clt.printable($clt.format_to_lisp(new $clt.CalcitSliceList([new $clt.CalcitSymbol("extract-time"), new $clt.CalcitSliceList([new $clt.CalcitSymbol("get-time!")])])), "=>", _log_tmp));
    _log_tmp;
  }
  {
    let _log_tmp = from_ymd(2021, 11, 11);
    console.log($clt.printable($clt.format_to_lisp(new $clt.CalcitSliceList([new $clt.CalcitSymbol("from-ymd"), 2021, 11, 11])), "=>", _log_tmp));
    _log_tmp;
  }
  {
    let _log_tmp = from_ywd(2021, 45, 6);
    console.log($clt.printable($clt.format_to_lisp(new $clt.CalcitSliceList([new $clt.CalcitSymbol("from-ywd"), 2021, 45, 6])), "=>", _log_tmp));
    _log_tmp;
  }
  {
    let _log_tmp = $clt.invoke_method("format",from_ywd(2022, 1, 2),"%Y-%m-%d %H-%M");
    console.log($clt.printable($clt.format_to_lisp(new $clt.CalcitSliceList([new $clt.CalcitSymbol(".format"), new $clt.CalcitSliceList([new $clt.CalcitSymbol("from-ywd"), 2022, 1, 2]), "%Y-%m-%d %H-%M"])), "=>", _log_tmp));
    _log_tmp;
  }
  {
    let d = from_ymd(2021, 11, 11);
    console.log($clt.printable("single...."))
  ;
  }
  console.log($clt.printable($clt.invoke_method("format",$clt.invoke_method("add",$clt.invoke_method("add",get_time_$x_(),1, _t_.hours),2, _t_.minutes),"%Y-%m-%d %H-%M")))
}

export function reload_$x_() {
  if (arguments.length !== 0) throw $clt._args_throw('reload!', 0, arguments.length);
  return main_$x_()
}



