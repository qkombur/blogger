class TagsController < ApplicationController

    before_action :require_login, only: [:destory]
    def index
        @tags = Tag.all
    end

    def show
        @tag = Tag.find(params[:id])
    end

    def destroy
        @tag = Tag.find(params[:id])
        @tag.destroy

        flash.notice = "tag '#{@tag.name}' terminated."
        redirect_to tags_path
    end
end
