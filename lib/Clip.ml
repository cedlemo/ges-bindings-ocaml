open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let add_asset =
  foreign "ges_clip_add_asset" (ptr t_typ @-> ptr Asset.t_typ @-> returning (ptr_opt Track_element.t_typ))
(*Not implemented ges_clip_find_track_element type gType not implemented*)
(*Not implemented ges_clip_find_track_elements type gType not implemented*)
(* let get_layer =
 *   foreign "ges_clip_get_layer" (t_typ @-> returning (ptr_opt Layer.t_typ)) *)
(* let get_supported_formats =
 *   foreign "ges_clip_get_supported_formats" (t_typ @-> returning (Track_type.t_list_view)) *)
(* let get_top_effect_index =
 *   foreign "ges_clip_get_top_effect_index" (t_typ @-> ptr Base_effect.t_typ @-> returning (int32_t))
 * let get_top_effect_position =
 *   foreign "ges_clip_get_top_effect_position" (t_typ @-> ptr Base_effect.t_typ @-> returning (int32_t)) *)
(* let get_top_effects =
 *   foreign "ges_clip_get_top_effects" (t_typ @-> returning (ptr List.t_typ)) *)
(* let move_to_layer =
 *   foreign "ges_clip_move_to_layer" (t_typ @-> ptr Layer.t_typ @-> returning (bool)) *)
(* let set_supported_formats =
 *   foreign "ges_clip_set_supported_formats" (t_typ @-> Track_type.t_list_view @-> returning (void)) *)
(* let set_top_effect_index =
 *   foreign "ges_clip_set_top_effect_index" (t_typ @-> ptr Base_effect.t_typ @-> uint32_t @-> returning (bool))
 * let set_top_effect_priority =
 *   foreign "ges_clip_set_top_effect_priority" (t_typ @-> ptr Base_effect.t_typ @-> uint32_t @-> returning (bool)) *)
let split =
  foreign "ges_clip_split" (ptr t_typ @-> uint64_t @-> returning (ptr_opt t_typ))
