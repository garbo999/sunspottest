class StaticPagesController < ApplicationController
  def home
    # version 1: plain search
=begin
    @search = Sentence.search {fulltext params[:search]}
    @results = @search.results
    @total_records = Sentence.count
=end

    # version 2: with highlighting
=begin
    @search = Sentence.search do
      fulltext params[:search] do
        highlight :body
      end
    end
    @results = @search.results
    @total_records = Sentence.count
=end

    # version 3: with pagination  
    # just noticed that highlighting truncates search results, e.g. search for 'cnbc'
    @total_records = Sentence.count
    @current_page = params[:page] ? params[:page] : 1

    @search = Sentence.search do
      fulltext params[:search]
      paginate :page => params[:page]
    end

    #@previous_page = @search.results.previous_page
    #@next_page = @search.results.next_page

    #@results = @search.results

  end
end
