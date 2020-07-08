use_bpm 60

live_loop :drums do
  sample :bd_boom
  sleep 1
  sample :sn_dub
  sleep 0.75
  sample :bd_boom
  sleep 0.25
  sample :bd_boom
  sleep 0.75
  sample :bd_boom
  sleep 0.25
  sample :sn_dub
  sleep 0.5
  sample :bd_boom
  sleep 0.5
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
