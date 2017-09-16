def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant_hash|
    return contestant_hash["name"].split(" ").first if contestant_hash["status"] == "Winner"
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestant_array|
    contestant_array.each do |contestant_hash|
      return contestant_hash["name"] if contestant_hash["occupation"] == occupation
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, contestant_array|
    contestant_array.each do |contestant_hash|
      count += 1 if contestant_hash["hometown"] == hometown
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season, contestant_array|
    contestant_array.each do |contestant_hash|
      return contestant_hash["occupation"] if contestant_hash["hometown"] == hometown
    end
  end
end

def get_average_age_for_season(data, season)
  ages = []
  data[season].each do |contestant_hash|
    ages << contestant_hash["age"].to_f
  end
  (ages.inject(:+) / ages.length).round
end
