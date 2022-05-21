class CustomersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]
  before_action :set_custom_create, only: [:create]
  before_action :authenticate_admin, only: [:admin_index]

  def admin_index
    @customers = Customer.all
  end

  def index
    @customers = current_user.customers
  end

  def new
    if user_signed_in?
      @customer = current_user.customers.build
    else
      @customer = Customer.new
    end
  end

  def create
    if @customer.save
      redirect_to root_path, notice: 'Customer was successfully created.'
    else
      render :new
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def customer_params
    params.require(:customer).permit(:name, :email, :mobile_number, :store, :agreement)
  end

  def set_custom_create
    if user_signed_in?
      @customer = current_user.customers.build(customer_params)
    else
      @customer = Customer.new(customer_params)
    end
  end

  def authenticate_admin
    if user_signed_in? && current_user.admin?
      return
    else
      redirect_to root_path, notice: "You must be an admin to perform this action."
    end
  end

end
