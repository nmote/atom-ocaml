open Js_utils

let activate () =
  Console.log "Hello world!";
  Atom.Notifications.addSuccess "Hello World!!"
;;

export_function "activate" activate
