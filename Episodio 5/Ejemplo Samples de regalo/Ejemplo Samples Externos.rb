#Copiar los archivos en C:\Samples. Si los ponés en otro lugar, acordate de modificar la variable carpeta

#Vamos a aprovechar los samples externos para hacer un género de música electronica llamado "Glitch Hop"
#Está basado en cortar partes muy pequeñas de samples

use_bpm 130

carpeta="C:/Samples/"
sample1 = carpeta+"sample1.wav"
sample2 = carpeta+"sample2.wav"
sample3 = carpeta+"sample3.wav"
sample4 = carpeta+"sample4.wav"
sample5 = carpeta+"sample5.wav"
sample6 = carpeta+"sample6.wav"

with_fx :reverb do
  with_fx :distortion do
    live_loop :sampleChop do
      
      ringSamples = (ring sample1, sample2, sample3, sample4, sample5, sample6)
      sampleActual = ringSamples.choose
      sample sampleActual, start: rrand(0.1, 0.5), release: 0.25, sustain: 0, rate: rrand(1, 2), amp: 2
      sleep 0.25
    end
    
  end
  
  
  live_loop :fondo do
    sample :sample3, rate: 0.2, pan: -1, amp: 0.5
    sample :sample3, rate: 0.4, pan: 1, amp: 0.5
    sleep 8
  end
end

live_loop :bajo do
  use_synth :fm
  play :a2
  sleep 1
end

live_loop :drums do
  sample :bd_mehackit
  sleep 1
  sample :sn_dub, rate: 1.2
  sleep 1
end

live_loop :hats do
  sample :drum_cymbal_closed, amp: 0.5 if !one_in(3) # One_in quiere decir uno de cada, en este caso 1 de 
# cada 3 veces aleatoriamente va a dar un valor positivo. Con el "!" negamos ese valor, 
# cada vez que es positivo da negativo y viceversa.
  sleep 0.25
end
