ascii = <<-ASCII
########   #   #   ####   ##   ## 
#       #  #   #   #   #   ## ##  
########   #   #   ####     ###   
#      #   #   #   #   #    ###   
#       #   ###    ####     ###   

ASCII
tmp = ascii*3
#puts tmp
#p tmp.count( "#" )
src = ARGF.read
str = "eval(%w{#{src.strip}}.join(\"\").gsub(\"\\x20\", \" \"))".each_char.to_a
s = tmp.gsub("#") {str.shift||"#"}
puts s
