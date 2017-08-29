class ContactsController < ApplicationController

def index
  @contacts = Contact.all
end

def show
  @contact = Contact.find(params[:id])
end



def create
 render text: "Received POST request to '/contacts' with the data URL: #{params}"
end

def new
  @contact = Contact.new
end

def create
  @contact = Contact.new

  @contact.first_name = params[:contact][:first_name]
  @contact.last_name = params[:contact][:last_name]
  @contact.url = params[:contact][:url]

  if @contact.save
    redirect_to "/contacts"
  else
    render :new
  end
end

def edit
  @contact = Contact.find(params[:id])
end

def update
  @contact = Contact.find(params[:id])

  @contact.first_name = params[:contact][:first_name]
  @contact.last_name = params[:contact][:last_name]
  @contact.url = params[:contact][:url]

  if @contact.save
    redirect_to "/contacts/#{@contact.id}"
  else
    render :edit
  end
end

def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    redirect_to "/contacts"
  end
end
