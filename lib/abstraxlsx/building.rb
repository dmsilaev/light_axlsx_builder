module Abstraxlsx
  class Building
    attr_reader :rel_object_class, :package

    def initialize(params = {})
      @rel_object_class = params.fetch(:rel_object_class, nil)
      @package = params.fetch(:package, nil)
    end
  end
end
