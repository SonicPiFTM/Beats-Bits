use_bpm 120
ejecuta=(ring 0,1,1,1,0,1)
live_loop :bateria do
  if ejecuta.tick == 1 then
    sample :drum_bass_hard, beat_stretch: 0.5, amp: 1
    sample :drum_cymbal_hard, beat_stretch: 0.5, amp: 1
  else
    sample :drum_snare_hard, beat_stretch: 0.5, amp: 1
  end
  sleep 0.5
end