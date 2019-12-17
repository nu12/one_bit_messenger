class ContactsController < ApplicationController
  def index
    @contacts = current_user.contacts
  end

  def new
  end

  def create
  end

  def destroy
  end
end
