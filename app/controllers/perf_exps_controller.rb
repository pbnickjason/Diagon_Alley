class PerfExpsController < ApplicationController

    def new
        @PerfExp = PerfExp.new
    end
    
    def index
        @PerfExps = PerfExp.all
    end
    
    def create
        @PerfExp = PerfExp.new(params[:perf_exp])
        if @PerfExp.save
            redirect_to @PerfExp
        else
            render "new"
        end
    end
    
    private
    def perf_exp_params
        params.require(:perf_exp).permit(:name, :description, :grade_level => [], :standard_ids => [])
    end

end
