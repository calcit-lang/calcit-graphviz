
import * as $clt from "./calcit.core.mjs";
import { get_dylib_path } from "./triadica.util.mjs";
const _t_ = $clt.init_tags([]);

export function wrap(x) {
  if (arguments.length !== 1) throw $clt._args_throw('wrap', 1, arguments.length);

  if ($clt.includes_$q_(x, " ")) { return $clt.str("\"", x, "\"") } else { return x }
}

export function render_options(o) {
  if (arguments.length !== 1) throw $clt._args_throw('render-options', 1, arguments.length);
  return $clt.invoke_method("join-str",(function _fn_(){
    let tmp_AUTO_1 = function f_PCT_(entry) {
      if (arguments.length !== 1) throw $clt._args_throw('f%', 1, arguments.length);
      let tmp_AUTO_2 = $clt.turn_string($clt.first(entry));
      let tmp_AUTO_3 = wrap($clt.turn_string($clt.last(entry)));
      return $clt.str(tmp_AUTO_2, "=", tmp_AUTO_3)
    }
    ;
    return $clt.map($clt.invoke_method("to-list",o,), tmp_AUTO_1);
  })()," ")
}

export function arrow(from, to, options) {
  if (arguments.length < 2) throw $clt._args_between_throw('arrow', 2, 3, arguments.length);
  if (arguments.length > 3) throw $clt._args_between_throw('arrow', 2, 3, arguments.length);

  if ($clt.empty_$q_(options)) { let tmp_AUTO_4 = $clt.str(wrap(from), " -> ", wrap(to));
  return $clt.str("  ", tmp_AUTO_4) } else { let tmp_AUTO_5 = (function _fn_(){
    let tmp_AUTO_6 = wrap(from);
    let tmp_AUTO_7 = wrap(to);
    let tmp_AUTO_8 = render_options(options);
    return $clt.str_spaced(tmp_AUTO_6, "->", tmp_AUTO_7, "[", tmp_AUTO_8, "]");
  })();
  return $clt.str("  ", tmp_AUTO_5) }
}

export function connect(from, to, options) {
  if (arguments.length !== 3) throw $clt._args_throw('connect', 3, arguments.length);

  if ($clt.empty_$q_(options)) { let tmp_AUTO_9 = $clt.str(wrap(from), " -- ", wrap(to));
  return $clt.str("  ", tmp_AUTO_9) } else { let tmp_AUTO_10 = (function _fn_(){
    let tmp_AUTO_11 = wrap(from);
    let tmp_AUTO_12 = wrap(to);
    let tmp_AUTO_13 = render_options(options);
    return $clt.str_spaced(tmp_AUTO_11, "--", tmp_AUTO_12, "[", tmp_AUTO_13, "]");
  })();
  return $clt.str("  ", tmp_AUTO_10) }
}

export function render_option_lines(options) {
  if (arguments.length !== 1) throw $clt._args_throw('render-option-lines', 1, arguments.length);

  if ($clt.empty_$q_(options)) { return "" } else { return $clt.invoke_method("join-str",(function _fn_(){
    let tmp_AUTO_14 = function f_PCT_(pair) {
      if (arguments.length !== 1) throw $clt._args_throw('f%', 1, arguments.length);
      let tmp_AUTO_15 = $clt.first(pair);
      let tmp_AUTO_16 = $clt.last(pair);
      return $clt.str(tmp_AUTO_15, " = ", tmp_AUTO_16)
    }
    ;
    return $clt.map($clt.invoke_method("to-list",options,), tmp_AUTO_14);
  })(),"\n") }
}

export function digraph(options, ...children) {
  if (arguments.length < 1) throw $clt._args_fewer_throw('digraph', 1, arguments.length);
  children = $clt.arrayToList(children);
  let tmp_AUTO_17 = render_option_lines(options);
  let tmp_AUTO_18 = $clt.join_str(children, "\n");
  return $clt.str("\n", "digraph {", tmp_AUTO_17, "\n", tmp_AUTO_18, "\n", "}", "\n")
}

export function graph(options, ...children) {
  if (arguments.length < 1) throw $clt._args_fewer_throw('graph', 1, arguments.length);
  children = $clt.arrayToList(children);
  let tmp_AUTO_19 = render_option_lines(options);
  let tmp_AUTO_20 = $clt.join_str(children, "\n");
  return $clt.str("\n", "graph {", tmp_AUTO_19, "\n", tmp_AUTO_20, "\n", "}", "\n")
}

export function node(name, options) {
  if (arguments.length < 1) throw $clt._args_between_throw('node', 1, 2, arguments.length);
  if (arguments.length > 2) throw $clt._args_between_throw('node', 1, 2, arguments.length);

  if ($clt.empty_$q_(options)) { let tmp_AUTO_21 = wrap(name);
  return $clt.str("  ", tmp_AUTO_21) } else { let tmp_AUTO_22 = wrap(name);
  let tmp_AUTO_23 = render_options(options);
  return $clt.str("  ", tmp_AUTO_22, " [ ", tmp_AUTO_23, " ]") }
}

export function render_dot() {
  if (arguments.length !== 0) throw $clt._args_throw('render-dot', 0, arguments.length);
}

export function render_dot_file(name) {
  if (arguments.length !== 1) throw $clt._args_throw('render-dot-file', 1, arguments.length);
  let tmp_AUTO_24 = get_dylib_path("/dylibs/libtriadica");
  return $clt._$n_call_dylib_edn(tmp_AUTO_24, "render_dot_file", name)
}

export function str_spaced(...children) {
  children = $clt.arrayToList(children);
  return $clt.join_str(children, " ")
}



