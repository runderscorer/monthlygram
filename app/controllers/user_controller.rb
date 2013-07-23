class UserController < ApplicationController
  	def index
  	end

  	def feed
  		client = Instagram.client(:access_token => session[:access_token])
		@user = client.user
		
		if params[:month] == "JAN"
			@photos = client.user_recent_media(max_timestamp:"1359676801")
		elsif params[:month] == "FEB"
			@photos = client.user_recent_media(min_timestamp:"1359676801", max_timestamp:"1362095999")
		elsif params[:month] == "MAR"
			@photos = client.user_recent_media(min_timestamp:"1362095999", max_timestamp:"1364774399")
		elsif params[:month] == "APR"
			@photos = client.user_recent_media(min_timestamp:"1364774399", max_timestamp:"1367366399")
		elsif params[:month] == "MAY"
			@photos = client.user_recent_media(min_timestamp:"1367366399", max_timestamp:"1370044799")
		elsif params[:month] == "JUN"
			@photos = client.user_recent_media(min_timestamp:"1370044799", max_timestamp:"1372636799")
		elsif params[:month] == "JUL"
			@photos = client.user_recent_media(min_timestamp:"1372636799", max_timestamp:"1375315199")
		elsif params[:month] == "AUG"
			@photos = client.user_recent_media(min_timestamp:"1375315199", max_timestamp:"1377993599")
		elsif params[:month] == "SEP"
			@photos = client.user_recent_media(min_timestamp:"1377993599", max_timestamp:"1380585599")
		elsif params[:month] == "OCT"
			@photos = client.user_recent_media(min_timestamp:"1380585599", max_timestamp:"1383263999")
		elsif params[:month] == "NOV"
			@photos = client.user_recent_media(min_timestamp:"1383263999", max_timestamp:"1385855999")
		elsif params[:month] == "DEC"
			@photos = client.user_recent_media(min_timestamp:"1385855999", max_timestamp:"1388534399")
		else
			@photos = client.user_recent_media
		end

	end

	def adios
	end
end
