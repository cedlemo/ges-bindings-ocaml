open Ctypes

type t
val t_typ : t typ

val create :
  unit -> t ptr
(* val add_asset :
 *   t -> Asset.t ptr -> Unsigned.uint64 -> Unsigned.uint64 -> Unsigned.uint64 -> Track_type.t_list -> Clip.t ptr *)
val add_clip :
  t ptr -> Clip.t ptr -> bool
val get_auto_transition :
  t ptr -> bool
(* val get_clips :
 *   t ptr -> List.t structure (\* Not implemented : interface *\) ptr *)
(* val get_clips_in_interval :
 *   t ptr -> Unsigned.uint64 -> Unsigned.uint64 -> List.t structure (\* Not implemented : interface *\) ptr *)
val get_duration :
  t ptr -> Unsigned.uint64
val get_priority :
  t ptr -> Unsigned.uint32
(* val get_timeline :
 *   t -> Timeline.t ptr option *)
val is_empty :
  t ptr -> bool
val remove_clip :
  t ptr -> Clip.t ptr -> bool
val set_auto_transition :
  t ptr -> bool -> unit
val set_priority :
  t ptr -> Unsigned.uint32 -> unit
(* val set_timeline :
 *   t -> Timeline.t ptr -> unit *)
