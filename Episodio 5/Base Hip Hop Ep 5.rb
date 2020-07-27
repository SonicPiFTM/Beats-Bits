#Hip Hop
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
    play acordes.look, amp: rrand(0.6, 1)
    sleep 0.5
  end
end

live_loop :arpegio do
  on = (ring 0, 1, 1, 0, 1) # Prueben combinaciones de 0 y 1!
  use_synth :pluck
  64.times do
    tick
    play chord(:a3, :m9).look, amp: rrand(0.6, 1) if on.look ==1
    sleep 0.25
  end
  64.times do
    tick
    play chord(:d3, :m9).look, amp: rrand(0.6, 1)  if on.look ==1
    sleep 0.25
  end
end


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
    sample :drum_snare_hard if !one_in(3) # One_in quiere decir uno de cada, en este caso 1 de 
# cada 3 veces aleatoriamente va a dar un valor positivo. Con el "!" negamos ese valor, 
# cada vez que es positivo da negativo y viceversa.
    sleep 1
  end
end

live_loop :hats do
  # Mucho interes en la aleatoriedad acá!
  if rrand_i(1,4)== 1 then
    4.times do
      sample :drum_cymbal_closed, amp: rrand(0.3, 0.9)
      sleep 0.25
    end
  else
    sample :drum_cymbal_closed, amp: 0.8
    sleep 0.5
    if rrand_i(1,3)==1 then
      sample :drum_cymbal_closed, amp: 0.5
    end
    sleep 0.5
  end
end
