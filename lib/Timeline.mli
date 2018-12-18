open Ctypes

type t
val t_typ : t typ

val create :
  unit -> t ptr
val create_audio_video :
  unit -> t ptr
val create_from_uri :
  string -> (t ptr option, Error.t structure ptr option) result
val add_layer :
  t ptr -> Layer.t ptr -> bool
val add_track :
  t ptr -> Track.t ptr -> bool
val append_layer :
  t ptr -> Layer.t ptr
val commit :
  t ptr -> bool
val commit_sync :
  t ptr -> bool
val get_auto_transition :
  t ptr -> bool
val get_duration :
  t ptr -> Unsigned.uint64
val get_element :
  t ptr -> string -> Timeline_element.t ptr option
(* val get_groups :
 *   t ptr -> List.t structure (\* Not implemented : interface *\) ptr *)
val get_layer :
  t ptr -> Unsigned.uint32 -> Layer.t ptr option
(* val get_layers :
 *   t ptr -> List.t structure (\* Not implemented : interface *\) ptr *)
val get_pad_for_track :
  t ptr -> Track.t ptr -> Pad.t ptr option
val get_snapping_distance :
  t ptr -> Unsigned.uint64
val get_track_for_pad :
  t ptr -> Pad.t ptr -> Track.t ptr option
(* val get_tracks :
 *   t ptr -> List.t structure (\* Not implemented : interface *\) ptr *)
val is_empty :
  t ptr -> bool
val load_from_uri :
  t ptr -> string -> (bool, Error.t structure ptr option) result
val paste_element :
  t ptr -> Timeline_element.t ptr -> Unsigned.uint64 -> int32 -> Timeline_element.t ptr
val remove_layer :
  t ptr -> Layer.t ptr -> bool
val remove_track :
  t ptr -> Track.t ptr -> bool
val save_to_uri :
  t ptr -> string -> Asset.t ptr option -> bool -> (bool, Error.t structure ptr option) result
val set_auto_transition :
  t ptr -> bool -> unit
val set_snapping_distance :
  t ptr -> Unsigned.uint64 -> unit
