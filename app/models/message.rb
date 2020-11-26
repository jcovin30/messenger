class Message < ApplicationRecord
    
    def  no_id
       {"message" => message , "digest" => digest}
    end

    def  only_message
        {"message" => message }
     end
 

end
