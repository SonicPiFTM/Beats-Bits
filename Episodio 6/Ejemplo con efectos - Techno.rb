use_bpm 130

with_fx :distortion do
  live_loop :kick do
    sample :bd_haus
    sleep 1
  end
  live_loop :bajo do
    use_synth :blade
    sleep 0.5
    play :a1
    sleep 0.5
  end
  live_loop :snare do
    sleep 1
    sample :sn_dub
    sleep 1
  end
end

with_fx :gverb, amp: 0.9 do #hace parecer que todo sucede en un espacio gigante, tambien le bajamos un poco el volumen
  with_fx :echo, phase: 0.75, decay: 10 do #cada repeticion entre luego de un sleep de 0.75, en total hay 10 repeticiones
    with_fx :flanger do #hace que el piano suene "bajo el agua"
      live_loop :arpegio do
        use_synth :piano
        acorde = chord(:a5, :minor)
        3.times do
          play acorde.tick
          sleep 0.33
        end
        sleep 7
      end
    end
  end
end

with_fx :echo, phase: 0.5, decay: 3, amp: 0.6 do
  with_fx :octaver do #Agrega lo mismo una octava por debajo
    with_fx :distortion, distort: 0.9 do #Dato curioso, el sonido de un octavador más una distorsión marcó la década de los 60
      live_loop :melodia do
        use_synth :dsaw
        notas = (ring :a5, :c6, :g5)
        2.times do
          tick
          4.times do
            play notas.look
            sleep 0.75
          end
        end
        tick
        2.times do
          play notas.look
          sleep 0.75
        end
        play notas.look
        sleep 0.5
      end
    end
  end
end
