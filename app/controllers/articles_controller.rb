class ArticlesController < ApplicationController
before_action :authenticate_user!, except: [:index]

#before_action :authenticate_user!, except:  [:landing, :home]
	
	def index
		@articles = Article.all
	end

	def new
		@article = Article.new

	end

	def create
		@article = Article.new(article_params)
		@article.save
		redirect_to articles_path(@article)
		
	end

	def show
		@article = Article.all
	end

	private
		def article_params
			params.require(:article).permit(:title, :description)
		end
end