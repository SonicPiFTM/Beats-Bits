live_loop :coro do
  2.times do
    sample :ambi_choir, rate: 0.3
    sleep 4
  end
  2.times do
    sample :ambi_choir, rate: 0.4, release: rrand(0.7, 1.5), sustain: 0
    sleep 1.5
  end
  sample :ambi_choir, rate: 0.7
  sleep 1
end

with_fx :echo do
  live_loop :arp do
    use_synth :saw
    play scale(:a, :minor_pentatonic).choose, amp: rrand(0.1, 0.4)
    sleep 0.125
  end
end

live_loop :bass do
  use_synth :tb303
  2.times do
    play :C2, release: 4
    sleep 4
  end
  2.times do
    play :A1, release: 1.5
    sleep 1.5
  end
  play :F2, release: 1
  sleep 1
  
end

live_loop :bd do
  sample :bd_808, amp: 2
  sleep 0.5
end

live_loop :hh do
  sleep 0.25
  sample :drum_cymbal_closed
  sleep 0.25
end

live_loop :sd do
  sleep 0.5
  sample :sn_dub
  sleep 0.5
end
