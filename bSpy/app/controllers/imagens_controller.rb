class ImagensController < ApplicationController
  require 'base64'
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
    @imagem.data_de_criacao = DateTime.now
  	@imagem.file = Base64.decode64(params[:file])
    @imagem.local = params[:local]
    @imagem.cameraid = params[:cameraid]
  	@imagem.save
  end

  def show_image
  	@image = Image.find(params[:id])
  	p @image.data
  	send_data @image.file, :type => 'image/png', :disposition => 'inline'
  end

  def mostrar
    @image = Image.find(params[:id])
  end

  def pesquisarData
    @data = params[:image][:data_de_criacao]
    @ano,@mes,@dia = @data.split("/",3)
    # @images = Image.where("to_date(data_de_criacao,'DD/MM/YY') =  ?",@data)
    @images = Image.where("date_part('year',data_de_criacao) = ? and date_part('month',data_de_criacao) = ? and date_part('day',data_de_criacao) = ?",@ano,@mes,@dia)
  end

  def pesquisarLocal
    @local = params[:image][:local]
    @images = Image.where("local = ?",@local)
  end

  def pesquisarCamera
    @camera = params[:image][:cameraid]
    puts @camera
    @images = Image.where("cameraid = ?",@camera)
  end

end