open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(* let create =
 *   foreign "ges_track_new" (Track_type.t_list_view @-> ptr Caps.t_typ @-> returning (ptr t_typ)) *)
let add_element =
  foreign "ges_track_add_element" (ptr t_typ @-> ptr Track_element.t_typ @-> returning (bool))
let commit =
  foreign "ges_track_commit" (ptr t_typ @-> returning (bool))
(* let get_caps =
 *   foreign "ges_track_get_caps" (t_typ @-> returning (ptr Caps.t_typ)) *)
(* let get_elements =
 *   foreign "ges_track_get_elements" (ptr t_typ @-> returning (ptr List.t_typ)) *)
let get_mixing =
  foreign "ges_track_get_mixing" (ptr t_typ @-> returning (bool))
(* let get_timeline =
 *   foreign "ges_track_get_timeline" (t_typ @-> returning (ptr_opt Timeline.t_typ)) *)
let remove_element =
  foreign "ges_track_remove_element" (ptr t_typ @-> ptr Track_element.t_typ @-> returning (bool))
let set_mixing =
  foreign "ges_track_set_mixing" (ptr t_typ @-> bool @-> returning (void))
(* let set_restriction_caps =
 *   foreign "ges_track_set_restriction_caps" (t_typ @-> ptr Caps.t_typ @-> returning (void)) *)
(* let set_timeline =
 *   foreign "ges_track_set_timeline" (t_typ @-> ptr Timeline.t_typ @-> returning (void)) *)
(* let update_restriction_caps =
 *   foreign "ges_track_update_restriction_caps" (t_typ @-> ptr Caps.t_typ @-> returning (void)) *)
