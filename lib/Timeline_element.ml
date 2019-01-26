open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(* let add_child_property =
 *   foreign "ges_timeline_element_add_child_property" (t_typ @-> ptr Param_spec.t_typ @-> ptr Object.t_typ @-> returning (bool)) *)
let copy =
  foreign "ges_timeline_element_copy" (t_typ @-> bool @-> returning (ptr t_typ))
(* let get_child_property self property_name =
 *   let get_child_property_raw =
 *     foreign "ges_timeline_element_get_child_property" (t_typ @-> string @-> ptr (Value.t_typ) @-> returning (bool))
 *   in
 *   let value_ptr = allocate Value.t_typ (make Value.t_typ) in
 *   let ret = get_child_property_raw self property_name value_ptr in
 *   let value = !@ value_ptr in
 *   (ret, value) *)
(* let get_child_property_by_pspec self pspec =
 *   let get_child_property_by_pspec_raw =
 *     foreign "ges_timeline_element_get_child_property_by_pspec" (t_typ @-> ptr Param_spec.t_typ @-> ptr (Value.t_typ) @-> returning (void))
 *   in
 *   let value_ptr = allocate Value.t_typ (make Value.t_typ) in
 *   let ret = get_child_property_by_pspec_raw self pspec value_ptr in
 *   let value = !@ value_ptr in
 *   (value) *)
let get_duration =
  foreign "ges_timeline_element_get_duration" (ptr t_typ @-> returning (uint64_t))
let get_inpoint =
  foreign "ges_timeline_element_get_inpoint" (ptr t_typ @-> returning (uint64_t))
let get_max_duration =
  foreign "ges_timeline_element_get_max_duration" (ptr t_typ @-> returning (uint64_t))
let get_name =
  foreign "ges_timeline_element_get_name" (ptr t_typ @-> returning (string_opt))
let get_parent =
  foreign "ges_timeline_element_get_parent" (ptr t_typ @-> returning (ptr_opt t_typ))
let get_priority =
  foreign "ges_timeline_element_get_priority" (ptr t_typ @-> returning (uint32_t))
let get_start =
  foreign "ges_timeline_element_get_start" (t_typ @-> returning (uint64_t))
(* let get_timeline =
 *   foreign "ges_timeline_element_get_timeline" (t_typ @-> returning (ptr_opt Timeline.t_typ)) *)
let get_toplevel_parent =
  foreign "ges_timeline_element_get_toplevel_parent" (t_typ @-> returning (ptr t_typ))
(* let get_track_types =
 *   foreign "ges_timeline_element_get_track_types" (t_typ @-> returning (Track_type.t_list_view)) *)
(*Not implemented ges_timeline_element_list_children_properties return type C Array type for Types.Array tag not handled*)
(* let lookup_child self prop_name =
 *   let lookup_child_raw =
 *     foreign "ges_timeline_element_lookup_child" (t_typ @-> string @-> ptr (ptr Object.t_typ) @-> ptr (ptr Param_spec.t_typ) @-> returning (bool))
 *   in
 *   let child_ptr = allocate (ptr_opt Object.t_typ) None in
 *   let pspec_ptr = allocate (ptr_opt Param_spec.t_typ) None in
 *   let ret = lookup_child_raw self prop_name child_ptr pspec_ptr in
 *   let child = !@ child_ptr in
 *   let pspec = !@ pspec_ptr in
 *   (ret, child, pspec) *)
let paste =
  foreign "ges_timeline_element_paste" (t_typ @-> uint64_t @-> returning (ptr t_typ))
(* let remove_child_property =
 *   foreign "ges_timeline_element_remove_child_property" (t_typ @-> ptr Param_spec.t_typ @-> returning (bool)) *)
let ripple =
  foreign "ges_timeline_element_ripple" (ptr t_typ @-> uint64_t @-> returning (bool))
let ripple_end =
  foreign "ges_timeline_element_ripple_end" (ptr t_typ @-> uint64_t @-> returning (bool))
let roll_end =
  foreign "ges_timeline_element_roll_end" (ptr t_typ @-> uint64_t @-> returning (bool))
let roll_start =
  foreign "ges_timeline_element_roll_start" (t_typ @-> uint64_t @-> returning (bool))
(* let set_child_property =
 *   foreign "ges_timeline_element_set_child_property" (t_typ @-> string @-> ptr Value.t_typ @-> returning (bool)) *)
(* let set_child_property_by_pspec =
 *   foreign "ges_timeline_element_set_child_property_by_pspec" (t_typ @-> ptr Param_spec.t_typ @-> ptr Value.t_typ @-> returning (void)) *)
let set_duration =
  foreign "ges_timeline_element_set_duration" (ptr t_typ @-> uint64_t @-> returning (bool))
let set_inpoint =
  foreign "ges_timeline_element_set_inpoint" (ptr t_typ @-> uint64_t @-> returning (bool))
let set_max_duration =
  foreign "ges_timeline_element_set_max_duration" (ptr t_typ @-> uint64_t @-> returning (bool))
let set_name =
  foreign "ges_timeline_element_set_name" (ptr t_typ @-> string_opt @-> returning (bool))
let set_parent =
  foreign "ges_timeline_element_set_parent" (ptr t_typ @-> ptr t_typ @-> returning (bool))
let set_priority =
  foreign "ges_timeline_element_set_priority" (ptr t_typ @-> uint32_t @-> returning (bool))
let set_start =
  foreign "ges_timeline_element_set_start" (t_typ @-> uint64_t @-> returning (void))
(* let set_timeline =
 *   foreign "ges_timeline_element_set_timeline" (t_typ @-> ptr Timeline.t_typ @-> returning (bool)) *)
let trim =
  foreign "ges_timeline_element_trim" (ptr t_typ @-> uint64_t @-> returning (bool))
