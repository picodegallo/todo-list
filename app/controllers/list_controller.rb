class ListController < ApplicationController

	def index
	  @list = List.all
	end

	def show
		@list = List.find(params[:id])
	end

# GET /artists/new
	def new
		@list = List.new
	end

# GET /artists/1/edit
	def edit
		@list = List.find(params[:id])
	end

 # POST /artists
	def create
		@list = List.new(params[:list])
		@list.save
		redirect_to @list
	end

  # PUT /artists/1
	def update
		@list = List.find(params[:id])
	end

  # DELETE /artists/1
	def destroy
		@list = List.find(params[:id])
		@list.destroy
		redirect_to '/list'
	end


end