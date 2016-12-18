class StaticPagesController < ApplicationController
  def home
    #@s = Sentence.search {fulltext 'pizza'}
    @search = Sentence.search {fulltext params[:search]}
    @results = @search.results
    @total_records = Sentence.count
  end
end
