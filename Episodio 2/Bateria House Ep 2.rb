use_bpm 130

live_loop :bd do
  sample :bd_haus
  sleep 1
end

live_loop :sd do
  sleep 1
  sample :sn_dub
  sleep 1
end

live_loop :hats do
  sleep 0.5
  sample :drum_cymbal_closed
  sleep 0.5
end

live_loop :perc do
  sleep 0.75
  sample :perc_snap2, rate: 0.6
  sleep 0.25
  sleep 3
  sleep 2.5
  sample :ambi_choir, rate: 1.2, release: 1, amp: 0.4
  sleep 1
  sample :ambi_piano, rate: 1.6, release: 1
  sleep 0.5
end