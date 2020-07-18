#Bajo Hip Hop
use_bpm 90

live_loop :melodia do
  duraciones = (ring 3, 1, 4)
  notas = (ring :a5, :g5, :e5, :e5, :d5, :a4)
  use_synth :prophet
  play notas.tick, release: duraciones.look
  sleep duraciones.look
end

live_loop :acordes do
  # Se puede meter de todo dentro de un ring, aprovechamos este ejemplo para mostrarte
  # como se pueden meter hasta rings dentro de rings!
  acordes = (ring chord(:a3, :minor), chord(:d3, :minor))
  use_synth :piano
  tick
  16.times do
    sleep 0.5
    play acordes.look
    sleep 0.5
  end
end

live_loop :arpegio do
  on = (ring 0, 1, 1, 0, 1) # Prueben combinaciones de 0 y 1!
  acorde1 = chord(:a3, :m9)
  acorde2 = chord(:d3, :m9)
  use_synth :pluck
  64.times do
    tick
    play acorde1.look if on.look == 1
    sleep 0.25
  end
  64.times do
    tick
    play acorde2.look if on.look == 0
    sleep 0.25
  end
end

live_loop :bajo do
  duraciones = (ring 1.75, 0.25, 1.5, 1, 1.25, 0.25, 2)
  notas1 = (ring :a2, :g3, :a3, :a2, :a2, :g3, :a3)
  notas2 = (ring :d3, :c4, :d4, :d3, :d3, :c4, :d4)
  use_synth :fm #Este sonido es de lo que m�s se parece a un bajo el�ctrico
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
end
