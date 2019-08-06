class Api::ContactsController < ApplicationController
   before_action: 

    def index
       
        render json: @contacts.all
    end

    def new
      @contacts = Contact.new(contact_params)

    end

    def create
        @contacts = Contact.create(contact_params)
        if @contacts.save
        render json: @contacts
        else

        end
    end

    def delete
    
    end

    private

    def contact_params
        params.require(:contact).permit(:name, :description, :something, :beer)
end
