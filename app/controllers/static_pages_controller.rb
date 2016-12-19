class StaticPagesController < ApplicationController
  def home
    # version 1: plain search
=begin
    @search = Sentence.search {fulltext params[:search]}
    @results = @search.results
    @total_records = Sentence.count
=end

    # version 2: with highlighting
    @search = Sentence.search do
      fulltext params[:search] do
        highlight :body
      end
    end
    @results = @search.results
    @total_records = Sentence.count
    
  end
end
