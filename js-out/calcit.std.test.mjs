
import * as $clt from "./calcit.core.mjs";
import { md5 } from "./calcit.std.hash.mjs";
import { join_path } from "./calcit.std.path.mjs";
import { path_basename } from "./calcit.std.path.mjs";
import { path_dirname } from "./calcit.std.path.mjs";
import { on_ctrl_c } from "./calcit.std.process.mjs";
import * as $calcit_DOT_std_DOT_test_DOT_date from "./calcit.std.test.date.mjs";
import * as $calcit_DOT_std_DOT_test_DOT_fs from "./calcit.std.test.fs.mjs";
import * as $calcit_DOT_std_DOT_test_DOT_json from "./calcit.std.test.json.mjs";
import * as $calcit_DOT_std_DOT_test_DOT_rand from "./calcit.std.test.rand.mjs";
import { set_interval } from "./calcit.std.time.mjs";
import { set_timeout } from "./calcit.std.time.mjs";
const _t_ = $clt.init_tags([]);

export function test_path() {
  if (arguments.length !== 0) throw $clt._args_throw('test-path', 0, arguments.length);
  {
  let va__1 = "a/b";
  let vb__2 = join_path("a", "b");

  if ($clt.not_$e_(va__1, vb__2)) { {
  console.error($clt.printable());
  }
  {
  console.error($clt.printable("Left: ", va__1));
  }
  {
  console.error($clt.printable("      ", $clt.format_to_lisp("a/b")));
  }
  {
  console.error($clt.printable("Right:", vb__2));
  }
  {
  console.error($clt.printable("      ", $clt.format_to_lisp(new $clt.CalcitSliceList([new $clt.CalcitSymbol("join-path"), "a", "b"]))));
  }
  let err_AUTO_1 = new Error("not equal in assertion!");
  err_AUTO_1.data = null;
  throw err_AUTO_1;
   } else {  null; }

  ;
  }
  {
  let va__3 = "a";
  let vb__4 = join_path("a");

  if ($clt.not_$e_(va__3, vb__4)) { {
  console.error($clt.printable());
  }
  {
  console.error($clt.printable("Left: ", va__3));
  }
  {
  console.error($clt.printable("      ", $clt.format_to_lisp("a")));
  }
  {
  console.error($clt.printable("Right:", vb__4));
  }
  {
  console.error($clt.printable("      ", $clt.format_to_lisp(new $clt.CalcitSliceList([new $clt.CalcitSymbol("join-path"), "a"]))));
  }
  let err_AUTO_2 = new Error("not equal in assertion!");
  err_AUTO_2.data = null;
  throw err_AUTO_2;
   } else {  null; }

  ;
  }
  {
  let va__5 = "a/b/c";
  let vb__6 = join_path("a", "b", "c");

  if ($clt.not_$e_(va__5, vb__6)) { {
  console.error($clt.printable());
  }
  {
  console.error($clt.printable("Left: ", va__5));
  }
  {
  console.error($clt.printable("      ", $clt.format_to_lisp("a/b/c")));
  }
  {
  console.error($clt.printable("Right:", vb__6));
  }
  {
  console.error($clt.printable("      ", $clt.format_to_lisp(new $clt.CalcitSliceList([new $clt.CalcitSymbol("join-path"), "a", "b", "c"]))));
  }
  let err_AUTO_3 = new Error("not equal in assertion!");
  err_AUTO_3.data = null;
  throw err_AUTO_3;
   } else {  null; }

  ;
  }
  {
  let va__7 = "a/b";
  let vb__8 = path_dirname("a/b/c");

  if ($clt.not_$e_(va__7, vb__8)) { {
  console.error($clt.printable());
  }
  {
  console.error($clt.printable("Left: ", va__7));
  }
  {
  console.error($clt.printable("      ", $clt.format_to_lisp("a/b")));
  }
  {
  console.error($clt.printable("Right:", vb__8));
  }
  {
  console.error($clt.printable("      ", $clt.format_to_lisp(new $clt.CalcitSliceList([new $clt.CalcitSymbol("path-dirname"), "a/b/c"]))));
  }
  let err_AUTO_4 = new Error("not equal in assertion!");
  err_AUTO_4.data = null;
  throw err_AUTO_4;
   } else {  null; }

  ;
  }
  {
  let va__9 = "c";
  let vb__10 = path_basename("a/b/c");

  if ($clt.not_$e_(va__9, vb__10)) { {
  console.error($clt.printable());
  }
  {
  console.error($clt.printable("Left: ", va__9));
  }
  {
  console.error($clt.printable("      ", $clt.format_to_lisp("c")));
  }
  {
  console.error($clt.printable("Right:", vb__10));
  }
  {
  console.error($clt.printable("      ", $clt.format_to_lisp(new $clt.CalcitSliceList([new $clt.CalcitSymbol("path-basename"), "a/b/c"]))));
  }
  let err_AUTO_5 = new Error("not equal in assertion!");
  err_AUTO_5.data = null;
  throw err_AUTO_5;
   } else {  null; }

  ;
  }
  return null

}

export function run_tests() {
  if (arguments.length !== 0) throw $clt._args_throw('run-tests', 0, arguments.length);
  {
    $calcit_DOT_std_DOT_test_DOT_fs.main_$x_();
  }
  {
    $calcit_DOT_std_DOT_test_DOT_json.main_$x_();
  }
  {
    $calcit_DOT_std_DOT_test_DOT_date.main_$x_();
  }
  {
    $calcit_DOT_std_DOT_test_DOT_rand.main_$x_();
  }
  return test_path()
}

export function try_demos() {
  if (arguments.length !== 0) throw $clt._args_throw('try-demos', 0, arguments.length);
  {
    console.log($clt.printable(md5("")));
  }
  console.log($clt.printable(md5("5")))
}

export function main_$x_() {
  if (arguments.length !== 0) throw $clt._args_throw('main!', 0, arguments.length);
  {
    run_tests();
  }
  return try_demos()
}

export function reload_$x_() {
  if (arguments.length !== 0) throw $clt._args_throw('reload!', 0, arguments.length);
  {
    run_tests();
  }
  console.log($clt.printable("reload not handled yet"))
}

export function try_ctrlc_$x_() {
  if (arguments.length !== 0) throw $clt._args_throw('try-ctrlc!', 0, arguments.length);
  let tmp_AUTO_6 = function f_PCT_() {
    if (arguments.length !== 0) throw $clt._args_throw('f%', 0, arguments.length);
    console.log($clt.printable("TODO handler..."))
  }
  ;
  return on_ctrl_c(tmp_AUTO_6)
}

export function try_time_$x_() {
  if (arguments.length !== 0) throw $clt._args_throw('try-time!', 0, arguments.length);
  {
    let tmp_AUTO_7 = function f_PCT_() {
      if (arguments.length !== 0) throw $clt._args_throw('f%', 0, arguments.length);
      console.log($clt.printable("doing"))
    }
    ;
    set_timeout(4000, tmp_AUTO_7);
  }
  let tmp_AUTO_8 = function f_PCT_() {
    if (arguments.length !== 0) throw $clt._args_throw('f%', 0, arguments.length);
    console.log($clt.printable("DO Do Do"))
  }
  ;
  return set_interval(2000, tmp_AUTO_8)
}



