class HomeController < ApplicationController
  def index
    session = PagSeguro::Session.create

    if session.errors.any?
      raise session.errors.join("\n")
    else
      @session_id = session.id
    end
  end
end
