open Ctypes

type t
val t_typ : t typ

val add_asset :
  t ptr -> Asset.t ptr -> Track_element.t ptr option
(*Not implemented ges_clip_find_track_element type gType not implemented*)
(*Not implemented ges_clip_find_track_elements type gType not implemented*)
(* val get_layer :
 *   t -> Layer.t ptr option *)
(* val get_supported_formats :
 *   t -> Track_type.t_list *)
(* val get_top_effect_index :
 *   t -> Base_effect.t ptr -> int32
 * val get_top_effect_position :
 *   t -> Base_effect.t ptr -> int32 *)
(* val get_top_effects :
 *   t -> List.t structure (\* Not implemented : interface *\) ptr *)
(* val move_to_layer :
 *   t -> Layer.t ptr -> bool *)
(* val set_supported_formats :
 *   t -> Track_type.t_list -> unit *)
(* val set_top_effect_index :
 *   t -> Base_effect.t ptr -> Unsigned.uint32 -> bool
 * val set_top_effect_priority :
 *   t -> Base_effect.t ptr -> Unsigned.uint32 -> bool *)
val split :
  t ptr -> Unsigned.uint64 -> t ptr option
