# En esto lo arreglamos haciendo que el loop de bajo mantenga la cuenta de cuando comienza
# de nuevo la base con un cue, y el resto espera con un sync antes de empezar el loop
# También debemos hacer que todos los loops que se vayan a sincronizar duren lo mismo
# si no habría momentos de silencio mientras esperan

use_bpm 150

live_loop :drums do
  sync :comienzo
  4.times do
    sample :drum_heavy_kick
    sleep 0.5
    sample :drum_heavy_kick
    sleep 0.5
    sample :drum_snare_hard, amp: 0.7
    sleep 0.5
    sample :drum_snare_hard, amp: 0.3
    sleep 0.5
    sample :drum_heavy_kick
    sleep 0.5
    sample :drum_heavy_kick
    sleep 0.5
    sample :drum_snare_hard
    sleep 1
  end
end

live_loop :hats do
  sync :comienzo
  16.times do
    sample :drum_cymbal_closed, rate: 1.1
    sleep 0.5
    sample :drum_cymbal_closed, amp: 0.3
    sleep 0.5
  end
end

with_fx :compressor, amp: 2 do
  live_loop :bajo do
    cue :comienzo
    use_synth :fm
    ritmo = (ring 1, 0.5, 0.5, 0.5, 1.5)
    tick_reset
    play :a2, release: 1
    sleep 1
    4.times do
      play :a2, release: ritmo.tick
      sleep ritmo.look
    end
    5.times do
      play :f2, release: ritmo.tick
      sleep ritmo.look
    end
    9.times do
      play :d2, release: ritmo.tick
      sleep ritmo.look
    end
    play :d2, release: 1
    sleep 1
  end
end

with_fx :reverb do
  with_fx :echo, phase: 1.5, decay: 5 do
    with_fx :krush, amp: 1 do
      live_loop :guitarra do
        sync :comienzo
        use_synth :fm
        ritmo = (ring 0.5, 0.5, 3)
        acorde1 = chord(:a4, :minor)
        acorde2 = chord(:f4, :major)
        acorde3 = chord(:d4, :minor)
        3.times do
          play acorde1.tick, release: ritmo.look
          sleep ritmo.look
        end
        3.times do
          play acorde2.tick, release: ritmo.look
          sleep ritmo.look
        end
        6.times do
          play acorde3.tick, release: ritmo.look
          sleep ritmo.look
        end
      end
    end
  end
end