open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "ges_title_clip_new" (void @-> returning (ptr_opt t_typ))

(* Deprecated *)
(* let get_background_color =
 *   foreign "ges_title_clip_get_background_color" (ptr t_typ @-> returning (uint32_t))
 * let get_font_desc =
 *   foreign "ges_title_clip_get_font_desc" (ptr t_typ @-> returning (string_opt))
 * let get_halignment =
 *   foreign "ges_title_clip_get_halignment" (ptr t_typ @-> returning (Text_halign.t_view))
 * let get_text =
 *   foreign "ges_title_clip_get_text" (ptr t_typ @-> returning (string_opt))
 * let get_text_color =
 *   foreign "ges_title_clip_get_text_color" (ptr t_typ @-> returning (uint32_t))
 * let get_valignment =
 *   foreign "ges_title_clip_get_valignment" (ptr t_typ @-> returning (Text_valign.t_view))
 * let get_xpos =
 *   foreign "ges_title_clip_get_xpos" (ptr t_typ @-> returning (double))
 * let get_ypos =
 *   foreign "ges_title_clip_get_ypos" (ptr t_typ @-> returning (double))
 * let set_background =
 *   foreign "ges_title_clip_set_background" (ptr t_typ @-> uint32_t @-> returning (void))
 * let set_color =
 *   foreign "ges_title_clip_set_color" (ptr t_typ @-> uint32_t @-> returning (void))
 * let set_font_desc =
 *   foreign "ges_title_clip_set_font_desc" (ptr t_typ @-> string @-> returning (void))
 * let set_halignment =
 *   foreign "ges_title_clip_set_halignment" (ptr t_typ @-> Text_halign.t_view @-> returning (void))
 * let set_text =
 *   foreign "ges_title_clip_set_text" (ptr t_typ @-> string @-> returning (void))
 * let set_valignment =
 *   foreign "ges_title_clip_set_valignment" (ptr t_typ @-> Text_valign.t_view @-> returning (void))
 * let set_xpos =
 *   foreign "ges_title_clip_set_xpos" (ptr t_typ @-> double @-> returning (void))
 * let set_ypos =
 *   foreign "ges_title_clip_set_ypos" (ptr t_typ @-> double @-> returning (void)) *)
