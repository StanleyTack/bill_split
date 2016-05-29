class PaymentsController < ApplicationController
  def index
    @payments = Payment.all
  end

  def show
    @payment = Payment.find(params[:id])
  end

  def new
    @payment = Payment.new
  end

  def create
    @payment = Payment.new
    @payment.payer_id = params[:payer_id]
    @payment.payee_id = params[:payee_id]
    @payment.currency = params[:currency]
    @payment.value = params[:value]

    if @payment.save
      redirect_to "/payments", :notice => "Payment created successfully."
    else
      render 'new'
    end
  end

  def edit
    @payment = Payment.find(params[:id])
  end

  def update
    @payment = Payment.find(params[:id])

    @payment.payer_id = params[:payer_id]
    @payment.payee_id = params[:payee_id]
    @payment.currency = params[:currency]
    @payment.value = params[:value]

    if @payment.save
      redirect_to "/payments", :notice => "Payment updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @payment = Payment.find(params[:id])

    @payment.destroy

    redirect_to "/payments", :notice => "Payment deleted."
  end
end
