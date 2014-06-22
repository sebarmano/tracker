module ApplicationHelper

  def teacher?
    User.find(session[:user_id]).teacher = 0
  end

  def student?
    !teacher?
  end

  def verify_teacher
    if student?
      redirect_to assignment_path, notice: "You must be a teacher to edit assignments"
    end
  end 

end
