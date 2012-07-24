class UrlsController < ApplicationController
  def create
    puts params
    @url = Url.create(original_url: params[:url][:original_url], 
    short_url: SecureRandom.base64(8).gsub(/\W/, ''))
    
    flash[:message] = "your short URL is: #{url_url(@url)}"
    redirect_to root_path
  end

  def show
    @url = Url.find_by_short_url(params[:short_url])
    counter = @url.visited_counter + 1
    @url.update_attributes(:visited_counter => counter)
    redirect_to @url.original_url

  end
end
