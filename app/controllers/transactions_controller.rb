class TransactionsController < ApplicationController
  def index
    @transactions = Transaction.all
  end

  def show
    @transaction = Transaction.find(params[:id])
  end

  def new
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.new
    @transaction.description = params[:description]
    @transaction.notes = params[:notes]
    @transaction.currency = params[:currency]
    @transaction.value = params[:value]
    @transaction.payer_id = params[:payer_id]
    @transaction.group_id = params[:group_id]

    if @transaction.save
      redirect_to "/transactions", :notice => "Transaction created successfully."
    else
      render 'new'
    end
  end

  def edit
    @transaction = Transaction.find(params[:id])
  end

  def update
    @transaction = Transaction.find(params[:id])

    @transaction.description = params[:description]
    @transaction.notes = params[:notes]
    @transaction.currency = params[:currency]
    @transaction.value = params[:value]
    @transaction.payer_id = params[:payer_id]
    @transaction.group_id = params[:group_id]

    if @transaction.save
      redirect_to "/transactions", :notice => "Transaction updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @transaction = Transaction.find(params[:id])

    @transaction.destroy

    redirect_to "/transactions", :notice => "Transaction deleted."
  end
end
