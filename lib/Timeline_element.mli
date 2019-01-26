open Ctypes

type t
val t_typ : t typ

(* val add_child_property :
 *   t -> Param_spec.t ptr -> Object.t ptr -> bool *)
val copy :
  t -> bool -> t ptr
(* val get_child_property :
 *   t -> string -> (bool * Value.t structure) *)
(* val get_child_property_by_pspec :
 *   t -> Param_spec.t ptr -> (Value.t structure) *)
val get_duration :
  t ptr -> Unsigned.uint64
val get_inpoint :
  t ptr -> Unsigned.uint64
val get_max_duration :
  t ptr -> Unsigned.uint64
val get_name :
  t ptr -> string option
val get_parent :
  t ptr -> t ptr option
val get_priority :
  t ptr -> Unsigned.uint32
val get_start :
  t -> Unsigned.uint64
(* val get_timeline :
 *   t -> Timeline.t ptr option *)
val get_toplevel_parent :
  t -> t ptr
(* val get_track_types :
 *   t -> Track_type.t_list *)
(*Not implemented ges_timeline_element_list_children_properties return type C Array type for Types.Array tag not handled*)
(* val lookup_child :
 *   t -> string -> (bool * Object.t ptr * Param_spec.t ptr) *)
val paste :
  t -> Unsigned.uint64 -> t ptr
(* val remove_child_property :
 *   t -> Param_spec.t ptr -> bool *)
val ripple :
  t ptr -> Unsigned.uint64 -> bool
val ripple_end :
  t ptr -> Unsigned.uint64 -> bool
val roll_end :
  t ptr -> Unsigned.uint64 -> bool
val roll_start :
  t -> Unsigned.uint64 -> bool
(* val set_child_property :
 *   t -> string -> Value.t structure ptr -> bool *)
(* val set_child_property_by_pspec :
 *   t -> Param_spec.t ptr -> Value.t structure ptr -> unit *)
val set_duration :
  t ptr -> Unsigned.uint64 -> bool
val set_inpoint :
  t ptr -> Unsigned.uint64 -> bool
val set_max_duration :
  t ptr -> Unsigned.uint64 -> bool
val set_name :
  t ptr -> string option -> bool
val set_parent :
  t ptr -> t ptr -> bool
val set_priority :
  t ptr -> Unsigned.uint32 -> bool
val set_start :
  t -> Unsigned.uint64 -> unit
(* val set_timeline :
 *   t -> Timeline.t ptr -> bool *)
val trim :
  t ptr -> Unsigned.uint64 -> bool
