require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |x, y|
    y << supply
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring].each do |x, y|
    y << supply
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].collect do |x, y|
    y
  end.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |a, b|
    puts "#{a.capitalize}:"
    b.each do |c, d|
      puts "  #{c.to_s.split('_').map{|x| x.capitalize}.join(' ')}: #{d.join(', ')}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  holiday_hash.map do |a, b|
    b.map do |c, d|
      if d.include?("BBQ")
        c
      end
    end
  end.flatten.compact
end
