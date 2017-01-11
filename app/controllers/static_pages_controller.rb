class StaticPagesController < ApplicationController
  def home

    # VERSION 1: plain search
=begin
    @search = Sentence.search {fulltext params[:search]}
    @total_records = Sentence.count
=end

    # VERSION 2: with highlighting
    # noticed that highlighting truncates search results, e.g. search for 'cnbc'
    @total_records = Sentence.count
    
    @search = Sentence.search do
      fulltext params[:search] do
        highlight :body
      end
    end


    # VERSION 3: with pagination  
=begin
    @total_records = Sentence.count
    @current_page = params[:page] ? params[:page] : 1

    @search = Sentence.search do
      fulltext params[:search]
      paginate :page => params[:page]
    end
=end

  end
end
