class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    Contact.create(contact_params)
    redirect_to new_contact_path
  end

  private
    def contact_params
      params.require(:contact).permit(:name, :email, :content)
    end
end
