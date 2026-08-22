
import * as $clt from "./calcit.core.mjs";
import { nanoid_$x_ } from "./calcit.std.rand.mjs";
import { rand } from "./calcit.std.rand.mjs";
import { rand_between } from "./calcit.std.rand.mjs";
import { rand_hex_color_$x_ } from "./calcit.std.rand.mjs";
import { rand_int } from "./calcit.std.rand.mjs";
import { rand_nth } from "./calcit.std.rand.mjs";
import { rand_shift } from "./calcit.std.rand.mjs";
const _t_ = $clt.init_tags([]);

export function main_$x_() {
  if (arguments.length !== 0) throw $clt._args_throw('main!', 0, arguments.length);
  {
    console.log($clt.printable("%%%%%% test random"));
  }
  {
    let v__1 = $clt.option_$o_some_$q_(rand_nth($clt.range(10)));

    if ($clt.identity(v__1)) { null } else { {
    console.error($clt.printable());
    }
    {
    console.error($clt.printable($clt.format_to_lisp(new $clt.CalcitSliceList([new $clt.CalcitSymbol("option:some?"), new $clt.CalcitSliceList([new $clt.CalcitSymbol("rand-nth"), new $clt.CalcitSliceList([new $clt.CalcitSymbol("range"), 10])])])), "does not satisfy:", $clt.format_to_lisp(new $clt.CalcitSymbol("identity")), " <--------"));
    }
    {
    console.error($clt.printable("  value is:", v__1));
    }
    let err_AUTO_1 = new Error("Not satisfied in assertion!");
    err_AUTO_1.data = null;
    throw err_AUTO_1;
     };
  }
  {
    let va__2 = $clt._PCT_none;
    let vb__3 = rand_nth($clt._$L_());

    if ($clt.not_$e_(va__2, vb__3)) { {
    console.error($clt.printable());
    }
    {
    console.error($clt.printable("Left: ", va__2));
    }
    {
    console.error($clt.printable("      ", $clt.format_to_lisp(new $clt.CalcitSymbol("%none"))));
    }
    {
    console.error($clt.printable("Right:", vb__3));
    }
    {
    console.error($clt.printable("      ", $clt.format_to_lisp(new $clt.CalcitSliceList([new $clt.CalcitSymbol("rand-nth"), new $clt.CalcitSliceList([new $clt.CalcitSymbol("[]")])]))));
    }
    let err_AUTO_2 = new Error("not equal in assertion!");
    err_AUTO_2.data = null;
    throw err_AUTO_2;
     } else {  null; }
  ;
  }
  {
    let va__4 = null;
    let vb__5 = null;

    if ($clt.not_$e_(va__4, vb__5)) { {
    console.error($clt.printable());
    }
    {
    console.error($clt.printable("Left: ", va__4));
    }
    {
    console.error($clt.printable("      ", $clt.format_to_lisp(null)));
    }
    {
    console.error($clt.printable("Right:", vb__5));
    }
    {
    console.error($clt.printable("      ", $clt.format_to_lisp(new $clt.CalcitSliceList([new $clt.CalcitSymbol(";nil"), new $clt.CalcitSymbol("anything")]))));
    }
    let err_AUTO_3 = new Error("not equal in assertion!");
    err_AUTO_3.data = null;
    throw err_AUTO_3;
     } else {  null; }
  ;
  }
  {
    let v__6 = $clt._LT__$e_(0, rand(), 100);

    if ($clt.identity(v__6)) { null } else { {
    console.error($clt.printable());
    }
    {
    console.error($clt.printable($clt.format_to_lisp(new $clt.CalcitSliceList([new $clt.CalcitSymbol("<="), 0, new $clt.CalcitSliceList([new $clt.CalcitSymbol("rand")]), 100])), "does not satisfy:", $clt.format_to_lisp(new $clt.CalcitSymbol("identity")), " <--------"));
    }
    {
    console.error($clt.printable("  value is:", v__6));
    }
    let err_AUTO_4 = new Error("Not satisfied in assertion!");
    err_AUTO_4.data = null;
    throw err_AUTO_4;
     };
  }
  {
    let v__7 = $clt._LT__$e_(0, rand(10), 10);

    if ($clt.identity(v__7)) { null } else { {
    console.error($clt.printable());
    }
    {
    console.error($clt.printable($clt.format_to_lisp(new $clt.CalcitSliceList([new $clt.CalcitSymbol("<="), 0, new $clt.CalcitSliceList([new $clt.CalcitSymbol("rand"), 10]), 10])), "does not satisfy:", $clt.format_to_lisp(new $clt.CalcitSymbol("identity")), " <--------"));
    }
    {
    console.error($clt.printable("  value is:", v__7));
    }
    let err_AUTO_5 = new Error("Not satisfied in assertion!");
    err_AUTO_5.data = null;
    throw err_AUTO_5;
     };
  }
  {
    let v__8 = $clt._LT__$e_(20, rand(20, 30), 30);

    if ($clt.identity(v__8)) { null } else { {
    console.error($clt.printable());
    }
    {
    console.error($clt.printable($clt.format_to_lisp(new $clt.CalcitSliceList([new $clt.CalcitSymbol("<="), 20, new $clt.CalcitSliceList([new $clt.CalcitSymbol("rand"), 20, 30]), 30])), "does not satisfy:", $clt.format_to_lisp(new $clt.CalcitSymbol("identity")), " <--------"));
    }
    {
    console.error($clt.printable("  value is:", v__8));
    }
    let err_AUTO_6 = new Error("Not satisfied in assertion!");
    err_AUTO_6.data = null;
    throw err_AUTO_6;
     };
  }
  {
    {

    if ($clt.not(true)) { let err_AUTO_7 = new Error($clt.str_spaced("expects 1st argument to be string, got:", "try .rand-shift"));
    err_AUTO_7.data = null;
    throw err_AUTO_7; } else {  null; };
    }

    if ((function _fn_(){
      let x = rand_shift(10, 5);

      if ($clt._GT__$e_(x, 5)) { let v1__9 = $clt._LT__$e_(x, 15);

      if (v1__9) { return v1__9 } else { return false }
       } else { return false }
    })()) { null } else { {
    console.error($clt.printable("Failed assertion:", $clt.format_to_lisp(new $clt.CalcitSliceList([new $clt.CalcitSymbol("&let"), new $clt.CalcitSliceList([new $clt.CalcitSymbol("x"), new $clt.CalcitSliceList([new $clt.CalcitSymbol("rand-shift"), 10, 5])]), new $clt.CalcitSliceList([new $clt.CalcitSymbol("and"), new $clt.CalcitSliceList([new $clt.CalcitSymbol(">="), new $clt.CalcitSymbol("x"), 5]), new $clt.CalcitSliceList([new $clt.CalcitSymbol("<="), new $clt.CalcitSymbol("x"), 15])])]))));
    }
    let err_AUTO_8 = new Error("try .rand-shift (&let (x (rand-shift 10 5)) (and (>= x 5) (<= x 15)))");
    err_AUTO_8.data = null;
    throw err_AUTO_8;
     };
  }
  {
    {

    if ($clt.not(true)) { let err_AUTO_9 = new Error($clt.str_spaced("expects 1st argument to be string, got:", "try .rand-between"));
    err_AUTO_9.data = null;
    throw err_AUTO_9; } else {  null; };
    }

    if ((function _fn_(){
      let x = rand_between(10, 5);

      if ($clt._GT__$e_(x, 5)) { let v1__10 = $clt._LT__$e_(x, 10);

      if (v1__10) { return v1__10 } else { return false }
       } else { return false }
    })()) { null } else { {
    console.error($clt.printable("Failed assertion:", $clt.format_to_lisp(new $clt.CalcitSliceList([new $clt.CalcitSymbol("&let"), new $clt.CalcitSliceList([new $clt.CalcitSymbol("x"), new $clt.CalcitSliceList([new $clt.CalcitSymbol("rand-between"), 10, 5])]), new $clt.CalcitSliceList([new $clt.CalcitSymbol("and"), new $clt.CalcitSliceList([new $clt.CalcitSymbol(">="), new $clt.CalcitSymbol("x"), 5]), new $clt.CalcitSliceList([new $clt.CalcitSymbol("<="), new $clt.CalcitSymbol("x"), 10])])]))));
    }
    let err_AUTO_10 = new Error("try .rand-between (&let (x (rand-between 10 5)) (and (>= x 5) (<= x 10)))");
    err_AUTO_10.data = null;
    throw err_AUTO_10;
     };
  }
  {
    let v__11 = $clt._LT__$e_(0, rand_int(), 100);

    if ($clt.identity(v__11)) { null } else { {
    console.error($clt.printable());
    }
    {
    console.error($clt.printable($clt.format_to_lisp(new $clt.CalcitSliceList([new $clt.CalcitSymbol("<="), 0, new $clt.CalcitSliceList([new $clt.CalcitSymbol("rand-int")]), 100])), "does not satisfy:", $clt.format_to_lisp(new $clt.CalcitSymbol("identity")), " <--------"));
    }
    {
    console.error($clt.printable("  value is:", v__11));
    }
    let err_AUTO_11 = new Error("Not satisfied in assertion!");
    err_AUTO_11.data = null;
    throw err_AUTO_11;
     };
  }
  {
    let v__12 = $clt._LT__$e_(0, rand_int(10), 10);

    if ($clt.identity(v__12)) { null } else { {
    console.error($clt.printable());
    }
    {
    console.error($clt.printable($clt.format_to_lisp(new $clt.CalcitSliceList([new $clt.CalcitSymbol("<="), 0, new $clt.CalcitSliceList([new $clt.CalcitSymbol("rand-int"), 10]), 10])), "does not satisfy:", $clt.format_to_lisp(new $clt.CalcitSymbol("identity")), " <--------"));
    }
    {
    console.error($clt.printable("  value is:", v__12));
    }
    let err_AUTO_12 = new Error("Not satisfied in assertion!");
    err_AUTO_12.data = null;
    throw err_AUTO_12;
     };
  }
  {
    let v__13 = $clt._LT__$e_(20, rand_int(20, 30), 30);

    if ($clt.identity(v__13)) { null } else { {
    console.error($clt.printable());
    }
    {
    console.error($clt.printable($clt.format_to_lisp(new $clt.CalcitSliceList([new $clt.CalcitSymbol("<="), 20, new $clt.CalcitSliceList([new $clt.CalcitSymbol("rand-int"), 20, 30]), 30])), "does not satisfy:", $clt.format_to_lisp(new $clt.CalcitSymbol("identity")), " <--------"));
    }
    {
    console.error($clt.printable("  value is:", v__13));
    }
    let err_AUTO_13 = new Error("Not satisfied in assertion!");
    err_AUTO_13.data = null;
    throw err_AUTO_13;
     };
  }
  {
    console.log($clt.printable("%%%% test id"));
  }
  {
    let va__14 = 9;
    let vb__15 = $clt.count(nanoid_$x_(9));

    if ($clt.not_$e_(va__14, vb__15)) { {
    console.error($clt.printable());
    }
    {
    console.error($clt.printable("Left: ", va__14));
    }
    {
    console.error($clt.printable("      ", $clt.format_to_lisp(9)));
    }
    {
    console.error($clt.printable("Right:", vb__15));
    }
    {
    console.error($clt.printable("      ", $clt.format_to_lisp(new $clt.CalcitSliceList([new $clt.CalcitSymbol("count"), new $clt.CalcitSliceList([new $clt.CalcitSymbol("nanoid!"), 9])]))));
    }
    let err_AUTO_14 = new Error("not equal in assertion!");
    err_AUTO_14.data = null;
    throw err_AUTO_14;
     } else {  null; }
  ;
  }
  {
    let va__16 = "aaaaa";
    let vb__17 = nanoid_$x_(5, "a");

    if ($clt.not_$e_(va__16, vb__17)) { {
    console.error($clt.printable());
    }
    {
    console.error($clt.printable("Left: ", va__16));
    }
    {
    console.error($clt.printable("      ", $clt.format_to_lisp("aaaaa")));
    }
    {
    console.error($clt.printable("Right:", vb__17));
    }
    {
    console.error($clt.printable("      ", $clt.format_to_lisp(new $clt.CalcitSliceList([new $clt.CalcitSymbol("nanoid!"), 5, "a"]))));
    }
    let err_AUTO_15 = new Error("not equal in assertion!");
    err_AUTO_15.data = null;
    throw err_AUTO_15;
     } else {  null; }
  ;
  }
  console.log($clt.printable(rand_hex_color_$x_()))
}



