class PurchasesController < ApplicationController
    protect_from_forgery with: :null_session
        
    def myCart
    end
    
    def checkout
      @token = Braintree::ClientToken.generate
    end
    
    def completed
    end
end
