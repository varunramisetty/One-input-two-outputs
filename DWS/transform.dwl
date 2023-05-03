//one input two outputs
%dw 2.0
output application/json
---
//for this particular dataweave function im using map function to map the alarams and reduce function to remove an array
payload map ((item, index) -> item.alarms map (
item - "alarms" ++ alarms: [$]
)) reduce ($$)
map ((item, index) ->
( "output"++ index+1) : item

)