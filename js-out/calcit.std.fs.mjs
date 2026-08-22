
import * as $clt from "./calcit.core.mjs";
import { get_dylib_path } from "./calcit.std.util.mjs";
const _t_ = $clt.init_tags([]);

export function append_file_$x_(name, content) {
  if (arguments.length !== 2) throw $clt._args_throw('append-file!', 2, arguments.length);
  let tmp_AUTO_1 = get_dylib_path("/dylibs/libcalcit_std");
  return $clt._$n_call_dylib_edn(tmp_AUTO_1, "append_file", name, content)
}

export function check_write_file_$x_(name, content) {
  if (arguments.length !== 2) throw $clt._args_throw('check-write-file!', 2, arguments.length);
  let tmp_AUTO_2 = get_dylib_path("/dylibs/libcalcit_std");
  return $clt._$n_call_dylib_edn(tmp_AUTO_2, "check_write_file", name, content)
}

export function create_dir_$x_(name) {
  if (arguments.length !== 1) throw $clt._args_throw('create-dir!', 1, arguments.length);
  let tmp_AUTO_3 = get_dylib_path("/dylibs/libcalcit_std");
  return $clt._$n_call_dylib_edn(tmp_AUTO_3, "create_dir", name)
}

export function create_dir_all_$x_(name) {
  if (arguments.length !== 1) throw $clt._args_throw('create-dir-all!', 1, arguments.length);
  let tmp_AUTO_4 = get_dylib_path("/dylibs/libcalcit_std");
  return $clt._$n_call_dylib_edn(tmp_AUTO_4, "create_dir_all", name)
}

export function glob_$x_(name) {
  if (arguments.length !== 1) throw $clt._args_throw('glob!', 1, arguments.length);
  let tmp_AUTO_5 = get_dylib_path("/dylibs/libcalcit_std");
  return $clt._$n_call_dylib_edn(tmp_AUTO_5, "glob_call", name)
}

export function path_exists_$q_(name) {
  if (arguments.length !== 1) throw $clt._args_throw('path-exists?', 1, arguments.length);
  let tmp_AUTO_6 = get_dylib_path("/dylibs/libcalcit_std");
  return $clt._$n_call_dylib_edn(tmp_AUTO_6, "path_exists", name)
}

export function read_dir_$x_(name) {
  if (arguments.length !== 1) throw $clt._args_throw('read-dir!', 1, arguments.length);
  let tmp_AUTO_7 = get_dylib_path("/dylibs/libcalcit_std");
  return $clt._$n_call_dylib_edn(tmp_AUTO_7, "read_dir", name)
}

export function read_file_$x_(name) {
  if (arguments.length !== 1) throw $clt._args_throw('read-file!', 1, arguments.length);
  let tmp_AUTO_8 = get_dylib_path("/dylibs/libcalcit_std");
  return $clt._$n_call_dylib_edn(tmp_AUTO_8, "read_file", name)
}

export function read_file_by_line_$x_(name, cb) {
  if (arguments.length !== 2) throw $clt._args_throw('read-file-by-line!', 2, arguments.length);
  let tmp_AUTO_9 = get_dylib_path("/dylibs/libcalcit_std");
  return $clt._$n_blocking_dylib_edn_fn(tmp_AUTO_9, "read_file_by_line", name, cb)
}

export function rename_$x_(from, to) {
  if (arguments.length !== 2) throw $clt._args_throw('rename!', 2, arguments.length);
  let tmp_AUTO_10 = get_dylib_path("/dylibs/libcalcit_std");
  return $clt._$n_call_dylib_edn(tmp_AUTO_10, "rename_path", from, to)
}

export function walk_dir_$x_(name) {
  if (arguments.length !== 1) throw $clt._args_throw('walk-dir!', 1, arguments.length);
  let tmp_AUTO_11 = get_dylib_path("/dylibs/libcalcit_std");
  return $clt._$n_call_dylib_edn(tmp_AUTO_11, "walk_dir", name)
}

export function write_file_$x_(name, content) {
  if (arguments.length !== 2) throw $clt._args_throw('write-file!', 2, arguments.length);
  let tmp_AUTO_12 = get_dylib_path("/dylibs/libcalcit_std");
  return $clt._$n_call_dylib_edn(tmp_AUTO_12, "write_file", name, content)
}



