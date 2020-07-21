# Los archivos estÃ¡n en una carpeta en el repositorio, como yo los tengo que editar localmente
# no tiene utilidad que ponga el path ya que no andarÃ­a, por lo que, en este ejemplo, los
# samples los copiÃ© a la carpeta de Samples de la instalaciÃ³n de Sonic Pi


#Vamos a aprovechar los samples externos para hacer un género de música electronica llamado "Glitch Hop"
#Está basado en cortar partes muy pequeñas de samples

bpm = 130

use_bpm bpm

sample1 = :sample1
sample2 = :sample2
sample3 = :sample3
sample4 = :sample4
sample5 = :sample5
sample6 = :sample6


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
  sample :drum_cymbal_closed, amp: 0.5 if !one_in(3)
  sleep 0.25
end