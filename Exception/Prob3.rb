begin
  print "Enter the file :- "
  file = gets.chomp
  file_content = File.read(file)
rescue Errno::ENOENT
  puts "ERROR :- File not found"
rescue Errno::EACCESS
  puts "ERROR :- Permission denied"
rescue StandardError => e
  puts "ERROR :- #{e.message}"
else
  puts "File Content :- #{file_content}"
  puts "File read successfully!"
end
