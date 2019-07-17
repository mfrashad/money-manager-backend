class StatisticController < ApplicationController
    def generate
        @statistic = Statistic.generate(params[:user_id])
        render json: @statistic
    end
  end