class PagesController < ApplicationController
  def home
    @posts = Tutorial.all
    @skills = Skill.all
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
