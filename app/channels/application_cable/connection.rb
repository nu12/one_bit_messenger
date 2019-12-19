module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :logged_user # this is an instance variable for the connection

    def connect
      self.logged_user = find_verified_user
    end

    protected

    def find_verified_user
      if verified_user = env['warden'].user
        verified_user
      else
        reject_unauthorized_connection
      end
    end

  end
end
