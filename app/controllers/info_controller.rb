class InfoController < ApplicationController
  def index
  end

  def skills
    @skills = Skill.all
  end
end
