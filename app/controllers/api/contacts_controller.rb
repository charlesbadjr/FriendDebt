class Api::ContactsController < ApplicationController

    def index
       render json: Contact.all
    end

    def create
        contact = Contact.create(contact_params)
        render json: contact
    end

    def delete
    
    end

    private

    def contact_params
        params.require(:contact).permit(:)
end
