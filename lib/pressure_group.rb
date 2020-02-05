require "pressure_group_table"

class Pressure_group
  include Tables
  def determine_group(depth, minutes)
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
end