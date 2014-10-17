require "ruboty/robot"
require "ruboty/silent/version"
require "ruboty/handlers/silent"

module Ruboty
  module Silent
    def say(*args)
      return unless garrulous?
      super
    end

    def garrulous?
      @garrulous
    end

    def shut_up!
      @garrulous = false
    end

    def talk!
      @garrulous = true
    end
  end
end
