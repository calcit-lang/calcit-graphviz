
import * as $clt from "./calcit.core.mjs";
import { execute_$x_ } from "./calcit.std.process.mjs";
import { arrow } from "./triadica.core.mjs";
import { digraph } from "./triadica.core.mjs";
import { node } from "./triadica.core.mjs";
const _t_ = $clt.init_tags(["cyan","darkgoldenrod1","darkturquoise","diamond","fillcolor","filled","fontcolor","line","nodesep","ranksep","shape","splines","style",]);

export function concat_them(children) {
  if (arguments.length !== 1) throw $clt._args_throw('concat-them', 1, arguments.length);
  return $clt.concat(...$clt.listToArray(children))
}

export function gen_counter_id_$x_() {
  if (arguments.length !== 0) throw $clt._args_throw('gen-counter-id!', 0, arguments.length);
  {
    let tmp_AUTO_1 = $clt.inc($clt.deref(_$s_counter));
    $clt.reset_$x_(_$s_counter, tmp_AUTO_1);
  }
  let tmp_AUTO_2 = $clt.deref(_$s_counter);
  return $clt.str("p", tmp_AUTO_2)
}

export function make_data_tree(tree, parent_id) {
  if (arguments.length !== 2) throw $clt._args_throw('make-data-tree', 2, arguments.length);

  if ($clt.list_$q_(tree)) { return $clt.invoke_method("join-str",(function _fn_(){
    let tmp_AUTO_3 = function f_PCT_(child) {
      if (arguments.length !== 1) throw $clt._args_throw('f%', 1, arguments.length);
      let child_id = ($clt.string_$q_(child) ? $clt.turn_string(child) : gen_counter_id_$x_());
      let tmp_AUTO_4 = make_data_tree(child, child_id);
      let tmp_AUTO_5 = node(parent_id, $clt._$n__$M_(_t_.shape, _t_.diamond, _t_.style, _t_.filled, _t_.fillcolor, _t_.cyan, _t_.fontcolor, _t_.darkturquoise));
      let tmp_AUTO_6 = arrow(parent_id, child_id, $clt._$n__$M_());
      return $clt.str(tmp_AUTO_4, "\n", tmp_AUTO_5, tmp_AUTO_6)

    }
    ;
    return $clt._$n_list_$o_map(tree, tmp_AUTO_3);
  })(),"\n") } else { let tmp_AUTO_7 = $clt.turn_string(tree);
  let tmp_AUTO_8 = $clt._$n__$M_(_t_.style, _t_.filled, _t_.fillcolor, _t_.darkgoldenrod1);
  return node(tmp_AUTO_7, tmp_AUTO_8) }
}

export function make_tree_demo(vec_tree) {
  if (arguments.length !== 1) throw $clt._args_throw('make-tree-demo', 1, arguments.length);
  {
    $clt.reset_$x_(_$s_counter, 0);
  }
  let tmp_AUTO_9 = $clt._$n__$M_();
  let tmp_AUTO_10 = node("graph", $clt._$n__$M_(_t_.ranksep, 0.3, _t_.nodesep, 0.25, _t_.splines, _t_.line));
  let tmp_AUTO_11 = make_data_tree(vec_tree, gen_counter_id_$x_());
  return digraph(tmp_AUTO_9, tmp_AUTO_10, tmp_AUTO_11)
}

