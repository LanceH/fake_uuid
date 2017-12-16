File.open("data/w4.txt", "w") do |f4|
File.open("data/w8.txt", "w") do |f8|
File.open("data/w12.txt", "w") do |f12|
  File.readlines("/usr/share/dict/words").each do |line|
    f4.puts line if line =~ /^[a-z]{4}$/
    f8.puts line if line =~ /^[a-z]{8}$/
    f12.puts line if line =~ /^[a-z]{12}$/
  end
end
end
end