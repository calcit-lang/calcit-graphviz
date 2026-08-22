
import * as $clt from "./calcit.core.mjs";
import { parse_json } from "./calcit.std.json.mjs";
import { stringify_json } from "./calcit.std.json.mjs";
const _t_ = $clt.init_tags(["a","b","c","k",]);

export function main_$x_() {
  if (arguments.length !== 0) throw $clt._args_throw('main!', 0, arguments.length);
  {
  console.log($clt.printable("%%%% test for json"));
  }
  {
  console.log($clt.printable(stringify_json($clt._$L_(1, 2, 3, _t_.a))));
  }
  {
  let va__1 = parse_json("{\"a\": [1, 2], \":b\": 3}");
  let vb__2 = $clt._$n__$M_("a", $clt._$L_(1, 2), _t_.b, 3);

  if ($clt.not_$e_(va__1, vb__2)) { {
  console.error($clt.printable());
  }
  {
  console.error($clt.printable("Left: ", va__1));
  }
  {
  console.error($clt.printable("      ", $clt.format_to_lisp(new $clt.CalcitSliceList([new $clt.CalcitSymbol("parse-json"), "{\"a\": [1, 2], \":b\": 3}"]))));
  }
  {
  console.error($clt.printable("Right:", vb__2));
  }
  {
  console.error($clt.printable("      ", $clt.format_to_lisp(new $clt.CalcitSliceList([new $clt.CalcitSymbol("{}"), new $clt.CalcitSliceList(["a", new $clt.CalcitSliceList([new $clt.CalcitSymbol("[]"), 1, 2])]), new $clt.CalcitSliceList([_t_.b, 3])]))));
  }
  let err_AUTO_1 = new Error("not equal in assertion!");
  err_AUTO_1.data = null;
  throw err_AUTO_1;
   } else {  null; }

  ;
  }
  {
  let data = $clt._$n__$M_("a", 1, _t_.b, 2, _t_.c, _t_.k);
  let va__3 = data;
  let vb__4 = (function _fn_(){
    let tmp_AUTO_2 = (function _fn_(){
      let _log_tmp = stringify_json(data, true);
      console.log($clt.printable($clt.format_to_lisp(new $clt.CalcitSliceList([new $clt.CalcitSymbol("stringify-json"), new $clt.CalcitSymbol("data"), true])), "=>", _log_tmp));
      return _log_tmp
    })();
    return parse_json(tmp_AUTO_2);
  })();

  if ($clt.not_$e_(va__3, vb__4)) { {
  console.error($clt.printable());
  }
  {
  console.error($clt.printable("Left: ", va__3));
  }
  {
  console.error($clt.printable("      ", $clt.format_to_lisp(new $clt.CalcitSymbol("data"))));
  }
  {
  console.error($clt.printable("Right:", vb__4));
  }
  {
  console.error($clt.printable("      ", $clt.format_to_lisp(new $clt.CalcitSliceList([new $clt.CalcitSymbol("parse-json"), new $clt.CalcitSliceList([new $clt.CalcitSymbol("w-log"), new $clt.CalcitSliceList([new $clt.CalcitSymbol("stringify-json"), new $clt.CalcitSymbol("data"), true])])]))));
  }
  let err_AUTO_3 = new Error("not equal in assertion!");
  err_AUTO_3.data = null;
  throw err_AUTO_3;
   } else {  null; }


  ;
  }
  {
  let data = $clt._$n__$M_("a", 1, _t_.b, 2, _t_.c, _t_.k);
  let va__5 = parse_json(stringify_json(data));
  let vb__6 = $clt._$n__$M_("a", 1, "b", 2, "c", "k");

  if ($clt.not_$e_(va__5, vb__6)) { {
  console.error($clt.printable());
  }
  {
  console.error($clt.printable("Left: ", va__5));
  }
  {
  console.error($clt.printable("      ", $clt.format_to_lisp(new $clt.CalcitSliceList([new $clt.CalcitSymbol("parse-json"), new $clt.CalcitSliceList([new $clt.CalcitSymbol("stringify-json"), new $clt.CalcitSymbol("data")])]))));
  }
  {
  console.error($clt.printable("Right:", vb__6));
  }
  {
  console.error($clt.printable("      ", $clt.format_to_lisp(new $clt.CalcitSliceList([new $clt.CalcitSymbol("{}"), new $clt.CalcitSliceList(["a", 1]), new $clt.CalcitSliceList(["b", 2]), new $clt.CalcitSliceList(["c", "k"])]))));
  }
  let err_AUTO_4 = new Error("not equal in assertion!");
  err_AUTO_4.data = null;
  throw err_AUTO_4;
   } else {  null; }


  ;
  }
  return null

}



