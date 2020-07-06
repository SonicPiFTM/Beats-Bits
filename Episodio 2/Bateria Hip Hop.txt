use_bpm 90

live_loop :drums do
  sample :drum_splash_hard
  2.times do
    sample :bd_tek
    sleep 1
    sample :drum_snare_hard
    sleep 0.25
    sample :drum_snare_soft, amp: 0.9
    sleep 0.25
    sample :drum_snare_soft, amp: 0.7
    sleep 0.25
    sample :drum_snare_soft, amp: 0.4
    sleep 0.75
    sample :drum_snare_soft
    sleep 0.5
    sample :drum_snare_hard
    sleep 0.75
    sample :bd_tek
    sleep 0.25
    sample :bd_tek
    sleep 1
    sample :drum_snare_hard
    sleep 0.75
    sample :bd_tek
    sleep 0.25
    sample :bd_tek
    sleep 1
    sample :drum_snare_hard
    sleep 1
  end
end

live_loop :hats do
  sample :drum_cymbal_closed, amp: 0.8
  sleep 0.5
  sample :drum_cymbal_closed, amp: 0.5
  sleep 0.5
end
