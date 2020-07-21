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

bajo = (scale :c2, :augmented)
tiempos = (ring 0.25, 0.25, 1, 1, 1.75, 0.25, 0.5, 0.5, 0.5, 0.25, 1.75 )


