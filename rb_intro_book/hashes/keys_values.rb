cat = {name: "jake", weight: "10 lbs"}
cat.each_key { |k| puts k }
cat.each_value { |v| puts v }
cat.each { |k, v| puts "#{k} = #{v}" }