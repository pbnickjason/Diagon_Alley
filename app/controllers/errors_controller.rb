class ErrorsController < ApplicationController
    
    def not_found
        render :file => "#{Rails.root}/public/404.html",  :status => 404
    end
    
    def reject
        render :file => "#{Rails.root}/public/422.html",  :status => 422
    end
    
    def unexpected
        render :file => "#{Rails.root}/public/500.html",  :status => 500
    end
end
