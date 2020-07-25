#Trap
use_bpm 60

# Es recomendable jugar con los rangos de los rrand y cambiar los samples dentro de :glitch 

live_loop :arpegio do
  duraciones = (ring 0.5, 0.5, 7)
  acorde1 = chord(:c, :m)
  acorde2 = chord(:f, :m)
  use_synth :pluck
  3.times do
    play acorde1.tick, sustain: duraciones.look
    sleep duraciones.look
  end
  3.times do
    play acorde2.tick, sustain: duraciones.look
    sleep duraciones.look
  end
end

live_loop :arpegio2 do
  duraciones = (ring 0.5, 0.5, 7)
  acorde1 = chord(:c, :m)
  acorde2 = chord(:f, :m)
  use_synth :piano #lo mismo que el de arriba con otro sonido para más relleno
  3.times do
    play acorde1.tick, sustain: duraciones.look
    sleep duraciones.look
  end
  3.times do
    play acorde2.tick, sustain: duraciones.look
    sleep duraciones.look
  end
end

live_loop :glitch do
  sample :bass_dnb_f, release: 0.25, amp: 2, rate: 1.2
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
  # por eso lo que hacemos usar un sample de ese estilo y cambiar el rate, cambiando la afinaci�n
  # Ojo! Hay que afinarlos con paciencia y o��do
  
  duraciones = (ring 1.75, 0.25, 0.75, 0.75, 0.5)
  2.times do
    5.times do
      tick #puedo ejecutar el tick solo para que se mueva a la siguiente posicion
      sample :bd_boom, rate: 1, amp: 3
      sleep duraciones.look
    end
  end
  2.times do
    5.times do
      tick
      sample :bd_boom, rate: 1.3, amp: 3
      sleep duraciones.look
    end
  end
end

live_loop :bata do
  sleep 1
  sample :sn_dub
  sleep 2
  sample :sn_dub
  sleep 1
end

live_loop :hats do
  8.times do
    sample :drum_cymbal_closed, rate: 2, release: 0.0625
    sleep 0.125
  end
  sample :drum_cymbal_closed, rate: 2, release: 0.0625
  sleep 0.25
  6.times do
    sample :drum_cymbal_closed, rate: 2, release: 0.0625
    sleep 0.125
  end
  sample :drum_cymbal_closed, rate: 2, release: 0.0625
  sleep 0.25
  4.times do
    sample :drum_cymbal_closed, rate: 2, release: 0.0625
    sleep 0.0625
  end
  8.times do
    sample :drum_cymbal_closed, rate: 2, release: 0.0625
    sleep 0.125
  end
  
  
  12.times do
    sample :drum_cymbal_closed, rate: 2, release: 0.0625
    sleep 0.0625
  end
  sample :drum_cymbal_closed, rate: 2, release: 0.0625
  sleep 0.25
  6.times do
    sample :drum_cymbal_closed, rate: 2, release: 0.0625
    sleep 0.125
  end
  sample :drum_cymbal_closed, rate: 2, release: 0.0625
  sleep 0.25
  4.times do
    sample :drum_cymbal_closed, rate: 2, release: 0.0625
    sleep 0.0625
  end
  8.times do
    sample :drum_cymbal_closed, rate: 2, release: 0.0625
    sleep 0.125
  end
end