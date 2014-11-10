module EasyAxlsx
  class Builder
    private_class_method :new

    # @api public
    # @return [EasyAxlsx::Building]
    def self.build(items)
      @row_items = items

      @class = items.first.class

      init_package
      init_workbook
      init_workbook_styles

      fill_package

      Building.new row_items: @row_items, package: @package
    end

    # Create @package variable
    # @return [Axlsx::Package]
    def self.init_package
      @package = Axlsx::Package.new
    end
    private_class_method :init_package

    # Add workbook to package. Create @workbook variable
    # @return [Axlsx::Workbook]
    def self.init_workbook
      @workbook = @package.workbook
    end
    private_class_method :init_workbook

    # Add styles to workbook
    # @return [Hash] styles
    def self.init_workbook_styles
      @workbook_styles ||= {
        wrap_text:   @workbook.styles.add_style(alignment: { horizontal: :left, vertical: :center, wrap_text: true })
      }
    end
    private_class_method :init_workbook_styles

    def self.init_worksheet
      @worksheet ||= @workbook.add_worksheet(name: "#{@class}") do |sheet|
        sheet.add_row @class.easy_axlsx_fields, style:  @workbook_styles.fetch(:wrap_text), height: 60
        sheet.column_widths(*@class.easy_axlsx_widths)
      end
    end
    private_class_method :init_worksheet

    # Наполняет @package данными
    def self.fill_package
      fill_workbook

      @package
    end
    private_class_method :fill_package

    # Наполняет @workbook данными
    def self.fill_workbook
      init_worksheet
      fill_worksheet

      @workbook
    end
    private_class_method :fill_workbook

    # Наполняет @worksheet данными
    def self.fill_worksheet
      order_items_rows_params = @row_items.map do |item|
        @class.easy_axlsx_fields.map { |method| item.send(method) }
      end

      order_items_rows_params.each do |row_params|
        @worksheet.add_row row_params
      end

      @worksheet
    end
    private_class_method :fill_worksheet
  end
end
