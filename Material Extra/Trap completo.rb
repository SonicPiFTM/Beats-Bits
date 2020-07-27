# Welcome to Sonic Pi
use_bpm 75

live_loop :bass do
  3.times do
    play :e2, release: 0.25
    sleep 0.75
    play :e3, release: 0.25
    sleep 0.75
    play :e2, release: 0.25
    sleep 0.5
    play :e2, release: 1
    sleep 1.5
    play :e2, release: 0.25
    sleep 0.25
    play :e2, release: 0.25
    sleep 0.25
  end
  play :a2, release: 0.25
  sleep 0.75
  play :a3, release: 0.25
  sleep 0.75
  play :a2, release: 0.25
  sleep 0.5
  play :a2, release: 1
  sleep 1.5
  play :a2, release: 0.25
  sleep 0.25
  play :a2, release: 0.25
  sleep 0.25
end

live_loop :glitch do
  sample :bass_dnb_f, release: 0.25, amp: 2
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
  sample :bass_drop_c, release: 0.25, amp: 2
  sleep 0.25
  sample :elec_fuzz_tom, release: 0.25, amp: 0.5
  sleep 0.25
end

speed = false
live_loop :drums do
  sample :bd_boom
  sleep 0.75
  sample :bd_boom
  sleep 0.25
  sample :sn_dub, rate: 1.2, release: 0.25
  sleep 0.5
  sample :bd_boom
  sleep 1
  sample :bd_boom
  sleep 0.5
  sample :sn_dub, rate: 1.2, release: 0.25
  sleep 0.25
  sample :bd_boom
  sleep 0.75
end

live_loop :hats do
  sample :drum_cymbal_closed, amp: rrand(0.5, 1), rate: rrand(1, 1.1) if !one_in(3) # One_in quiere decir uno de cada, en este caso 1 de 
# cada 3 veces aleatoriamente va a dar un valor positivo. Con el "!" negamos ese valor, 
# cada vez que es positivo da negativo y viceversa.
  sleep 0.25 if speed == false
  sleep 0.125 if speed == true
end
