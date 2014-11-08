module EasyAxlsx
  class Building
    attr_reader :rel_object_class, :package

    # @api public
    # @param params [Hash] Набор параметров
    # @return [EasyAxlsx::Building]
    def initialize(params = {})
      @rel_object_class = params.fetch(:rel_object_class, nil)
      @package = params.fetch(:package, nil)
    end
  end
end
