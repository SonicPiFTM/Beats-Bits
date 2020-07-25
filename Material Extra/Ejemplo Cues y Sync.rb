# En este ejemplo, el loop cues elige aleatoriamente uno de tres Cues, ":foo", ":bar" o ":baz", el resto de
# loops hace sync esperando cada uno a uno

live_loop :cues do
  cue [:foo, :bar, :baz].choose
  sleep 0.5
end

live_loop :esperaFoo do
  sync :foo
  sample :elec_beep
end

live_loop :esperaBar do
  sync :bar
  sample :elec_flip
end

live_loop :esperaBaz do
  sync :baz
  sample :elec_blup
end

