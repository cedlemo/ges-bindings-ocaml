open Ctypes

type t
val t_typ : t typ

val create :
  unit -> t ptr option

(* Deprecated *)
(* val get_background_color :
 *   t ptr -> Unsigned.uint32
 * val get_font_desc :
 *   t ptr -> string option
 * val get_halignment :
 *   t ptr -> Text_halign.t
 * val get_text :
 *   t ptr -> string option
 * val get_text_color :
 *   t ptr -> Unsigned.uint32
 * val get_valignment :
 *   t ptr -> Text_valign.t
 * val get_xpos :
 *   t ptr -> float
 * val get_ypos :
 *   t ptr -> float
 * val set_background :
 *   t ptr -> Unsigned.uint32 -> unit
 * val set_color :
 *   t ptr -> Unsigned.uint32 -> unit
 * val set_font_desc :
 *   t ptr -> string -> unit
 * val set_halignment :
 *   t ptr -> Text_halign.t -> unit
 * val set_text :
 *   t ptr -> string -> unit
 * val set_valignment :
 *   t ptr -> Text_valign.t -> unit
 * val set_xpos :
 *   t ptr -> float -> unit
 * val set_ypos :
 *   t ptr -> float -> unit *)
