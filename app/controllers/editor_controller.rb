class EditorController < ApplicationController

http_basic_authenticate_with name: "editor", password: "secret", except: [ :show]
def index 
 @articles = Article.all
end
 
def new
end
def create
@article = Article.find_by(no_params)
 @article.update_attribute(:Status, status_params["Status"])
  @article.save
  redirect_to @article
end

private
  def no_params
    params.require(:updt).permit(:Articleno)
  end
   def status_params
    params.require(:updt).permit(:Status)
  end

end
