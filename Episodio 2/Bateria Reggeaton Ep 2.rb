use_bpm 90

live_loop :drums do
  3.times do
    sample :bd_haus, rate: 1.3
    sleep 0.75
    sample :drum_snare_hard, rate: 1.6, release: 0.25
    sleep 0.25
    sample :bd_haus, rate: 1.3
    sleep 0.5
    sample :drum_snare_hard, rate: 1.6, release: 0.25
    sleep 0.5
  end
  sample :bd_haus, rate: 1.3
  sample :drum_snare_hard, rate: 1.6, release: 0.25, amp: 0.8
  sleep 0.25
  sample :drum_snare_hard, rate: 1.6, release: 0.25, amp: 0.9
  sleep 0.5
  sample :drum_snare_hard, rate: 1.6, release: 0.25, amp: 0.7
  sleep 0.25
  sample :bd_haus, rate: 1.3
  sleep 0.5
  sample :drum_snare_hard, rate: 1.6, release: 0.25
  sleep 0.5
end

live_loop :hats do
  sample :drum_cymbal_closed, amp: 0.4
  sleep 0.5
end