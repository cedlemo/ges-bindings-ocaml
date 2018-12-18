open Ctypes

type t
val t_typ : t typ

(* val create :
 *   Track_type.t_list -> Caps.t structure ptr -> t ptr *)
val add_element :
  t ptr -> Track_element.t ptr -> bool
val commit :
(* val get_caps :
 *   t -> Caps.t structure ptr *)
  t ptr -> bool
(* val get_elements :
 *   t ptr -> List.t structure (\* Not implemented : interface *\) ptr *)
val get_mixing :
(* val get_timeline :
 *   t -> Timeline.t ptr option *)
  t ptr -> bool
val remove_element :
  t ptr -> Track_element.t ptr -> bool
val set_mixing :
(* val set_restriction_caps :
 *   t -> Caps.t structure ptr -> unit *)
(* val set_timeline :
 *   t -> Timeline.t ptr -> unit *)
(* val update_restriction_caps :
 *   t -> Caps.t structure ptr -> unit *)
  t ptr -> bool -> unit
