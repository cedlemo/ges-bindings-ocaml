open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "ges_timeline_new" (void @-> returning (ptr t_typ))
let create_audio_video =
  foreign "ges_timeline_new_audio_video" (void @-> returning (ptr t_typ))
let create_from_uri uri =
  let create_from_uri_raw =
    foreign "ges_timeline_new_from_uri" (string @-> ptr (ptr_opt Error.t_typ) @-> returning (ptr_opt t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = create_from_uri_raw uri err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let add_layer =
  foreign "ges_timeline_add_layer" (ptr t_typ @-> ptr Layer.t_typ @-> returning (bool))
let add_track =
  foreign "ges_timeline_add_track" (ptr t_typ @-> ptr Track.t_typ @-> returning (bool))
let append_layer =
  foreign "ges_timeline_append_layer" (ptr t_typ @-> returning (ptr Layer.t_typ))
let commit =
  foreign "ges_timeline_commit" (ptr t_typ @-> returning (bool))
let commit_sync =
  foreign "ges_timeline_commit_sync" (ptr t_typ @-> returning (bool))
let get_auto_transition =
  foreign "ges_timeline_get_auto_transition" (ptr t_typ @-> returning (bool))
let get_duration =
  foreign "ges_timeline_get_duration" (ptr t_typ @-> returning (uint64_t))
let get_element =
  foreign "ges_timeline_get_element" (ptr t_typ @-> string @-> returning (ptr_opt Timeline_element.t_typ))
(* let get_groups =
 *   foreign "ges_timeline_get_groups" (ptr t_typ @-> returning (ptr List.t_typ)) *)
let get_layer =
  foreign "ges_timeline_get_layer" (ptr t_typ @-> uint32_t @-> returning (ptr_opt Layer.t_typ))
(* let get_layers =
 *   foreign "ges_timeline_get_layers" (ptr t_typ @-> returning (ptr List.t_typ)) *)
let get_pad_for_track =
  foreign "ges_timeline_get_pad_for_track" (ptr t_typ @-> ptr Track.t_typ @-> returning (ptr_opt Pad.t_typ))
let get_snapping_distance =
  foreign "ges_timeline_get_snapping_distance" (ptr t_typ @-> returning (uint64_t))
let get_track_for_pad =
  foreign "ges_timeline_get_track_for_pad" (ptr t_typ @-> ptr Pad.t_typ @-> returning (ptr_opt Track.t_typ))
(* let get_tracks =
 *   foreign "ges_timeline_get_tracks" (ptr t_typ @-> returning (ptr List.t_typ)) *)
let is_empty =
  foreign "ges_timeline_is_empty" (ptr t_typ @-> returning (bool))
let load_from_uri self uri =
  let load_from_uri_raw =
    foreign "ges_timeline_load_from_uri" (ptr t_typ @-> string @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = load_from_uri_raw self uri err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let paste_element =
  foreign "ges_timeline_paste_element" (ptr t_typ @-> ptr Timeline_element.t_typ @-> uint64_t @-> int32_t @-> returning (ptr Timeline_element.t_typ))
let remove_layer =
  foreign "ges_timeline_remove_layer" (ptr t_typ @-> ptr Layer.t_typ @-> returning (bool))
let remove_track =
  foreign "ges_timeline_remove_track" (ptr t_typ @-> ptr Track.t_typ @-> returning (bool))
let save_to_uri self uri formatter_asset overwrite =
  let save_to_uri_raw =
    foreign "ges_timeline_save_to_uri" (ptr t_typ @-> string @-> ptr_opt Asset.t_typ @-> bool @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = save_to_uri_raw self uri formatter_asset overwrite err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let set_auto_transition =
  foreign "ges_timeline_set_auto_transition" (ptr t_typ @-> bool @-> returning (void))
let set_snapping_distance =
  foreign "ges_timeline_set_snapping_distance" (ptr t_typ @-> uint64_t @-> returning (void))
