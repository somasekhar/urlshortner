class GenerateUrlsController < ApplicationController

  def index

  end

  def generate_short_url
    @long_url = params[:long_url]
    flash[:error]  = "Please Paste Your Long Url" if @long_url.blank?
    @short_url = Googl.shorten(@long_url) if !@long_url.blank?
  end

  def errors
    flash[:error]  = "This is not the page you are looking for..!!!"
  end
end
