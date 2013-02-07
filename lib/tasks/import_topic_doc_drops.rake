desc "Import topic_doc_drops" 
  task :import_topic_doc_drops => :environment do	   
    j = 1
    File.open(Rails.root.join('private_data', 'seedfiles', 'topics_doc_prop'), "r").each do |line|
       #puts "Moving to next line..."
       if j != 1
        array = line.lstrip.split(/\t+/)
        #puts array
        puts array[1]
	doc_id = array[0]
        topic_weight_array = array.drop(2)
        i = 0
	#while i < topic_weight_array.size() do
        while i < 7 do
	  if (i%2 == 0) 
           topic_id = topic_weight_array[i]
	  elsif  (i%2==1)
	   weight = topic_weight_array[i]
           document_record = TopicsDocDrop.new(:document_id=>doc_id, :topic_id=>topic_id, :weight=>weight)
           puts topic_id, weight
	   document_record.save
          end
         i = i + 1
         #puts "created #{i} records into table"
        end
      end 
    j = j + 1
    end
end
