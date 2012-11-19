class CursosController < ApplicationController
	def index
		redirect_to root_path
	end	
	def show
		client = YouTubeIt::Client.new(:dev_key => "AI39si5Oce1nyi_aXOAFVoD8j0aztUkuH1ZmvTfCvme5h-TPbuJD-NexHVuRuBP2U-2mK144ruhuEEfCwT5cDATsfGBo6ufc0Q")		
		begin
			@playlist = client.playlist(params[:id])
			if @playlist.nil?
				redirect_to root_path
			else
				@titulo = @playlist.title
				@total_v = 0
				@dur = 0
				@likes = 0
				@com = 0
				@playlist.videos.each do |video|
					@total_v += video.view_count
					@dur += video.duration
					@likes += video.rating.likes
					@com += video.comment_count
				end
			end
		rescue Exception => e
			redirect_to root_path
		end
		
		@sus = client.playlists("codigofacilito")
	end

end
