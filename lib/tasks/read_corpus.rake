desc "Input sentences from specified file into Sentence model"
task :read_corpus => :environment do
  puts "Reading file..."

  testing = true
  testing = false

  myfile = "lib/assets/eng_news_2015_10-sentences.txt"
  myfile = "lib/assets/eng_news_2015_10K-sentences.txt"

  File.open(myfile, "r").each_line do |line|
    puts 'OLD: ' + line
    #puts line.gsub(/^[0-9]{1,4} /, '')

    line = line.strip.gsub(/^[0-9]{1,4}\s/, '')
    puts 'NEW: ' + line

    if !testing
      s = Sentence.new
      s.body = line
      s.save
    end

  end

  puts "Done :=-)"
end
