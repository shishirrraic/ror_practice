class NonScaffoldSkillsController < ApplicationController
  # index page
  def index
    @nsskills = NonScaffoldSkill.all
  end

  def show
    @nsskill = NonScaffoldSkill.find(params[:id])
  end

  def new
    @nsskill = NonScaffoldSkill.new
  end

  def create
    @nsskill = NonScaffoldSkill.new(non_scaffold_skill_params)

    if @nsskill.save
      redirect_to @nsskill
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def non_scaffold_skill_params
    params.require(:name).permit(:name,:experience)
  end
end
