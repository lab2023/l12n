require_dependency 'l12n/application_controller'

module L12n
  class CitiesController < ApplicationController
    def index
      render json: City.select('id, name'), status: 200, callback: params[:callback]
    end
  end
end
