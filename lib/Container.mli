open Ctypes

type t
val t_typ : t typ

(* val group :
 *   List.t structure (\* Not implemented : interface *\) ptr option -> t ptr *)
val add :
  t ptr -> Timeline_element.t ptr -> bool
(* val edit :
 *   t ptr -> List.t structure (\* Not implemented : interface *\) ptr -> int32 -> Edit_mode.t -> Edge.t -> Unsigned.uint64 -> bool *)
(* val get_children :
 *   t ptr -> bool -> List.t structure (\* Not implemented : interface *\) ptr *)
val remove :
  t ptr -> Timeline_element.t ptr -> bool
(* val ungroup :
 *   t ptr -> bool -> List.t structure (\* Not implemented : interface *\) ptr *)
