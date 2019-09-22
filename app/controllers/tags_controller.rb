class TagsController < ApplicationController
    def show
        @tag = Tag.find_by(name: params[:id])
        @companies  = @tag.companies.paginate(page: params[:page], per_page: 3)
    end
end