# Journey to the End
# By Windir
#
# Coded By Jason Bristol
#
# Tuning: E2 A2 D3 G3 B3 E4
# 4:4 timing

use_synth :pluck
use_bpm 180

SIXTEENTH_NOTE = 0.063
EIGHTH_NOTE = 0.125
QUARTER_NOTE = 0.25
HALF_NOTE = 0.5
WHOLE_NOTE = 1.0

# Strum a chord with a certain delay between strings
define :strum do |c, d=0.1|
  in_thread do
    play_pattern_timed c.drop_while{|n| [nil,:r].include? n}, d
  end
end

define :whole_note do |note, a=1, d=1|
  play note, amp: a, release: d
  sleep WHOLE_NOTE * d
end

define :quarter_note do |note, a=1|
  4.times do
    play note, amp: a
    sleep QUARTER_NOTE
  end
end

live_loop :metro do
  sleep WHOLE_NOTE
end

live_loop :lead, sync: :metro do

  with_fx :distortion, distort: 0.1 do

    tick

    8.times do
      quarter_note :C2
      quarter_note :G2
      quarter_note :C2
      quarter_note :Ds2

      quarter_note :G3
      quarter_note :Ds2
      quarter_note :C2
      quarter_note :Ds2

      quarter_note :D2
      quarter_note :As2
      quarter_note :F2
      quarter_note :As2

      quarter_note :C2
      quarter_note :G2
      quarter_note :C2
      quarter_note :Ds2
    end

    # Break 1
    2.times do
      quarter_note :Ds2
      quarter_note :Ds2
      quarter_note :Ds2
      quarter_note :Ds2
    end

    2.times do
      quarter_note :C2
      quarter_note :C2
      quarter_note :C2
      quarter_note :C2
    end

    with_fx :reverb do
      amp = 1.5

      whole_note :C3, amp
      whole_note :G3, amp
      whole_note :C3, amp
      whole_note :Ds3, amp

      whole_note :As3, amp
      whole_note :F2, amp
      whole_note :As3, amp
      whole_note :Ds3, amp

      whole_note :As3, amp
      whole_note :F2, amp
      whole_note :As3, amp
      whole_note :D3, amp

      whole_note :C3, amp
      whole_note :G3, amp
      whole_note :C3, amp
      whole_note :Ds3, amp
    end

    # 41
    with_fx :reverb do
      quarter_note :C3
      quarter_note :G3
      quarter_note :C3
      quarter_note :Ds3

      quarter_note :G4
      quarter_note :Ds3
      quarter_note :C3
      quarter_note :Ds3

      quarter_note :D3
      quarter_note :As3
      quarter_note :F3
      quarter_note :As3

      quarter_note :C3
      quarter_note :G3
      quarter_note :C3
      quarter_note :Ds3
    end

    # A vague
    4.times do
      quarter_note :C2
      quarter_note :G2
      quarter_note :C2
      quarter_note :Ds2

      quarter_note :G3
      quarter_note :Ds2
      quarter_note :C2
      quarter_note :Ds2

      quarter_note :D2
      quarter_note :As2
      quarter_note :F2
      quarter_note :As2

      quarter_note :C2
      quarter_note :G2
      quarter_note :C2
      quarter_note :Ds2

      quarter_note :G3
      quarter_note :Ds2
      quarter_note :C2
      quarter_note :G2

      quarter_note :As2
      quarter_note :Ds2
      quarter_note :As2
      quarter_note :Ds2

      quarter_note :D2
      quarter_note :As2
      quarter_note :F2
      quarter_note :As2

      quarter_note :C2
      quarter_note :G2
      quarter_note :C2
      quarter_note :Ds2
    end

    # Break 2
    2.times do
      quarter_note :Ds2
      quarter_note :Ds2
      quarter_note :Ds2
      quarter_note :Ds2
    end

    2.times do
      quarter_note :C2
      quarter_note :C2
      quarter_note :C2
      quarter_note :C2
    end

    2.times do
      with_fx :reverb do
        amp = 1.5

        whole_note :C3, amp
        whole_note :G3, amp
        whole_note :C3, amp
        whole_note :Ds3, amp

        whole_note :As3, amp
        whole_note :F2, amp
        whole_note :As3, amp
        whole_note :Ds3, amp

        whole_note :As3, amp
        whole_note :F2, amp
        whole_note :As3, amp
        whole_note :D3, amp

        whole_note :C3, amp
        whole_note :G3, amp
        whole_note :C3, amp
        whole_note :Ds3, amp
      end
    end

    # I embrace
    5.times do
      quarter_note :C3
      quarter_note :G3
      quarter_note :C3
      quarter_note :Ds3

      quarter_note :As3
      quarter_note :F3
      quarter_note :As3
      quarter_note :Ds3

      quarter_note :As3
      quarter_note :F3
      quarter_note :As3
      quarter_note :D3

      quarter_note :C3
      quarter_note :G3
      quarter_note :C3
      quarter_note :Ds3

      quarter_note :C3
      quarter_note :G3
      quarter_note :C3
      quarter_note :Ds3

      quarter_note :D3
      quarter_note :As3
      quarter_note :D3
      quarter_note :F4

      quarter_note :Ds3
      quarter_note :As3
      quarter_note :Ds3
      quarter_note :G4

      quarter_note :D3
      quarter_note :As3
      quarter_note :D3
      quarter_note :F4
    end

    # Break 3
    4.times do
      with_fx :reverb do
        amp = 2.0
        duration = 2.0

        whole_note :C4, amp
        whole_note :G3, amp
        whole_note :C4, amp
        whole_note :Ds4, amp

        whole_note :As3, amp
        whole_note :F3, amp
        whole_note :As3, amp
        whole_note :Ds4, amp

        whole_note :D4, amp
        whole_note :As3, amp
        whole_note :F3, amp
        whole_note :D4, amp

        whole_note :Ds4, amp
        whole_note :C4, amp
        whole_note :G3, amp, duration

        whole_note :C4, amp
        whole_note :G3, amp
        whole_note :C4, amp
        whole_note :Ds4, amp

        whole_note :D4, amp
        whole_note :As4, amp
        whole_note :F4, amp, duration

        whole_note :Ds4, amp, duration
        whole_note :As4, amp, duration

        whole_note :D4, amp
        whole_note :As4, amp
        whole_note :F4, amp, duration
      end
    end
  end
end

# live_loop :distort_lead, sync: :metro do
#   with_fx :distortion, distort: 0.2, mix: 0.5 do

#     tick

#     8.times do
#       quarter_note :C2
#       quarter_note :G2
#       quarter_note :C2
#       quarter_note :Ds2

#       quarter_note :G3
#       quarter_note :Ds2
#       quarter_note :C2
#       quarter_note :Ds2

#       quarter_note :D2
#       quarter_note :As2
#       quarter_note :F2
#       quarter_note :As2

#       quarter_note :C2
#       quarter_note :G2
#       quarter_note :C2
#       quarter_note :Ds2
#     end

#     # Break
#     2.times do
#       quarter_note :Ds2
#       quarter_note :Ds2
#       quarter_note :Ds2
#       quarter_note :Ds2
#     end

#     2.times do
#       quarter_note :C2
#       quarter_note :C2
#       quarter_note :C2
#       quarter_note :C2
#     end

#     with_fx :reverb do
#       play chord(:G, "7"), release: 12
#       sleep WHOLE_NOTE * 16
#     end
#   end
# end
