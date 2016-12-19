class Sentence < ActiveRecord::Base
  searchable do
    #text :body
    text :body, :stored => true # The fields you wish to highlight must be stored
  end
end
