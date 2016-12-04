class DashboardController < ApplicationController
  def index
    @user = current_user
    @perf_exps = PerfExp.all
    @covered_perf_exps = []
  end
end
