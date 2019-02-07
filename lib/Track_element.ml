open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented ges_track_element_add_children_props type C Array type for Types.Array tag not implemented*)
(* let edit =
 *   foreign "ges_track_element_edit" (t_typ @-> ptr List.t_typ @-> Edit_mode.t_view @-> Edge.t_view @-> uint64_t @-> returning (bool)) *)
(* let get_all_control_bindings =
 *   foreign "ges_track_element_get_all_control_bindings" (t_typ @-> returning (ptr Hash_table.t.t_typ)) *)
(* let get_control_binding =
 *   foreign "ges_track_element_get_control_binding" (t_typ @-> string @-> returning (ptr_opt Control_binding.t_typ)) *)
let get_element =
  foreign "ges_track_element_get_element" (t_typ @-> returning (ptr Element.t_typ))
let get_gnlobject =
  foreign "ges_track_element_get_gnlobject" (t_typ @-> returning (ptr Element.t_typ))
let get_nleobject =
  foreign "ges_track_element_get_nleobject" (t_typ @-> returning (ptr Element.t_typ))
(* let get_track =
 *   foreign "ges_track_element_get_track" (t_typ @-> returning (ptr_opt Track.t_typ)) *)
let get_track_type =
  foreign "ges_track_element_get_track_type" (t_typ @-> returning (Track_type.t_list_view))
let is_active =
  foreign "ges_track_element_is_active" (ptr t_typ @-> returning (bool))
(*Not implemented ges_track_element_list_children_properties return type C Array type for Types.Array tag not handled*)
(* let lookup_child self prop_name =
 *   let lookup_child_raw =
 *     foreign "ges_track_element_lookup_child" (t_typ @-> string @-> ptr (ptr Element.t_typ) @-> ptr (ptr Param_spec.t_typ) @-> returning (bool))
 *   in
 *   let element_ptr = allocate (ptr_opt Element.t_typ) None in
 *   let pspec_ptr = allocate (ptr_opt Param_spec.t_typ) None in
 *   let ret = lookup_child_raw self prop_name element_ptr pspec_ptr in
 *   let element = !@ element_ptr in
 *   let pspec = !@ pspec_ptr in
 *   (ret, element, pspec) *)
(* let remove_control_binding =
 *   foreign "ges_track_element_remove_control_binding" (t_typ @-> string @-> returning (bool)) *)
let set_active =
  foreign "ges_track_element_set_active" (t_typ @-> bool @-> returning (bool))
(* let set_control_source =
 *   foreign "ges_track_element_set_control_source" (t_typ @-> ptr Control_source.t_typ @-> string @-> string @-> returning (bool)) *)
let set_track_type =
  foreign "ges_track_element_set_track_type" (t_typ @-> Track_type.t_list_view @-> returning (void))
