class EmployeesController < ApplicationController 


  before_action :set_employee, only: [:edit, :update, :show, :destory]



  def index
      @employees = Employee.all 
   end

 def new
    @employee = Employee.new

 end
  def edit 

  end

  def destroy
    if @employee.destroy
      redirect_to employees_path, notice: "Employee has been deleted"
    end
  end
  

  def update 
    if @employee.update(employee_params)
      redirect_to employees_path, notice: "Employee has been updated!"
  else
      render :edit
    end

  end
   
  def show 
   


  end
   

    def create
    @employee= Employee.new(employee_params)
    if @employee.save
        redirect_to employees_path, notice: "Employee has been created!"
    else
        render :new
      end
    end

  private 
   def employee_params 
    params.require(:employee).permit(:first_name, :last_name,:personal_email, :city, :state, :country , :pincode, :address_line_1, :address_line_2
    )
   end 

   def set_employee
      @employee= Employee.find(params[:id])
      rescue ActiveRecord::RecordNotFound => error
        redirect_to employees_path, notice:error

   end

end



