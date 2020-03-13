let () =
  match Sys.argv with
  | [| _; json |] ->
      Jsonfmt.Util.json_of_string json
      |> Jsonfmt.Formatter.format |> print_endline
  | _ -> failwith "expected 1 argument"
