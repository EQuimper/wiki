class ArticlesController < ApplicationController
	def index
	end

	def new 
		@article = Article.new
	end

	def create
		@arcticle = Arcticle.new(article_params)
		if @arcticle.save
			redirect_to @article
		else
			render 'new'
		end
	end

	private

	def article_params
		params.require(:article).permit(:title, :content)
	end
end
