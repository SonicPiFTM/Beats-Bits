use_bpm 120


live_loop :bateria do
  sample :bd_haus
  sleep 1
  sample :bd_haus
  sample :sn_dub, amp: 0.7, rate: 1.3
  sleep 1
end

live_loop :bass do
  use_synth :fm
  play :a2, release: 1
  sleep 1
  play :a2, release: 0.5
  sleep 0.5
  play :a2, release: 0.25
  sleep 0.25
  play :a2, release: 0.25
  sleep 0.25
  
end
