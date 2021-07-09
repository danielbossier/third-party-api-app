class TeamsController < ApplicationController
  def index
    response = HTTP.get("https://www.thesportsdb.com/api/v1/json/1/searchteams.php?t=#{params[:search]}")
    render json: response.parse(:json)
  end
end
