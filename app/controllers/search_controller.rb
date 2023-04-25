class SearchController < ApplicationController
  def index
    # @visit = Visit.find(params[:visit_id])
    @visit = Visit.find_by(id: params[:visit_id])
  end
end
