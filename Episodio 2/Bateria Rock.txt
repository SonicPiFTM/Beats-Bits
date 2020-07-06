use_bpm 120

live_loop :drums do
  sample :drum_bass_soft
  sleep 1
  sample :drum_snare_hard
  sleep 0.5
  sample :drum_bass_soft
  sleep 0.5
  sample :drum_bass_soft
  sleep 1
  sample :drum_snare_hard
  sleep 0.5
  sample :drum_bass_soft
  sleep 1
  sample :drum_bass_soft
  sleep 0.5
  sample :drum_snare_hard
  sleep 0.5
  sample :drum_bass_soft
  sleep 1
  sample :drum_bass_soft
  sleep 0.5
  sample :drum_snare_hard
  sleep 1
end

live_loop :hats do
  sample :drum_cymbal_closed
  sleep 0.5
end