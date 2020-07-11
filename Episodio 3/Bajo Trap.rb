#Trap
use_bpm 60

live_loop :bajo do
  # aca el truco está en que en el trap los bajos se hacen con bombos muy largos que tienen una nota definida
  # por eso lo que hacemos usar un sample de ese estilo y cambiar el rate con un ring, cambiando la afinación
  # Ojo! Hay que afinarlos con paciencia y oí­do
  
  duraciones = (ring 1.75, 0.25, 0.75, 0.75, 0.5)
  notas = (ring 1, 1.3)
  use_synth :sine
  2.times do
    5.times do
      tick #puedo ejecutar el tick solo para que se mueva a la siguiente posicion
      sample :bd_boom, rate: notas[0], amp: 3
      #También puedo pedir una posición en particular del anillo poniendo entre corchetes la posición que quiero
      #en este caso, notas[0] siempre será 1 (salvo que cambie el contenido del anillo)
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
