class FocusSessionsController < ApplicationController
  before_action :authorized, only: [:create]

  def create 
    @focus_session = @user.focus_sessions.create(focus_session_params)
    if @focus_session.valid?
      render json: @focus_session
    else
      render json: {error: "Something went wrong, please try again"}
    end
  end

  def index 
    @focus_sessions = FocusSession.all 
    render json: @focus_sessions
  end

  def destroy 
    @focus_session = FocusSession.find_by(id: params[:id])
    @focus_session.destroy
  end

  private

  def focus_session_params
    params.permit(:start_time, :end_time, :work_chunks, :break_chunks, :duration, :focus_type, :notes)
  end
  
end
