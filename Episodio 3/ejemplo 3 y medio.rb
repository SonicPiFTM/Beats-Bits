tiempos=(ring 1, 0.5,0.25, 0.125)
notas=(ring :c3, :d3, :e3, :f3)

live_loop :muestra do
  print(tiempos.tick)
  print(notas.tick)
  sleep 5
end