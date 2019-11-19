class ImagsController < ApplicationController
    before_action :find_pic, only: [:show, :edit, :update, :destroy]
    
    def index
        @imags = Imag.all.order("created_at DESC")
    end

    def show 
    end

    def new
        @imag = current_user.imags.build
    end

    def create
        @imag = current_user.imags.build(imag_params)

        if @imag.save
            redirect_to @imag, notice: "Sua foto foi postada!"
        else
            render 'new'
        end
    end

    def edit
    end

    def update
        if @imag.update(imag_params)
            redirect_to @imag, notice: "Sua foto foi atualizada!"
        else
            render 'edit'
        end
    end

    def destroy
        @imag.delete
        redirect_to root_path
    end








    private

    def imag_params
        params.require(:imag).permit(:titulo, :descricao, :image)
    end

    def find_pic
        @imag = Imag.find(params[:id])
    end

end