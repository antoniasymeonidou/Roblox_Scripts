diss = script.Parent

function onTouched(hit)
wait(0.2)
  diss.CanCollide = false
  diss.Transparency = 1
  wait(10)
  diss.CanCollide = true
  diss.Transparency = 0 
end

connection = diss.Touched:connect(onTouched)
