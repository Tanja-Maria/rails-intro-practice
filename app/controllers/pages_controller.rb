class PagesController < ApplicationController

  def home
    @members = ["claire", "toni", "regina"]
    search = params[:member]
    @members = @members.select do |member|
      member == search
    end
  end

  def about
  end

  def contact

  end
end
