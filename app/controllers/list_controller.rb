class ListController < ApplicationController
def index
  @articles=Article.all

  end
def create
@article = Article.find_by(list_params) 

end
private
  def list_params
    params.require(:list).permit(:Articleno)
  end

end
