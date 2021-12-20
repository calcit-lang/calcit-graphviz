use cirru_edn::Edn;

#[no_mangle]
pub fn abi_version() -> String {
  String::from("0.0.6")
}

#[no_mangle]
pub fn render_dot_file(args: Vec<Edn>) -> Result<Edn, String> {
  if args.len() == 1 {
    if let Edn::Map(_data) = &args[0] {
      Ok(Edn::Str("TODO".into()))
    } else {
      Err(format!("render-dot-file! expected 1 piece of data, got {:?}", args))
    }
  } else {
    Err(format!("render-dot-file! expected 1 arg, got {:?}", args))
  }
}
