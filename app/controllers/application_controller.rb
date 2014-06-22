class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  # def current_assignment
  #   @current_assignment ||= Assignment.find(session[:assignment_id]) if session[:assignment_id]
  # end

  helper_method :current_user, :teacher?, :student?


  def teacher?
    User.find(session[:user_id]).teacher_id == 1
  end

  def student?
    !teacher?
  end

  def verify_teacher
    if student?
      redirect_to assignment_path, notice: "You must be a teacher to edit assignments"
    end
  end

  def require_login
    if !session[:user_id]
      redirect_to root_path, notice: "Please sign up or login"
    end
  end
end
