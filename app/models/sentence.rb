class Sentence < ActiveRecord::Base
  searchable do
    text :body
  end
end
