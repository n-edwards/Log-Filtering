puts "Enter the name of the log file to search."
puts "Default is: editor.log"

user_file = gets.chomp
log_file = open(user_file)
puts "opening" + log_file.to_s

puts "Enter the text you want to search for"
puts "Suggestions: Lua Error, Cry3DEngine, Crytek"

search_text = gets.chomp

filtered_log = File.new("f_log.txt", "w") # could open f_log.txt instead, and add (w+?) all subsequent searches to it

log_file.each do |line|
 if
   line.include? search_text
   puts line
   filtered_log.write(line)
 end
end
