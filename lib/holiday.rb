require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  supply = nil
  
  holiday_hash.each do |key1, value1|
    if key1 == :summer
      value1.each do |key2, value2|
        if key2 == :fourth_of_july
          supply = value2[1]
        end
      end
    end
  end
  
  supply
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |key1, value1|
    if key1 == :winter
      value1.each do |key2, value2|
          value2 << supply
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |key1, value1|
    if key1 == :spring
      value1.each do |key2, value2|
        if key2 == :memorial_day
          value2 << supply
        end
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  supplies = []
  
  holiday_hash.each do |key1, value1|
    if key1 == :winter
        supplies << value1.values
    end
  end
  
  supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
  
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end







