class SearchesController < ApplicationController

# ==== ONLY FOR ADVANCED SEARCH OPTION=====
def new
  @search = Search.new
  @origins = Artist.uniq.pluck(:origin)

end

def create
  @search = Search.create(search_params)
  redirect_to @search
end

def show
  @search = Search.find(params[:id])
end


private

def search_params
  params.require(:search).permit(:keywords, :origin, :min_year, :max_year)
end

end
