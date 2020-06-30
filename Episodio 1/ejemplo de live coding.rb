

use_debug false
load_samples :guit_em9, :bd_haus, :loop_industrial

q = 0

define :anillo do |min,max|
  if (q < min)
    q = min
    return q
  end
  if (q < max )
    q +=1
    return q
  else
    q = min
    return q
  end
end

define :drum1 do |a|
  live_loop :tijd do
    1.times do
      sample :bd_haus, amp: 2.5, cutoff: 100,pan: -0.5
      sleep a
    end
  end
end

define :drum2 do |a,b|
  live_loop :ind do
    sample :loop_industrial, beat_stretch: a
    sleep b
  end
end

define :arpegio do |escala,sinte,vol,min,max|
  live_loop :lands, auto_cue: false do
    use_synth sinte
    use_random_seed 310003
    q = anillo(min,max)
    with_fx :reverb do
      ns = (scale :e2, escala, num_octaves: 4).take(q)
      q*16.times do
        play ns.choose, detune: 12, release: 0.1, amp: v = vol + rand(0.5) , cutoff: rrand(70, 120)
        puts q
        sleep 0.125
        
      end
    end
  end
end

define :arpegio1 do |efecto1,efecto2,escala,sinte,vol,min,max|
  live_loop :lands, auto_cue: false do
    with_fx efecto1 do
      with_fx efecto2  do
        use_synth sinte
        use_random_seed 310003
        q = anillo(min,max)
        ns = (scale :e2, escala, num_octaves: 4).take(q)
        q*16.times do
          play ns.choose, detune: 12, release: 0.1, amp: v = vol + rand(0.5) , cutoff: rrand(70, 120)
          #control e, phase: 0.025
          puts q
          sleep 0.125
        end
      end
    end
  end
end

define :guitarra do
  live_loop :fietsen do
    sleep 0.25
    sample :guit_em9, rate: -2
    sleep 7.75
  end
end


live_loop :tempo do
  cue :ya
  sleep 1
end

live_loop :a do
  sync :ya
  drum1(ring 0.5).tick
end

live_loop :b do
  stop
  sync :ya
  #drum1(0.5)
  drum2(2,2)
end

live_loop :c do
  stop
  sync :ya
  #arpegio(:minor_pentatonic,(knit :mod_saw,6,:mod_dsaw,6 ).tick,1.6,(ring 1,2,1,3,1,4).look,1)
  #arpegio1(:flanger,:ixi_techno,:minor_pentatonic,:tb303,0.7,1,1)
  arpegio1(:flanger,:echo,:minor_pentatonic,(knit :mod_saw,6,:mod_dsaw,6 ).tick,1.2,(ring 1,2,1,3,1,4).look,1)
  #arpegio1(:flanger,:flanger,:neapolitan_minor,:tb303,0.6,(ring 3,4).tick,1)
end