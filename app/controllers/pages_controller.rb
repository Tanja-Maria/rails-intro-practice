class PagesController < ApplicationController

  def home

  end

  def about
  end

  def contact
    @members = ["claire", "toni", "regina"]

    search = params[:member]

    if search
      @members = @members.select do |member|
        #member.downcase == search.to_s.downcase
        member.start_with?(search.to_s.downcase)
      end
    end
  end
end
