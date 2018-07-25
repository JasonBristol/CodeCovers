##| Standard guitar tuning
##| E2 A2 D3 G3 B3 E4

notes = (ring :E2, :B2, :E3, :G3, :E4, :B3, :A3, :E3, :G2, :B2, :D3, :G3, :C2, :E3, :G3, :C3, :E4, :C3, :G3, :E3, :A2, :E3, :A3, :B3)

live_loop :arg do
  use_synth :blade
  play notes.tick
  sleep 0.25
end
