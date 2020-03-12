class FocusSessionsController < ApplicationController
  before_action :authorized, only: [:create]

end
