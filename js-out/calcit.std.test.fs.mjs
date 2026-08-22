
import * as $clt from "./calcit.core.mjs";
import { calcit_dirname } from "./calcit.std.$meta.mjs";
import { calcit_filename } from "./calcit.std.$meta.mjs";
import { append_file_$x_ } from "./calcit.std.fs.mjs";
import { check_write_file_$x_ } from "./calcit.std.fs.mjs";
import { create_dir_$x_ } from "./calcit.std.fs.mjs";
import { create_dir_all_$x_ } from "./calcit.std.fs.mjs";
import { glob_$x_ } from "./calcit.std.fs.mjs";
import { path_exists_$q_ } from "./calcit.std.fs.mjs";
import { read_dir_$x_ } from "./calcit.std.fs.mjs";
import { read_file_$x_ } from "./calcit.std.fs.mjs";
import { read_file_by_line_$x_ } from "./calcit.std.fs.mjs";
import { rename_$x_ } from "./calcit.std.fs.mjs";
import { walk_dir_$x_ } from "./calcit.std.fs.mjs";
import { execute_$x_ } from "./calcit.std.process.mjs";
const _t_ = $clt.init_tags([]);

export function main_$x_() {
  if (arguments.length !== 0) throw $clt._args_throw('main!', 0, arguments.length);
  {
    console.log($clt.printable("%%%% test for fs"));
  }
  {
    console.log($clt.printable(calcit_filename, calcit_dirname));
  }
  {
    console.log($clt.printable($clt._GT_($clt.count(read_file_$x_("README.md")), 1000)));
  }
  {
    let _$s_c = $clt.atom(0);
    (function _fn_(){
      let tmp_AUTO_1 = function f_PCT_(line) {
        if (arguments.length !== 1) throw $clt._args_throw('f%', 1, arguments.length);
        let tmp_AUTO_2 = $clt.inc($clt._$n_atom_$o_deref(_$s_c));
        return $clt.reset_$x_(_$s_c, tmp_AUTO_2)
      }
      ;
      return read_file_by_line_$x_("README.md", tmp_AUTO_1);
    })();
    console.log($clt.printable("lines", $clt.deref(_$s_c)));
  }
  {
    console.log($clt.printable(path_exists_$q_("README.md"), path_exists_$q_("build.js")));
  }
  {
    console.log($clt.printable(read_dir_$x_("./")));
  }
  {
    console.log($clt.printable("dirs:", execute_$x_($clt._$L_("ls"))));
  }
  {
    console.log($clt.printable("all paths size:", $clt.count(walk_dir_$x_("target"))));
  }
  {
    console.log($clt.printable("rs files:", glob_$x_("src/*.rs")));
  }
  {
    create_dir_$x_("target/dir1");
  }
  {
    rename_$x_("target/dir1", "target/dir4");
  }
  {
    create_dir_all_$x_("target/dir2/dir3");
  }
  {
    check_write_file_$x_("target/dir8/dir9/file.text", "TODO");
  }
  let tmp_AUTO_3 = $clt.str("\n", "NEWLINE TODO");
  return append_file_$x_("target/dir8/dir9/file.text", tmp_AUTO_3)
}



