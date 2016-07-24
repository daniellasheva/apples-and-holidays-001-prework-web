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
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
 
 holiday_hash[:winter][:christmas]<<supply
  holiday_hash[:winter][:new_years]<<supply
  
  #Alternate to try:
  #supplies = []
  
  #holiday_supplies.each do |key, value|
  #   value.each do |key2, value2|
  #       supplies << value2
  #   end
  #end
  
  #puts supplies.flatten.uniq
end
 

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day]<<supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season] = {holiday_name=> supply_array}
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
    # return an array of all of the supplies that are used in the winter season
    holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
    
    temp= []
    
    holiday_hash.each do |season, holiday|
        puts "#{season.to_s.capitalize}:"
    
        holiday_hash[season].each do |holiday, supply|
            temp = holiday.to_s.split("_")
            temp.collect! {|item| item.capitalize!}
            
            puts "  #{temp.join(" ")}: #{supply.join(", ")}"
        end
    end
        
        
        #puts "#{key}: #{value}.join"
        
        #puts key.to_s + ": " + value.join(" ")
        
        #holiday_hash.keys.to_s + holiday_hash.value
        # puts holiday_hash.key.to_s + ":" + holiday_hash.value.to_s
        #"#{key}": " #{value} ":" value.values"
        
        
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
end

def all_holidays_with_bbq(holiday_hash)
  
  holidayswithbbbq= []
  
  holiday_hash.each do |season, holiday|
      holiday_hash[season].each do |holiday, supply|
            holiday_hash[season][holiday].each do |supply|
                if supply == "BBQ"
                holidayswithbbbq << holiday
                end
            end
       end
end
  return holidayswithbbbq
  
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end







