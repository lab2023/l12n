require_dependency 'l12n/application_controller'

module L12n
  class DistrictsController < ApplicationController
    def index
      city_id = params[:city_id]
      districts = District.select('id, name').where('city_id = ?', city_id)
      render json: districts, status: 200, callback: params[:callback]
    end
  end
end
