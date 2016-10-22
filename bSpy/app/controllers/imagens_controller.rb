class ImagensController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  skip_before_filter :verify_authenticity_token

  def index
  	@images = Image.all
  end

  def salvar
  	p params
  	p params[:file].size
  	@imagem = Image.new
  	@imagem.name = params[:name]
  	@imagem.data = params[:file]
  	@imagem.file = params[:file]
  	@imagem.save
  end

  def show_image
  	@image = Image.find(params[:id])
  	p @image.data
  	send_data @image.file, :type => 'image/png', :disposition => 'inline'
  end

end