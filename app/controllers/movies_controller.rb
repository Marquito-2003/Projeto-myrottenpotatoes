class MoviesController < ApplicationController
  def index
    # A variável 'sort' é obtida do hash 'params'.
    # params[:sort] conterá 'title' ou 'release_date'.
    sort_by = params[:sort]

    # Prepara as variáveis para a classe CSS de destaque.
    # Por defeito, nenhuma coluna está destacada.
    @title_header_class = ''
    @release_date_header_class = ''

    if sort_by == 'title'
      # Ordena os filmes pelo título se o parâmetro for 'title'.
      @movies = Movie.order(:title)
      # Define a classe CSS para o cabeçalho do título.
      @title_header_class = 'hilite'
    elsif sort_by == 'release_date'
      # Ordena os filmes pela data de lançamento.
      @movies = Movie.order(:release_date)
      # Define a classe CSS para o cabeçalho da data de lançamento.
      @release_date_header_class = 'hilite'
    else
      # Se nenhum parâmetro de ordenação for fornecido, obtém todos os filmes na ordem padrão.
      @movies = Movie.all
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
    # default: render 'new' template
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      flash[:notice] = "#{@movie.title} was successfully created."
      redirect_to movies_path
    else
      render 'new' # exibe novamente o formulário de novo filme
    end
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
      flash[:notice] = "#{@movie.title} was successfully updated."
      redirect_to movie_path(@movie)
    else
      render 'edit' # exibe novamente o formulário de edição
    end
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    flash[:notice] = "Movie '#{@movie.title}' deleted."
    redirect_to movies_path
  end

  private
  # O método movie_params usa Strong Parameters para segurança.
  # Ele garante que apenas os campos permitidos sejam aceites do formulário.
  def movie_params
    params.require(:movie).permit(:title, :rating, :description, :release_date)
  end
end