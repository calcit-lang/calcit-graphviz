use cirru_edn::Edn;

#[unsafe(no_mangle)]
pub fn abi_version() -> String {
  String::from("0.0.9")
}

#[unsafe(no_mangle)]
pub fn edn_version() -> String {
  cirru_edn::version().to_owned()
}

#[unsafe(no_mangle)]
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
