class ServiceWorkersController < ApplicationController
    protect_from_forgery except: :service_worker
    skip_before_action :authenticate_user!

    def manifest
        # View json
    end

    def service_worker
        # View js
    end

end
