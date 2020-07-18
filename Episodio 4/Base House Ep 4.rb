#House
use_bpm 130

live_loop :melodia do
  use_synth :supersaw
  escala = scale(:a4, :minor_pentatonic, num_octaves: 2)
  escalaReflejada = escala.reflect
  11.times do # La escala tiene 5 notas y cada vez se tocan 11, siempre empieza en lugares diferentes!
    play escalaReflejada.tick
    sleep 0.75 # Esta ritmica es muy deadmau5!
  end
  sleep 3.75
end

live_loop :bajo do
  on = (ring 1, 0, 1, 1, 0, 0, 1) # Se recomienda cambiar estos valores en vivo
  escala = scale(:a2, :minor_pentatonic)
  use_synth :fm
  play escala.tick, amp: on.look
  sleep 0.75
end

# No llega a ser una melodia, es como una capa m�s de bajo
# a la que todavia se le puede agregar algo m�s
live_loop :bajoMelodico do
  on = (ring 0, 1, 1, 0, 0, 1) # Se recomienda cambiar estos valores en vivo
  acorde = chord(:a2, :m9) #Usamos notas del acorde de La menor con novena, tiene algo jazzero!
  use_synth :chipbass #El sonido es parecido a :fm pero lo suficientemente diferente para aportar otra capa
  play acorde.tick, amp: on.look
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