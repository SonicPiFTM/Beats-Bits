#Bajo Hip Hop
use_bpm 90

live_loop :bajo do
  duraciones = (ring 1.75, 0.25, 1.5, 1, 1.25, 0.25, 2)
  notas1 = (ring :a2, :g3, :a3, :a2, :a2, :g3, :a3)
  notas2 = (ring :d3, :c4, :d4, :d3, :d3, :c4, :d4)
  use_synth :fm #Este sonido es de lo que más se parece a un bajo eléctrico
  2.times do
    7.times do # Cada ring tiene 7 notas y queremos que suenen dos veces cada uno
      play notas1.tick, release: 0.5
      sleep duraciones.look
    end
  end
  2.times do
    7.times do
      play notas2.tick, release: 0.5
      sleep duraciones.look
    end
  end
end


live_loop :bata do
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
