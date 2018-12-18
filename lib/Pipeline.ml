open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "ges_pipeline_new" (void @-> returning (ptr t_typ))
(* let get_mode =
 *   foreign "ges_pipeline_get_mode" (t_typ @-> returning (Pipeline_flags.t_list_view)) *)
(* let get_thumbnail =
 *   foreign "ges_pipeline_get_thumbnail" (t_typ @-> ptr Caps.t_typ @-> returning (ptr_opt Sample.t_typ)) *)
(* let get_thumbnail_rgb24 =
 *   foreign "ges_pipeline_get_thumbnail_rgb24" (t_typ @-> int32_t @-> int32_t @-> returning (ptr_opt Sample.t_typ)) *)
(* let preview_get_audio_sink =
 *   foreign "ges_pipeline_preview_get_audio_sink" (t_typ @-> returning (ptr Element.t_typ))
 * let preview_get_video_sink =
 *   foreign "ges_pipeline_preview_get_video_sink" (t_typ @-> returning (ptr Element.t_typ))
 * let preview_set_audio_sink =
 *   foreign "ges_pipeline_preview_set_audio_sink" (t_typ @-> ptr Element.t_typ @-> returning (void))
 * let preview_set_video_sink =
 *   foreign "ges_pipeline_preview_set_video_sink" (t_typ @-> ptr Element.t_typ @-> returning (void))
 * let save_thumbnail self width height format location =
 *   let save_thumbnail_raw =
 *     foreign "ges_pipeline_save_thumbnail" (t_typ @-> int32_t @-> int32_t @-> string @-> string @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
 *   in
 *   let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
 *   let ret = save_thumbnail_raw self width height format location err_ptr_ptr in
 *   match (!@ err_ptr_ptr) with
 *   | None -> Ok ret
 *   | Some _ -> let err_ptr = !@ err_ptr_ptr in
 *     let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
 *     Error (err_ptr)
 * let set_render_settings =
 *   foreign "ges_pipeline_set_render_settings" (t_typ @-> string @-> ptr Encoding_profile.t_typ @-> returning (bool)) *)

let set_mode =
  foreign "ges_pipeline_set_mode" (ptr t_typ @-> Pipeline_flags.t_list_view @-> returning (bool))
  
let set_timeline =
  foreign "ges_pipeline_set_timeline" (ptr t_typ @-> ptr Timeline.t_typ @-> returning (bool))
