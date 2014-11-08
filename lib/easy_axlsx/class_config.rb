module EasyAxlsx
  module ClassConfig
    class EasyAxlsxNoMethodError < NoMethodError; end

    module ClassMethods
      def as_easy_axlsx_fields(*args)
        args.each do |arg|
          return fail(NoMethodError, "#{arg}", "#{self}") unless instance_methods.include?(arg)
        end

        @easy_axlsx_fields = args
      end

      def easy_axlsx_fields
        Array(@easy_axlsx_fields)
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