export function render_demo_$x_() {
  if (arguments.length !== 0) throw $clt._args_throw('render-demo!', 0, arguments.length);
  let tmp_AUTO_12 = $clt._$L_();
  return function f_PCT_(acc, n) {
    if (arguments.length !== 2) throw $clt._args_throw('f%', 2, arguments.length);

    let times_AUTO_19 = 0;
    while(true) { /* Tail Recursion */
      let ret_AUTO_18 = null;
      if (((times_AUTO_19 & 1023) === 0) && times_AUTO_19 > 10000000) throw new Error('tail recursion not finished after 10M iterations');

  if ($clt._LT_(n, 10)) { {
  let tmp_AUTO_14 = make_tree_demo($clt.first($clt.parse_cirru_list($clt._$n_format_ternary_tree(acc))));
  $clt.write_file("output/demo.dot", tmp_AUTO_14);
  }
  {
  console.log($clt.printable(n, "result:", execute_$x_((function _fn_(){
    let tmp_AUTO_15 = $clt.str("output/demo", n, ".svg");
    return $clt._$L_("dot", "-T", "svg", "-K", "dot", "output/demo.dot", "-o", tmp_AUTO_15);
  })())));
  }
  let tmp_AUTO_16 = $clt.conj(acc, n);
  let tmp_AUTO_17 = $clt.inc(n);
  ret_AUTO_18 =$clt.recur(tmp_AUTO_16, tmp_AUTO_17)
   } else { ret_AUTO_18 =null }

      if (ret_AUTO_18 instanceof $clt.CalcitRecur) {
        if (ret_AUTO_18.args.length !== 2) throw $clt._args_throw('f%', 2, ret_AUTO_18.args.length);
        acc = ret_AUTO_18.args[0];
  n = ret_AUTO_18.args[1];

        times_AUTO_19 += 1;
        continue;
      } else {
        return ret_AUTO_18;
      }
    }
  }

  (tmp_AUTO_12, 0)
}

export function main_$x_() {
  if (arguments.length !== 0) throw $clt._args_throw('main!', 0, arguments.length);
  return render_demo_$x_()
}

export function reload_$x_() {
  if (arguments.length !== 0) throw $clt._args_throw('reload!', 0, arguments.length);
  return render_demo_$x_()
}



export var _$s_counter = 
($clt.peekDefatom("triadica.main/*counter") ?? $clt.defatom("triadica.main/*counter", 0))
;

export var tree_data = new $clt.CalcitSliceList([new $clt.CalcitSliceList([0, 1, 2]), new $clt.CalcitSliceList([new $clt.CalcitSliceList([new $clt.CalcitSliceList([3, 4, 5]), new $clt.CalcitSliceList([6, 7, 8]), new $clt.CalcitSliceList([9, 10, 11])]), new $clt.CalcitSliceList([new $clt.CalcitSliceList([new $clt.CalcitSliceList([new $clt.CalcitSliceList([12, 13, 14]), new $clt.CalcitSliceList([15, 16, 17]), new $clt.CalcitSliceList([18, 19, 20])]), new $clt.CalcitSliceList([new $clt.CalcitSliceList([21, 22, 23]), new $clt.CalcitSliceList([24, 25, 26]), new $clt.CalcitSliceList([27, 28, 29])]), new $clt.CalcitSliceList([new $clt.CalcitSliceList([30, 31, 32]), new $clt.CalcitSliceList([33, 34, 35]), new $clt.CalcitSliceList([36, 37, 38])])]), new $clt.CalcitSliceList([new $clt.CalcitSliceList([new $clt.CalcitSliceList([39, 40, 41]), new $clt.CalcitSliceList([42, 43, 44]), new $clt.CalcitSliceList([45, 46, 47])]), new $clt.CalcitSliceList([new $clt.CalcitSliceList([48, 49, 50]), new $clt.CalcitSliceList([51, 52, 53]), new $clt.CalcitSliceList([54, 55, 56])]), new $clt.CalcitSliceList([new $clt.CalcitSliceList([57, 58, 59]), new $clt.CalcitSliceList([60, 61, 62]), new $clt.CalcitSliceList([63, 64, 65])])]), new $clt.CalcitSliceList([new $clt.CalcitSliceList([66, 67, 68]), new $clt.CalcitSliceList([69, 70, 71]), new $clt.CalcitSliceList([72, 73, 74])])]), new $clt.CalcitSliceList([75, 76, 77])]), new $clt.CalcitSliceList([78, 79])]);

