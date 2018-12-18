open Ctypes

type t
val t_typ : t typ

val create :
  unit -> t ptr
(* val get_mode :
 *   t -> Pipeline_flags.t_list *)
(* val get_thumbnail :
 *   t -> Caps.t structure ptr -> Sample.t structure ptr option *)
(* val get_thumbnail_rgb24 :
 *   t -> int32 -> int32 -> Sample.t structure ptr option
 * val preview_get_audio_sink :
 *   t -> Element.t ptr
 * val preview_get_video_sink :
 *   t -> Element.t ptr
 * val preview_set_audio_sink :
 *   t -> Element.t ptr -> unit
 * val preview_set_video_sink :
 *   t -> Element.t ptr -> unit
 * val save_thumbnail :
 *   t -> int32 -> int32 -> string -> string -> (bool, Error.t structure ptr option) result
 * val set_render_settings :
 *   t -> string -> Encoding_profile.t ptr -> bool *)
val set_mode :
  t ptr -> Pipeline_flags.t_list -> bool

val set_timeline :
  t ptr -> Timeline.t ptr -> bool
