#Another one bites the dust
use_bpm 110

live_loop :bata do
  sleep 0.5
  sample :drum_bass_hard, rate: 1.1
  sleep 1
  sample :drum_snare_hard, rate: 1.1
  sample :perc_snap
  sleep 0.5
end

volumen = (ring 0.8, 0.4)
live_loop :hats do
  sleep 0.5
  sample :drum_cymbal_closed, amp: volumen.tick
  
end

notas = (ring :a2, :g2, :e2, :e2, :e2, :e2, :e2, :e2, :g2, :e2, :a2 )
ritmos = (ring 0.25, 0.25, 1, 1, 1.75, 0.25, 0.5, 0.5, 0.5, 0.25, 1.75 )

live_loop :bajo do
  use_synth :fm
  #COMPLETAR AQUÍ CON EL PLAY Y EL SLEEP NECESARIOS PARA QUE SUENE LA CANCION
end