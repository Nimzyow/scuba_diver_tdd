require "pressure_group_table"

class Pressure_group
  include Tables
  def determine_first_pressure_group(depth:, minutes:)
    @initial_pressure_groups.each { |key,value|
      if key.to_s == "depth#{depth}"
        value.each { |key,value|
          if value.include?(minutes)
            return key.to_s
          end
        }
      end
    }
  end
  def determine_second_pressure_group(initial_pressure_group:, minutes:)
    @second_pressure_group.each { |key, value|
      if key.to_s == initial_pressure_group
        value.each {|key, value|
        if value.include?(minutes)
          return key.to_s
        end
        }
      end
    }
  end
end