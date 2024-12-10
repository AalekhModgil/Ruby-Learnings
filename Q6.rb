names = gets.split
inputName = gets.chomp

catch(:name_found) do
  names.each.with_index do |name ,index|
    if name == inputName
      puts "Name found at position #{index+1}. Stop Processing!"
      throw(:name_found)
    end
  end
end






