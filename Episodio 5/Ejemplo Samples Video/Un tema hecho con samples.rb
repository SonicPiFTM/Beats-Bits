use_bpm 130

carpeta="C:/Samples/"
grito=carpeta+"grito.wav"
rock=carpeta+"loop rock.wav"
duda=carpeta+"duda.wav"
bocina=carpeta+"bici.wav"

live_loop :lrock do
  sample rock, beat_stretch: 8, amp:2
  sleep 8
end

live_loop :lgrito do
  #stop
  sleep 0.9
  sample grito
  sleep 1.1
end

live_loop :lduda do
  #stop
  sample duda, amp:5, beat_stretch: 0.5
  sleep 2
end

live_loop :lbocina do
  stop
  sleep 2
  sample bocina, beat_stretch: 1.2
  sleep 2
end
