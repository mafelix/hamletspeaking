require 'uri'
url = "http://ruby.bastardsbook.com/files/fundamentals/hamlet.txt"
localfile = "hamlet.txt"

File.open(localfile,'w'){|file| file.write(open(url).read}


hamletspeaking = false


File.open("hamlet.txt", 'r') do |file|
  file.readlines.each do |line|

    if hamletspeaking == true && (line.match(/^  [A-Z]/) || line.strip.empty?)
      hamletspeaking = false
    end

    hamletspeaking = true if line.match("Ham\.")

    puts line if hamletspeaking == true
  
    end
  end

datafile = File.open("sample.txt", "r")
lines = datafile.readlines
datafile.close
lines.each do |line| puts line end



DIRNAME = "/vagrant/rubywork/"

Dir.glob("#{DIRNAME}/**/*.*").sort_by{|filename| File.size(filename)}.reverse[0..9].each do |filename|
  puts "#{filename}\t#{File.size(filename)}"
end

hash = Dir.glob("#{DIRNAME}/**/*.*").inject({}) do |hash, fname|
  ext = File.basename(fname).split('.')[-1].to_s.downcase
  hash[ext] ||= [0,0]
  hash[ext][0] += 1
  hash[ext][1] += File.size(fname)
  hash
end 

File.open('file-analysis.txt', "w") do |f| 
  hash.each do |arr|
    txt = arr.flatten.join("\t")
    f.puts txt
    puts txt
  end
end


