class PagesController < ApplicationController
  def index
  end
  def download_cv
    send_file "#{Rails.root}/app/assets/CVRASB.pdf", type: "application/pdf", x_sendfile: true
  end
end
