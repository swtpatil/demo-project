class ApplicationController < ActionController::Base
  before_action :print_display_message

  after_action :after_display_message



    private
    def print_display_message
      puts "I am before action."
    end
    def after_display_message
      puts "I am after action."
    end
end
