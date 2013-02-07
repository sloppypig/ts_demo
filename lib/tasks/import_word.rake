desc "Import word" 
  task :import_word => :environment do	   
    File.open(Rails.root.join('private_data', 'seedfiles', 'word_topic_counts.db'), "r").each do |line|
       	array = line.lstrip.split(/\t+/)
        word_record = Word.new(:word=>array[0], :topic_id=>array[1], :count=>array[2])
      	 word_record.save    
     end
end
