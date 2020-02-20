class PagesController < ApplicationController
  def home
    @posts = Tutorial.all
  end

  def about
  end

  def contact
  end

  def news
  end

  def store
  end
end
