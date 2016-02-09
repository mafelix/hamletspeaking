filetobeopen = File.open("sample.txt", "a")
filetobeopen.puts "Hello world! This is an append instead of write"
filetobeopen.close


#can be written in block convention one liner, doing so omits filetobeopen.close as it closes itself
#File.open can be used to open local files
#Open can be used to open files on the internet or webpages
File.open("sample.txt", "a") { |filetobeopen| filetobeopen.puts "Hello file again! This is written with block convention" }