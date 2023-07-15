class Employee < ApplicationRecord
 
    validates :first_name, :last_name, presence: true
    validates :personal_email , presence: true, uniqueness: true 
    validates :city, :state, :country , :pincode, :address_line_1, presence: true

#This is the methodology of validate
    # validates :
# , presence: true, uniqueness: { case_sensitive: false }, length: {maximum: 50}, format: { with: ConstantData::VALID_EMAIL_REGEX }, if: :method_name?

employee= Employee.create(
first_name: "Ahsan  ",
last_name: "Ali",
personal_email: "ahsan@gmail.com",
city: "Johar town ",
state: "Lahore ",
country: "Pakistan ",
pincode: "4533 ",
address_line_1: "C2 phase ",
address_line_2: "main street "

)



end
