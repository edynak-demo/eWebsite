class PagesController < ApplicationController
  def home
    @posts = Tutorial.all
    @skills = Skill.all
  end

  def about
  end

  def news
  end

  def services
  end

  def contact
  end

  def store
  end
end
