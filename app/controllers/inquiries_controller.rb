class InquiriesController < ApplicationController
  before_action :set_inquiry, only: [:show, :destroy]

  def index
    @inquiries =Inquiry.all
  end

  def show
  end

  def new
    @inquiry = Inquiry.new
  end

  def edit
  end

  def create
    @inquiry = Inquiry.new(inquiry_params)
  
    respond_to do |format|
      if @inquiry.save
        format.html { redirect_to @inquiry, notice: 'Inquiry was successfully created.' }
      else
        format.html { render action: 'new' }
      end 
    end
  end

  def update
  end

  def destroy
    @inquiry.destroy
    respond_to do |format|
      format.html { redirect_to inquiries_url }
    end

  end

  private
    def set_inquiry
      @inquiry = Inquiry.find(params[:id])
    end

    def inquiry_params
      params.require(:inquiry).permit(:email, :subject, :description, :first_name, :last_name)
    end

end

