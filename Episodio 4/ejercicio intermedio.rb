escalaOriginal= (scale :C3, :major)
escala1=escalaOriginal.reflect
escala2=escalaOriginal.mirror
escala3=escalaOriginal.reverse
escala4=escalaOriginal.shuffle
escala5=escala1.butlast

use_synth :piano
live_loop :aver do
  #play escala1.tick
  #play escala2.tick
  #play escala3.tick
  #play escala4.tick
  #play escala5.tick
  #También se pueden ayudar con el print!
  sleep 0.25
end
