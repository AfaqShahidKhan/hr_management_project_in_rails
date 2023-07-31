class DocumentsController < ApplicationController

before_action :set_document, only: [:edit, :update, :show, :destroy]


 def index
    @documents = Document.all

 end

def new
    @document=Document.new
end

def edit
end
def show

end


def update 
    if @document.update(document_params)
      redirect_to documents_path, notice: "Document has been updated!"
  else
      render :edit
    end

  end

def create
    @document = Document.new(document_params)
    if @document.save
      redirect_to documents_path, notice: "Document successfully created"
    else
      flash[:error] = "Something went wrong"
      render :new
    end
end

def destroy
    if @document.destroy
      redirect_to documents_path, notice: "Document has been deleted"
    end
  end



private 
def document_params 
  params.require(:document).permit(:name, :doc_type, :employee_id, :image)
end 


   def set_document
      @document= Document.find(params[:id])
      rescue ActiveRecord::RecordNotFound => error
        redirect_to documents_path, notice:error
      end


end