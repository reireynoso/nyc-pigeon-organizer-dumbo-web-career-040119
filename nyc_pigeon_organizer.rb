def nyc_pigeon_organizer(data)
  # write your code here!
  #puts data
  pigeon_list = {}
  
  data.each do |category,more_data|
    if category == :gender
      more_data.each do |sex,names|
        names.each do |name|
          pigeon_list[name] = {}
        end
      end
    end
  end
  
  pigeon_list.each do |name,hash|
    data.each do |category,more_data|
      hash[category] = []
    end
  end
  
  pigeon_list.each do |name,hash|
    hash.each do |categ,array|
      data.each do |category,more_data|
        if category == categ
          puts name
        end
      end
    end
  end
  #puts pigeon_list
end