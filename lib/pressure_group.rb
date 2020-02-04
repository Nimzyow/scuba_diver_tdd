class Pressure_group
  def initialize
    @pressure_group = {
      depth10: {A: (1..10).to_a, B: (11..20).to_a, C: (21..26).to_a, D: (26..30).to_a, E: (31..34).to_a, F: (35..37).to_a, G: (38..41).to_a, H: (41..45).to_a, I: (46..50).to_a, J: (50..54).to_a, K: (54..59).to_a, L: (60..64).to_a, M: (65..70).to_a, N: (71..75).to_a, O: (76..82).to_a, P: (83..88).to_a, Q: (89..95).to_a, R: (96..104).to_a, S: (105..112).to_a, T: (113..122).to_a, U: (123..133).to_a, V: (134..145).to_a, W: (146..160).to_a, X: (161..178).to_a, Y: (179..199).to_a, Z: (200..219).to_a}, 
      depth12: {A: (1..9).to_a, B: (10..17).to_a, C: (18..23).to_a, D: (24..26).to_a, E: (27..29).to_a, F: (30..32).to_a, G: (33..35).to_a, H: (36..38).to_a, I: (39..42).to_a, J: (43..45).to_a, K: (46..49).to_a, L: (50..53).to_a, M: (54..57).to_a, N: (58..62).to_a, O: (63..66).to_a, P: (67..71).to_a, Q: (72..76).to_a, R: (77..82).to_a, S: (83..88).to_a, T: (89..94).to_a, U: (95..101).to_a, V: (102..108).to_a, W: (109..116).to_a, X: (117..125).to_a, Y: (126..134).to_a, Z: (135..147).to_a},
      depth14: {A: (1..8).to_a, B: (9..15).to_a, C: (16..19).to_a, D: (20..22).to_a, E: (23..24).to_a, F: (25..27).to_a, G: (28..29).to_a, H: (30..32).to_a, I: (33..35).to_a, J: (36..37).to_a, K: (38..40).to_a, L: (41..43).to_a, M: (44..47).to_a, N: (48..50).to_a, O: (51..53).to_a, P: (54..57).to_a, Q: (58..61).to_a, R: (62..64).to_a, S: (65..68).to_a, T: (69..73).to_a, U: (74..77).to_a, V: (78..82).to_a, W: (83..87).to_a, X: (88..92).to_a, Y: (92..98).to_a},
      depth16: {A: (1..7).to_a, B: (8..13).to_a, C: (14..17).to_a, D: (18..19).to_a, E: (20..21).to_a, F: (22..23).to_a, G: (24..25).to_a, H: (26..27).to_a, I: (28..29).to_a, J: (30..32).to_a, K: (33..34).to_a, L: (35..37).to_a, M: (38..39).to_a, N: (40..42).to_a, O: (43..45).to_a, P: (46..48).to_a, Q: (49..50).to_a, R: (51..53).to_a, S: (54..56).to_a, T: (57..60).to_a, U: (61..63).to_a, V: (64..67).to_a, W: (68..70).to_a, X: (71..72).to_a},
      depth18: {A: (1..6).to_a, B: (7..11).to_a, C: [15], D: [16], E: (17..18).to_a, F: (19..20).to_a, G: (21..22).to_a, H: (23..24).to_a, I: (25..26).to_a, J: (27..28).to_a, K: (29..30).to_a, L: (31..32).to_a, M: (33..34).to_a, N: (35..36).to_a, O: (37..39).to_a, P: (40..41).to_a, Q: (42..43).to_a, R: (44..46).to_a, S: (47..48).to_a, T: (49..51).to_a, U: (52..53).to_a, V: (54..55).to_a, W: [56]}
    }
  end
  def determine_group(depth, minutes)
    @pressure_group.each { |key,value|
      if key.to_s == "depth#{depth}"
        value.each { |key,value|
          if value.include?(minutes)
            return key.to_s
          end
        }
      end
    }
  end
end