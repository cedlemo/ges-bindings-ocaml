open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "ges_layer_new" (void @-> returning (ptr t_typ))
(* let add_asset =
 *   foreign "ges_layer_add_asset" (t_typ @-> ptr Asset.t_typ @-> uint64_t @-> uint64_t @-> uint64_t @-> Track_type.t_list_view @-> returning (ptr Clip.t_typ)) *)
let add_clip =
  foreign "ges_layer_add_clip" (ptr t_typ @-> ptr Clip.t_typ @-> returning (bool))
let get_auto_transition =
  foreign "ges_layer_get_auto_transition" (ptr t_typ @-> returning (bool))
(* let get_clips =
 *   foreign "ges_layer_get_clips" (ptr t_typ @-> returning (ptr List.t_typ)) *)
(* let get_clips_in_interval =
 *   foreign "ges_layer_get_clips_in_interval" (ptr t_typ @-> uint64_t @-> uint64_t @-> returning (ptr List.t_typ)) *)
let get_duration =
  foreign "ges_layer_get_duration" (ptr t_typ @-> returning (uint64_t))
let get_priority =
  foreign "ges_layer_get_priority" (ptr t_typ @-> returning (uint32_t))
(* let get_timeline =
 *   foreign "ges_layer_get_timeline" (t_typ @-> returning (ptr_opt Timeline.t_typ)) *)
let is_empty =
  foreign "ges_layer_is_empty" (ptr t_typ @-> returning (bool))
let remove_clip =
  foreign "ges_layer_remove_clip" (ptr t_typ @-> ptr Clip.t_typ @-> returning (bool))
let set_auto_transition =
  foreign "ges_layer_set_auto_transition" (ptr t_typ @-> bool @-> returning (void))
let set_priority =
  foreign "ges_layer_set_priority" (ptr t_typ @-> uint32_t @-> returning (void))
(* let set_timeline =
 *   foreign "ges_layer_set_timeline" (t_typ @-> ptr Timeline.t_typ @-> returning (void)) *)
