use_bpm 120
live_loop :bajo do
  5.times do
    play :a2, amp: 0.9
    sleep 0.75
    play :c3, amp: 0.7
    sleep 0.75
  end
  play :a2
  sleep 0.5
end

##| live_loop :bateria do
##|   sample :bd_haus
##|   sleep 1
##|   sample :bd_haus
##|   sample :sn_dub, amp: 0.4, rate: 1.2
##|   sleep 1
##| end
