class VideoController < ApplicationController
	def index
		
	end
	def show
		client = YouTubeIt::Client.new(:dev_key => "AI39si5Oce1nyi_aXOAFVoD8j0aztUkuH1ZmvTfCvme5h-TPbuJD-NexHVuRuBP2U-2mK144ruhuEEfCwT5cDATsfGBo6ufc0Q")
		@video = client.video_by(params[:id])
		@sus = client.playlists("codigofacilito")
		@sus.each do |playlist|
			pl = client.playlist(playlist.playlist_id)
			pl.videos.each do |video|
				if video.unique_id == params[:id]
					@current_playlist = pl
				end
			end
		end
	end
end
