module Abstraxlsx
  module ClassConfig
    module ClassMethods
      def abstraxlsx_config_name

      end
    end

    module InstanceMethods

    end

    def self.included(receiver)
      receiver.extend         ClassMethods
      receiver.send :include, InstanceMethods
    end
  end
end