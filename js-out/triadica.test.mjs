
import * as $clt from "./calcit.core.mjs";
import { calcit_dirname } from "./triadica.$meta.mjs";
import { calcit_filename } from "./triadica.$meta.mjs";
import { render_dot_file } from "./triadica.core.mjs";
const _t_ = $clt.init_tags(["graph","type",]);

export function run_tests() {
  if (arguments.length !== 0) throw $clt._args_throw('run-tests', 0, arguments.length);
  {
    console.log($clt.printable("%%%% test for lib"));
  }
  {
    console.log($clt.printable(calcit_filename, calcit_dirname));
  }
  console.log($clt.printable(render_dot_file($clt._$n__$M_(_t_.type, _t_.graph))))
}



