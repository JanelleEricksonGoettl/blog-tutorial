class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  
  def show
    @article = Article.find(params[:id])
  end
  
  def new
    @article = Article.new
  end

  def create
    @aritcle = Article.new(article_params) #(params[:article])

    if @article.save
      redirect_to @article
    else
      # render allows the @article object to pass back to the new template when it's rendered, within the same request as the form submission
      render 'new'
    end
  end

  private
    def article_params
      params.require(:article).permit(:title, :text)
    end

end
