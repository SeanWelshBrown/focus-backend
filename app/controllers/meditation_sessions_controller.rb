class MeditationSessionsController < ApplicationController
  before_action :authorized, only: [:create]

  def create 
    @meditation_session = @user.meditation_sessions.create(meditation_session_params)
    if @meditation_session.valid?
      render json: @meditation_session
    else
      render json: {error: "Something went wrong, please try again"}
    end
  end

  def index 
    @MeditationSessions = MeditationSession.all 
    render json: @MeditationSessions
  end


  private

  def meditation_session_params
    params.permit(:start_time, :end_time, :duration, :note)
  end
  
end
