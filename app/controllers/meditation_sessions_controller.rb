class MeditationSessionsController < ApplicationController
  before_action :authorized, only: [:create]
  
end
