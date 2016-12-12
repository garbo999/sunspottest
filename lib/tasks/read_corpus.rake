desc "Input sentences from specified file into Sentence model"
task :read_corpus => :environment do
  puts "Reading file..."

  myfile = "lib/assets/eng_news_2005_10K-sentences.txt"
  File.open(myfile, "r").each_line do |line|
    # name: "Angela"    job: "Writer"    ...
    #data = line.split(/\t/)
    #name, job = data.map{|d| d.split(": ")[1] }.flatten
    puts line
    s = Sentence.new
    s.body = line.strip
    s.save

  end

  puts "Done :=-)"
end
