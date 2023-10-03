class NonScaffoldSkillsController < ApplicationController
  # index page
  def index
    @non_scaffold_skills = NonScaffoldSkill.all
  end

  def new
    @non_scaffold_skill = NonScaffoldSkill.new
  end


  def show
    @non_scaffold_skill = NonScaffoldSkill.find(params[:id])
  end


  def create
    @non_scaffold_skill = NonScaffoldSkill.new(non_scaffold_skill_params)
    puts @non_scaffold_skill

    if @non_scaffold_skill.save
      redirect_to @non_scaffold_skill
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def non_scaffold_skill_params
    params.require(:non_scaffold_skill).permit(:name,:experience)
  end
end
