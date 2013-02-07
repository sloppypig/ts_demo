desc "Import topics" 
  task :import_topics => :environment do	   
    File.open(Rails.root.join('private_data', 'seedfiles', 'topics.mod'), "r").each do |line|
    j = 1
    puts
    puts "Moving to next line..."
    array = line.strip.split("\t")
    index = array[0]
    topic_record = Topic.new(:index => index)
    word_array = array[2].strip.split(" ")
      word_array.each do |i|
	tag = "word_" + j.to_s
        puts "#{tag} #{i}"
	topic_record.send(tag+'=', i)
        j = j + 1
      end
      topic_record.save
    end
end
