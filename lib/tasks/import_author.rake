desc "Import author" 
  task :import_author => :environment do	   
    File.open(Rails.root.join('private_data','seedfiles', 'auth_topic_prop.db'), "r").each do |line|
       	array = line.lstrip.split(/\t+/)
        auth_record = Auth.new(:auth=>array[0], :topic_id=>array[1], :weight=>array[2])
      	 auth_record.save    
     end
end
