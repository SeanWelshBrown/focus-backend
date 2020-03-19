class UsersController < ApplicationController
  before_action :authorized, only: [:persist]

  
  def create 
    @user = User.create(user_params)
    if @user.valid?
      @user.update(time_meditated: 0, time_focused: 0)
      token = encode_token({user_id: @user.id})
      render json: { user: UserSerializer.new(@user), token: token }, status: 201
    else
      render json: { error: "Registration failed, please try again" }, status: 401
    end
  end

  def update
    @user = User.find_by(id: params[:id])
    if params[:meditation_duration]
      new_time = @user.time_meditated + params[:meditation_duration]
      @user.update(time_meditated: new_time)
    end
  end

  def index
    @users = User.all
    render json: @users
  end

  
  # AUTH #
  def persist
    token = encode_token({user_id: @user.id})
    render json: { user: UserSerializer.new(@user), token: token}
  end
  
  def login
    @user = User.find_by(username: params[:username])

    if @user && @user.authenticate(params[:password])
      token = encode_token({user_id: @user.id})
      render json: { user: UserSerializer.new(@user), token: token }
    else
      render json: { error: "Login failed, please try again" }, status: 401
    end
  end
  # END AUTH #

  private

  def user_params
    params.permit(:username, :password, :profile_pic)
  end

end
