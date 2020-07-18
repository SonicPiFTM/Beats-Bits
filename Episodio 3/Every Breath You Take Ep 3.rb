#Every breath you take
use_bpm 117

live_loop :guitarra do
  use_synth :pluck
  notas1=(ring :Ab3, :Eb4, :Bb4, :Eb4, :C5, :Bb4, :Eb4, :Bb4)
  notas2=(ring :F3, :C4, :G4, :C4, :Ab4, :G4, :C4, :G4)
  notas3=(ring :Db3, :Ab3, :Eb4, :Ab3, :Db4, :Ab3, :Db3, :Ab3)
  notas4=(ring :Eb3, :Bb3, :F4, :Bb3, :Eb4, :Bb3, :Eb3, :Bb3)
  2.times do
    8.times do
      play notas1.tick
      sleep 0.5
    end
  end
  tick_reset #Me aseguro que comienza de la primera posición nuevamente.
  2.times do
    8.times do
      play notas2.tick
      sleep 0.5
    end
  end
  #COMPLETAR ACÁ LO QUE FALTA USANDO LOS ANILLOS QUE LES REGALAMOS
end

live_loop :bajo do
  use_synth :fm
  notas=(ring :Ab2, :F2, :Db3, :Eb3, :Ab2)
  2.times do
    tick
    2.times do
      8.times do
        play notas.look
        sleep 0.5
      end
    end
  end
  #COMPLETAR ACÁ LO QUE FALTA USANDO EL ANILLO DEL BAJO
end

live_loop :drums do
  sample :drum_bass_hard, rate: 1.1
  sleep 1
  sample :drum_snare_hard, rate: 1.1
  sample :perc_snap
  sleep 0.5
  sample :drum_bass_hard, rate: 1.1
  sleep 0.5
  sample :drum_bass_hard, rate: 1.1
  sleep 1
  sample :drum_snare_hard, rate: 1.1
  sample :perc_snap
  sleep 1
  
end
