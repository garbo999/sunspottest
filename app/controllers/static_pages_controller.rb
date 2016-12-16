class StaticPagesController < ApplicationController
  def home
    #@s = Sentence.search {fulltext 'pizza'}
    @s = Sentence.search {fulltext params[:search]}
    @s = @s.results
  end
end
