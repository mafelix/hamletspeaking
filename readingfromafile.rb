require 'open-uri'
#read grabs all of the files content

# file = File.open("sample.txt", "r")
# contents = file.read
# puts contents

# #every read operation begins where the last read operation ended. In the case where we've read the entire file(by not passing in a number), 
# #the second read call has nothing left to read. Hence this the file is puts only one time here
# #block convention read
# contents = File.open("sample.txt", "w") { |file| file.read  }
# puts contents


#readlines parses all the contents of the file line by line into an array. There's a default attribute for file.open 'r' if you don't enter a attribute value.
# File.open("sample.txt","r").readlines.each do |line|
#   puts line
# end

# #reads line from index 0 and soforth. act of opening the file(file handler). If you reach eof and call readline again you will get an error
# file = File.open("sample.txt","r")
# 5.times do puts file.readline end 

#readline is good for extracting something from each line.
# eof is a File.method "End of file". This code opens the files and while it's not end of the file it'll puts a single line until eof is true
# is not suitable for massive files since it loads the entire file at once into memory
# file = File.open("sample.txt","r")
# while !file.eof?
#   line = file.readline
#   puts line
# end

# url = "http://ruby.bastardsbook.com/files/fundamentals/hamlet.txt"
# puts open(url).readline


url = "http://ruby.bastardsbook.com/files/fundamentals/hamlet.txt"
local_file = "hamlet.txt"
File.open(local_file, "w") {|file| file.write(open(url).read)}

File.open(local_file, 'r') do 
  |file| file.readlines.each_with_index do 
  |line, index| puts line if index % 42  == 41 end
end
