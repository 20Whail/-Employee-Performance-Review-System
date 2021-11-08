class SurveysController < ApplicationController

  def index
    @questions =Survey.all
  end

  def show



   user = User.find(params[:id])
   if current_user.role == "Manager"
     @manager_survey = Survey.where(user_id: user.id,submitted_by: current_user.email).last
   end
   @employee_survey = Survey.where(user_id: user.id,submitted_by: user.email).last
  end



  def edit
    user = User.find(params[:id])
    @survey = Survey.where(user_id: user.id,submitted_by: user.email).last
  end





  def new
    @question = Survey.new
  end

  def create
    @question =Survey.new(form_params)

    if @question.save
      redirect_to survey_path(params[:survey][:user_id]) , flash: { success: "Succesfully created the form"}
    else
      render 'new'
    end
  end


  def update
    user = User.find(params[:id])
    @survey = Survey.where(user_id: user.id,submitted_by: user.email).last
    if @survey.update(form_params)
      redirect_to (survey_path(id:user.id))
    else
      render 'edit'
    end
  end


  def form_params
    params.require(:survey).permit(:quality, :reliability, :job_knowledge,:attendence,:commitment,
                                   :creativity, :adherence_to_policy, :lead, :improvement_needed, :accomplishments, :recommendations,:submitted_by, :remarks, :user_id)
  end

end