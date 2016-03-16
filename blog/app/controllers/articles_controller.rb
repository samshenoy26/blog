class ArticlesController < ApplicationController

def index 
	@articles = Article.all
end

def show 
	@article  = Article.find(params[:id])
end

def new
	@article = Article.new
end

def edit 
	@article = Article.find(params[:id])
end

#To create new article

def create 
	@article = Article.new(article_params)
	
	if @article.save
	 redirect_to @article
	else 
	 render 'new'
	end

end 

#To update an article

def update
  @article = Article.find(params[:id])
 
  if @article.update(article_params)
    redirect_to @article
  else
    render 'edit'
  end
end

private
#This is used in the create and update method 
def article_params
 params.require(:article).permit(:title, :text)
end

end
