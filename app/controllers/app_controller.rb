class AppController < ApplicationController
	def index
		client = YouTubeIt::Client.new(:dev_key => "AI39si5Oce1nyi_aXOAFVoD8j0aztUkuH1ZmvTfCvme5h-TPbuJD-NexHVuRuBP2U-2mK144ruhuEEfCwT5cDATsfGBo6ufc0Q")
  	@cf = client.profile("codigofacilito")
  	@sus = client.playlists("codigofacilito")
  	@playlist = client.playlist(@sus[0].playlist_id)
	end
end
