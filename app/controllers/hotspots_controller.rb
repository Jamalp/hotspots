class HotspotsController < ApplicationController
  def index
    @venue = []
  end

  def search
    if params[:location]
      location = Geocoder.coordinates(params[:location]).join(',')
      client = Foursquare2::Client.new(:client_id => 'FLORXQIYM4IR2BQJQS52RRKJIDTIYE3PVGUXPAEOCRLPLTMF', :client_secret => '0E30B1EZG3RQK0UMKPIU05LNMSZOOAKVBR4QFOJFO1KAGEEG')
      @results = client.trending_venues(location)
      @venue = @results["venues"]
    end
  end
end

