class BeneficiariesController < ApplicationController
  def index
    @beneficiaries = Beneficiary.all
  end

  def show
    @beneficiary = Beneficiary.find(params[:id])
  end

  def new
    @beneficiary = Beneficiary.new
  end

  def create
    @beneficiary = Beneficiary.new
    @beneficiary.transaction_id = params[:transaction_id]
    @beneficiary.user_id = params[:user_id]

    if @beneficiary.save
      redirect_to "/beneficiaries", :notice => "Beneficiary created successfully."
    else
      render 'new'
    end
  end

  def edit
    @beneficiary = Beneficiary.find(params[:id])
  end

  def update
    @beneficiary = Beneficiary.find(params[:id])

    @beneficiary.transaction_id = params[:transaction_id]
    @beneficiary.user_id = params[:user_id]

    if @beneficiary.save
      redirect_to "/beneficiaries", :notice => "Beneficiary updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @beneficiary = Beneficiary.find(params[:id])

    @beneficiary.destroy

    redirect_to "/beneficiaries", :notice => "Beneficiary deleted."
  end
end
