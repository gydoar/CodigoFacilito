class VideoController < ApplicationController
	layout "video"
	def index
		redirect_to root_path
	end	
	def show
		client = YouTubeIt::Client.new(:dev_key => "AI39si5Oce1nyi_aXOAFVoD8j0aztUkuH1ZmvTfCvme5h-TPbuJD-NexHVuRuBP2U-2mK144ruhuEEfCwT5cDATsfGBo6ufc0Q")
		begin
			@languages = ["ruby","javascript","java","python","html","css","c","php"]
			@video = client.video_by(params[:id])
			if @video.nil?
				redirect_to root_path
			else
				@titulo = @video.title
			end	
		rescue Exception => e
			redirect_to root_path	
		end
		
		@sus = client.playlists("codigofacilito")
		@sus.each do |playlist|
			if playlist.playlist_id == "PLAB8000C00E2814CB"
				next
			end
			pl = client.playlist(playlist.playlist_id)
			pl.videos.each do |video|
				if video.unique_id == params[:id] && playlist
					@current_playlist = pl
				end
			end
		end
	end
end
