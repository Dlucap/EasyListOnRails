class HomeController < ApplicationController

    def index
        redirect_to rswag_ui_path
    end

end