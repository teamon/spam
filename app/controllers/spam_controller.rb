class SpamController < ApplicationController
  def index
    SpamMailer.send_spam.deliver
  end
end
