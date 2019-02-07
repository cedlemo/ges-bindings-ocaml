open Ctypes

type t
val t_typ : t typ

(*Not implemented ges_track_element_add_children_props type C Array type for Types.Array tag not implemented*)
(* val edit :
 *   t -> List.t structure (\* Not implemented : interface *\) ptr -> Edit_mode.t -> Edge.t -> Unsigned.uint64 -> bool *)
(* val get_all_control_bindings :
 *   t -> Hash_table.t.t structure (\* string *\) ptr *)
(* val get_control_binding :
 *   t -> string -> Control_binding.t ptr option *)
val get_element :
  t -> Element.t ptr
val get_gnlobject :
  t -> Element.t ptr
val get_nleobject :
  t -> Element.t ptr
(* val get_track :
 *   t -> Track.t ptr option *)
val get_track_type :
  t -> Track_type.t_list
val is_active :
  t ptr -> bool
(*Not implemented ges_track_element_list_children_properties return type C Array type for Types.Array tag not handled*)
(* val lookup_child :
 *   t -> string -> (bool * Element.t ptr * Param_spec.t ptr) *)
(* val remove_control_binding :
 *   t -> string -> bool *)
val set_active :
  t -> bool -> bool
(* val set_control_source :
 *   t -> Control_source.t ptr -> string -> string -> bool *)
val set_track_type :
  t -> Track_type.t_list -> unit
