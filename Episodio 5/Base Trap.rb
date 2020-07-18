#Trap
use_bpm 60

# Es recomendable juagr con los rangos de los rrand, cambiar los samples dentro de :glitch y
# las frecuencias de los one_in

live_loop :arpegio do
  duraciones = (ring 0.5, 0.5, 7)
  use_synth :pluck
  3.times do
    play chord(:c, :m).tick, sustain: duraciones.look
    sleep duraciones.look
  end
  3.times do
    play chord(:f, :m).tick, sustain: duraciones.look
    sleep duraciones.look
  end
end

live_loop :arpegio2 do
  duraciones = (ring 0.5, 0.5, 7)
  use_synth :piano #lo mismo que el de arriba con otro sonido para más relleno
  3.times do
    play chord(:c, :m).tick, sustain: duraciones.look
    sleep duraciones.look
  end
  3.times do
    play chord(:f, :m).tick, sustain: duraciones.look
    sleep duraciones.look
  end
end

live_loop :glitch do
  sample :bass_dnb_f, release: 0.25, amp: 2, rate: rrand(0.5, 1.2)
  sleep 0.75
  sample :elec_bong, release: 0.25
  sleep 0.75
  sample :glitch_perc5, release: 0.25, amp: 2
  sleep 0.5
  sample :elec_bong, release: 0.25
  sleep 1.5
  sample :ambi_piano, release: 0.25, amp: 2
  sleep 0.25
  sample :glitch_perc2, release: 0.25, amp: 1.5
  sleep 0.25
  sample :bd_mehackit, release: 0.25, amp: 0.7
  sleep 0.75
  sample :elec_fuzz_tom, release: 0.25, amp: 0.5
  sleep 0.75
  sample :ambi_sauna, release: 0.25, amp: 0.2
  sleep 0.5
  sample :bd_mehackit, release: 0.25, amp: 0.7
  sleep 1.5
  sample :elec_blup, release: 0.25, amp: 2
  sleep 0.25
  sample :elec_fuzz_tom, release: 0.25, amp: 0.5
  sleep 0.25
end


live_loop :bajo do
  # aca el truco est� en que en el trap los bajos se hacen con bombos muy largos que tienen una nota definida
  # por eso lo que hacemos usar un sample de ese estilo y cambiar el rate con un ring, cambiando la afinaci�n
  # Ojo! Hay que afinarlos con paciencia y o��do
  
  duraciones = (ring 1.75, 0.25, 0.75, 0.75, 0.5)
  notas = (ring 1, 1.3)
  2.times do
    5.times do
      tick #puedo ejecutar el tick solo para que se mueva a la siguiente posicion
      sample :bd_boom, rate: notas[0], amp: 3
      #Tambi�n puedo pedir una posici�n en particular del anillo poniendo entre corchetes la posici�n que quiero
      #en este caso, notas[0] siempre ser� 1 (salvo que cambie el contenido del anillo)
      sleep duraciones.look
    end
  end
  2.times do
    5.times do
      tick
      sample :bd_boom, rate: notas[1], amp: 3
      sleep duraciones.look
    end
  end
end

live_loop :bata do
  sleep 1
  sample :sn_dub
  sleep 2
  sample :sn_dub, rate: one_in(3) ? -1.5 : 1
  sleep 1
end

live_loop :hats do
  if one_in(4)
    4.times do
      sample :drum_cymbal_closed, rate: 2, release: 0.0625, amp: rrand(0.6, 1)
      sleep 0.0625
    end
    if one_in(4)
      4.times do
        sample :drum_cymbal_closed, rate: 2, release: 0.0625, amp: rrand(0.6, 1)
        sleep 0.0625
      end
    end
  end
  sample :drum_cymbal_closed, rate: 2, release: 0.0625, amp: rrand(0.6, 1) if !one_in(4)
  sleep 0.25
end