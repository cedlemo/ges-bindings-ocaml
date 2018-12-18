module C = Configurator.V1

let () =
  C.main ~name:"gst-editing-services" (fun c ->
      let default : C.Pkg_config.package_conf =
        { libs   = ["-lgstreamer-editing-services-not-found"]
        ; cflags = []
        }
      in
      let conf =
        match C.Pkg_config.get c with
        | None -> default
        | Some pc ->
           match (C.Pkg_config.query pc ~package:"gst-editing-services-1.0") with
           | None -> default
           | Some deps -> deps
      in

      (* let () = print_endline ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>" in
       * let () = List.iter print_endline conf.cflags in
       * let () = List.iter print_endline conf.libs in
       * let () = print_endline ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>" in *)

      let os_type = C.ocaml_config_var_exn (C.create "") "system" in
      let ccopts = if Base.String.(os_type = "macosx") then [""] else ["-Wl,-no-as-needed"] in

      Configurator.V1.Flags.write_sexp "c_flags.sexp"         conf.cflags;
      Configurator.V1.Flags.write_sexp "c_library_flags.sexp" conf.libs;
      Configurator.V1.Flags.write_sexp "ccopts.sexp" ccopts);
