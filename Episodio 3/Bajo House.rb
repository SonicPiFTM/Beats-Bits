#House
use_bpm 130

#Fijense como puedo tener dos variables con el mismo nombre y distinto contenido si están en distintos loops. Cada loop tiene su mundo de variables.

live_loop :bajo do
  on = (ring 1, 0, 1, 1, 0, 0, 1) # Se recomienda cambiar estos valores en vivo
  notas=(ring :A2,:C3, :D3, :E3, :G3, :A3)
  use_synth :fm
  play notas.tick, amp: on.look
  sleep 0.75
end

# No llega a ser una melodia, es como una capa más de bajo
# a la que todavía se le puede agregar algo más
live_loop :bajoMelodico do
  on = (ring 0, 1, 1, 0, 0, 1) # Se recomienda cambiar estos valores en vivo
  notas=(ring :A2,:C3, :E3, :G3, :B3)
  use_synth :chipbass #El sonido es parecido a :fm pero lo suficientemente diferente para aportar otra capa
  #Usamos notas del acorde de La menor con novena, tiene algo jazzero!
  play notas.tick, amp: on.look
  #Se puede eventualmente cambiar el acorde por :d3 y volver para introducir un cambio
  sleep 0.25
end


live_loop :bd do
  sample :bd_haus
  sleep 1
end

live_loop :sd do
  sleep 1
  sample :sn_dub
  sleep 1
end

live_loop :hats do
  sleep 0.5
  sample :drum_cymbal_closed
  sleep 0.5
end

live_loop :perc do
  sleep 0.75
  sample :perc_snap2, rate: 0.6
  sleep 0.25
  sleep 3
  sleep 2.5
  sample :ambi_choir, rate: 1.2,release: 1, amp: 0.4
  sleep 1
  sample :ambi_piano, rate: 1.6, release: 1
  sleep 0.5
end
