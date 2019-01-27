open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(* let group =
 *   foreign "ges_container_group" (ptr_opt List.t_typ @-> returning (ptr t_typ)) *)
let add =
  foreign "ges_container_add" (ptr t_typ @-> ptr Timeline_element.t_typ @-> returning (bool))
(* let edit =
 *   foreign "ges_container_edit" (ptr t_typ @-> ptr List.t_typ @-> int32_t @-> Edit_mode.t_view @-> Edge.t_view @-> uint64_t @-> returning (bool))
 * let get_children =
 *   foreign "ges_container_get_children" (ptr t_typ @-> bool @-> returning (ptr List.t_typ)) *)
let remove =
  foreign "ges_container_remove" (ptr t_typ @-> ptr Timeline_element.t_typ @-> returning (bool))
(* let ungroup =
 *   foreign "ges_container_ungroup" (ptr t_typ @-> bool @-> returning (ptr List.t_typ)) *)
