$(document).on "ajax:success", "form#appearer-form", (ev, data)->
  console.log data
  $("#appearer-form")[0].reset()
  type_a = data.type_appearer
  if type_a == "VENDEDOR"
    $("#appearer-box-v").append("<td></td><td></td><td>#{data.last_name}</td><td>#{data.name}</td><td>#{data.type_appearer}</td>")
  else
    if type_a == "COMPRADOR"
      $("#appearer-box-c").append("<td></td><td></td><td>#{data.last_name}</td><td>#{data.name}</td><td>#{data.type_appearer}</td>")

  