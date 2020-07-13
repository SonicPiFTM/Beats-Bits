tiempos=(ring 1, 0.5,0.25, 0.25)
print(tiempos)
live_loop :muestra do
  print(tiempos.tick)
  sleep 1
end
