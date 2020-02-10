module Tables
    attr_reader :initial_pressure_groups
    def initialize
      @initial_pressure_groups = {
        depth10: {A: (1..10).to_a, B: (11..20).to_a, C: (21..26).to_a, D: (26..30).to_a, E: (31..34).to_a, F: (35..37).to_a, G: (38..41).to_a, H: (41..45).to_a, I: (46..50).to_a, J: (50..54).to_a, K: (54..59).to_a, L: (60..64).to_a, M: (65..70).to_a, N: (71..75).to_a, O: (76..82).to_a, P: (83..88).to_a, Q: (89..95).to_a, R: (96..104).to_a, S: (105..112).to_a, T: (113..122).to_a, U: (123..133).to_a, V: (134..145).to_a, W: (146..160).to_a, X: (161..178).to_a, Y: (179..199).to_a, Z: (200..219).to_a}, 
        depth12: {A: (1..9).to_a, B: (10..17).to_a, C: (18..23).to_a, D: (24..26).to_a, E: (27..29).to_a, F: (30..32).to_a, G: (33..35).to_a, H: (36..38).to_a, I: (39..42).to_a, J: (43..45).to_a, K: (46..49).to_a, L: (50..53).to_a, M: (54..57).to_a, N: (58..62).to_a, O: (63..66).to_a, P: (67..71).to_a, Q: (72..76).to_a, R: (77..82).to_a, S: (83..88).to_a, T: (89..94).to_a, U: (95..101).to_a, V: (102..108).to_a, W: (109..116).to_a, X: (117..125).to_a, Y: (126..134).to_a, Z: (135..147).to_a},
        depth14: {A: (1..8).to_a, B: (9..15).to_a, C: (16..19).to_a, D: (20..22).to_a, E: (23..24).to_a, F: (25..27).to_a, G: (28..29).to_a, H: (30..32).to_a, I: (33..35).to_a, J: (36..37).to_a, K: (38..40).to_a, L: (41..43).to_a, M: (44..47).to_a, N: (48..50).to_a, O: (51..53).to_a, P: (54..57).to_a, Q: (58..61).to_a, R: (62..64).to_a, S: (65..68).to_a, T: (69..73).to_a, U: (74..77).to_a, V: (78..82).to_a, W: (83..87).to_a, X: (88..92).to_a, Y: (92..98).to_a},
        depth16: {A: (1..7).to_a, B: (8..13).to_a, C: (14..17).to_a, D: (18..19).to_a, E: (20..21).to_a, F: (22..23).to_a, G: (24..25).to_a, H: (26..27).to_a, I: (28..29).to_a, J: (30..32).to_a, K: (33..34).to_a, L: (35..37).to_a, M: (38..39).to_a, N: (40..42).to_a, O: (43..45).to_a, P: (46..48).to_a, Q: (49..50).to_a, R: (51..53).to_a, S: (54..56).to_a, T: (57..60).to_a, U: (61..63).to_a, V: (64..67).to_a, W: (68..70).to_a, X: (71..72).to_a},
        depth18: {A: (1..6).to_a, B: (7..11).to_a, C: [15], D: [16], E: (17..18).to_a, F: (19..20).to_a, G: (21..22).to_a, H: (23..24).to_a, I: (25..26).to_a, J: (27..28).to_a, K: (29..30).to_a, L: (31..32).to_a, M: (33..34).to_a, N: (35..36).to_a, O: (37..39).to_a, P: (40..41).to_a, Q: (42..43).to_a, R: (44..46).to_a, S: (47..48).to_a, T: (49..51).to_a, U: (52..53).to_a, V: (54..55).to_a, W: [56]},
        depth20: {A: (1..6).to_a, B: (7..10).to_a, C: (11..13).to_a, D: (13..15).to_a, E: [16], F: (17..18).to_a, G: (19..20).to_a, H: [21], I: (22..23).to_a, J: (24..25).to_a, K: [26], L: (27..28).to_a, M: (29..30).to_a, N: (31..32).to_a, O: (33..34).to_a, P: (35..36).to_a, Q: (37..38).to_a, R: (39..40).to_a, S: (41..42).to_a, T: (43..44).to_a, U: [45]},
        depth22: {A: (1..5).to_a, B: (6..9).to_a, C: (10..12).to_a, D: [13], E: (14..15).to_a, F: [16], G: (17..18).to_a, H: [19], I: (20..21).to_a, J: [22], K: (23..24).to_a, L: [25], M: (26..27).to_a, N: (28..29).to_a, O: [30], P: (31..32).to_a, Q: (33..34).to_a, R: (35..36).to_a, S: [37]},
        depth25: {A: (1..4).to_a, B: (5..8).to_a, C: (9..10).to_a, D: [11], E: (12..13).to_a, F: [14], G: [15], H: (16..17).to_a, I: [18], J: [19], K: (20..21).to_a, L: [22], M: [23], N: (24..25).to_a, O: [26], P: (27..28).to_a, Q: [29]},
        depth30: {A: (1..3).to_a, B: (4..6).to_a, C: (7..8).to_a, D: [9], E: [10], F: [11], G: [12], H: [13], I: [14], J: [15], K: [16], L: [17], M: (18..19).to_a, N: [20]},
        depth35: {A: (1..3).to_a, B: (4..5).to_a, C: (6..7).to_a, D: [8], F: [9], G: [10], H: [11], I: [12], J: [13], K: [14]},
        depth40: {B: (1..5).to_a, C: [6], E: [7], F: [8], G: [9]},
        depth42: {B: (1..4).to_a, D: (5..6).to_a, E: [7], F: [8]}
      }
      @second_pressure_group = {
        A: {A: (0..180).to_a},
        B: {A: (48..228).to_a, B: (0..47).to_a},
        C: {A: (70..250).to_a, B: (22..69).to_a, C: (0..21).to_a},
        D: {A: (79..259).to_a, B: (31..78).to_a, C: (9..30).to_a, D: (0..8).to_a},
        E: {A: (88..268).to_a, B: (39..87).to_a, C: (17..38).to_a, D: (8..16).to_a, E: (0..7).to_a},
        F: {A: (95..275).to_a, B: (47..94).to_a, C: (25..46).to_a, D: (16..24).to_a, E: (8..15).to_a, F: (0..7).to_a},
        G: {A: (102..282).to_a, B: (54..101).to_a, C: (32..53).to_a, D: (23..31).to_a, E: (14..22).to_a, F: (7..13).to_a, G: (0..6).to_a},
        H: {A: (108..288).to_a, B: (60..107).to_a, C: (38..59).to_a, D: (29..37).to_a, E: (21..28).to_a, F: (13..20).to_a, G: (6..12).to_a, H: (0..5).to_a},
        I: {A: (114..294).to_a, B: (66..113).to_a, C: (44..65).to_a, D: (35..43).to_a, E: (27..34).to_a, F: (19..26).to_a, G: (12..18).to_a, H: (6..11).to_a, I: (0..5).to_a},
        J: {A: (120..300).to_a, B: (72..119).to_a, C: (50..71).to_a, D: (41..49).to_a, E: (32..40).to_a, F: (25..31).to_a, G: (18..24).to_a, H: (12..17).to_a, I: (6..11).to_a, J: (0..5).to_a},
        K: {A: (125..305).to_a, B: (77..124).to_a, C: (55..76).to_a, D: (46..54).to_a, E: (38..45).to_a, F: (30..37).to_a, G: (23..29).to_a, H: (17..22).to_a, I: (11..16).to_a, J: (5..10).to_a, K: (0..4).to_a},
        L: {A: (130..310).to_a, B: (82..129).to_a, C: (60..81).to_a, D: (51..59).to_a, E: (43..50).to_a, F: (35..42).to_a, G: (28..34).to_a, H: (22..27).to_a, I: (16..21).to_a, J: (10..15).to_a, K: (5..9).to_a, L: (0..4).to_A}, 
        P: {G: (46..51).to_a, H: (52..59).to_a}
      }
    end
end