#Reggaeton
use_bpm 90

live_loop :bajo do
  duraciones = (ring 1, 0.5, 0.5)
  notas = (ring :e2, :e2, :b2, :f2, :f2, :c3)
  use_synth :dsaw
  play notas.tick, release: duraciones.look, amp: 0.3
  sleep duraciones.look
end

live_loop :bajo2 do
  # mismo contenido con otro synth para darle mas "grosor"
  duraciones = (ring 1, 0.5, 0.5)
  notas = (ring :e2, :e2, :b2, :f2, :f2, :c3)
  use_synth :dtri
  play notas.tick, release: duraciones.look, amp: 0.3
  sleep duraciones.look
end

live_loop :bata do
  3.times do
    sample :bd_haus, rate: 1.3
    sleep 0.75
    sample :drum_snare_hard, rate: 1.6, release: 0.25
    sleep 0.25
    sample :bd_haus, rate: 1.3
    sleep 0.5
    sample :drum_snare_hard, rate: 1.6, release: 0.25
    sleep 0.5
  end
  sample :bd_haus, rate: 1.3
  sample :drum_snare_hard, rate: 1.6, release: 0.25, amp: 0.8
  sleep 0.25
  sample :drum_snare_hard, rate: 1.6, release: 0.25, amp: 0.9
  sleep 0.5
  sample :drum_snare_hard, rate: 1.6, release: 0.25, amp: 0.7
  sleep 0.25
  sample :bd_haus, rate: 1.3
  sleep 0.5
  sample :drum_snare_hard, rate: 1.6, release: 0.25
  sleep 0.5
end

live_loop :hats do
  sample :drum_cymbal_closed, amp: 0.4
  sleep 0.5
end