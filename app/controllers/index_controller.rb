class IndexController < ApplicationController
    before_action :detect_devise_variant
    
    def index
    end
    
    private
        def detect_devise_variant
            devise = request.user_agent
            if(devise.include?('Mobile') || devise.include?('Android'))
                request.variant = :mobile
            end

            # case request.user_agent
            # when /iPad/
            #     request.variant = :mobile
            # when /iPhone/
            #     request.variant = :mobile
            # when /Android/
            #     request.variant = :mobile
            # end
        end
end
