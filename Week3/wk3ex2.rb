filename = ARGV[0] || 'word.txt'

File.open(filename, 'r+') do |f1|
  f1.each_line do |line|
    line = f1.gets
      if line.include? 'word'
        location = IO::SEEK_CUR
        puts location














































































































































































































































































	



`















 




 

 



























































































































































        puts "Line #{f1.lineno}, position #{location} of the text file contains the word 'word'.\n"

        f1.puts line.gsub!('word','inserted word')
      end
    end
  end






=begin
  while line = f1.gets
#   puts f1.lineno
    if line.include? 'word'  
#     puts "Line #{f1.lineno} of the text file contains the word 'word'.\n"
      f1.puts line.gsub!('word','inserted word') 
    end  
  end
end











if line.include? word
line = f1.readline
      f1.puts line[line_index].sub!('word', 'inserted word')

=end