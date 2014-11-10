module EasyAxlsx
  class Building
    attr_reader :package, :row_items

    # @api public
    # @param params [Hash] Набор параметров
    # @return [EasyAxlsx::Building]
    def initialize(params = {})
      @package = params.fetch(:package, nil)
      @row_items = params.fetch(:row_items, [])
    end
  end
end
