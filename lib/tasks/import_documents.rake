desc "Import Documents" 
  task :import_documents=> :environment do	   
   j = 1 
   File.open(Rails.root.join('private_data', 'seedfiles', 'topics_doc_prop'), "r").each do |line|
       #puts "Moving to next line..."
       if j != 1
         array = line.lstrip.split(/\t+/)
       	 #puts array
         index = array[0]
         file_path = array[1]
	 file_path =  file_path.sub("file:", "")
	 split_path = file_path.split(/\//)
	 auth =  split_path[split_path.length - 2]
	 puts auth
	 puts file_path

	 document_record = Document.new(:index => index, :file_path => file_path, :auth => auth)  
         document_record.save
      end
      j = j + 1
    end
end
