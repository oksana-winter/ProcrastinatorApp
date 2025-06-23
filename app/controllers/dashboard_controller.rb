class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @tasks = current_user.tasks.order("RANDOM()") # хаотичный порядок задач
    @meme = Meme.order("RANDOM()").first          # случайный мем
  end
end