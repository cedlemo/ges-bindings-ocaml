open Ctypes

type t
val t_typ : t structure typ

val f_data: (unit ptr, t structure) field
val f_next: (t structure (* unit *) ptr, t structure) field
val f_prev: (t structure (* unit *) ptr, t structure) field

