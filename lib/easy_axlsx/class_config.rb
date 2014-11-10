require 'pry'
module EasyAxlsx
  module ClassConfig
    class EasyAxlsxNoMethodError < NoMethodError; end

    module ClassMethods
      def as_easy_axlsx_fields(*args)
        args.each { |arg| easy_axlsx_check_instance_method(arg) }

        @easy_axlsx_fields = args
      end

      def as_easy_axlsx_field(arg)
        easy_axlsx_check_instance_method(arg)

        @easy_axlsx_fields = easy_axlsx_fields << arg
      end

      # @return [Array] method names, use for generate axlsx rows
      # @api private
      def easy_axlsx_fields
        Array(@easy_axlsx_fields)
      end

      def as_easy_axlsx_widths(*args)
        @easy_axlsx_widths = args.map { |arg| Float(arg) }
      end

      # @return [Array] widths axlsx columns
      # @api private
      def easy_axlsx_widths
        Array(@easy_axlsx_widths)
      end

      private

      # check presence method
      def easy_axlsx_check_instance_method(method_name)
        return fail(NoMethodError, "#{method_name}", "#{self}") unless instance_methods.include?(method_name)
      end
    end

    def self.included(receiver)
      receiver.extend         ClassMethods
    end
  end
end

# receiver.send :include, InstanceMethods
# module InstanceMethods
# end
