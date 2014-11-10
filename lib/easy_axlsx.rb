require 'easy_axlsx/version'

module EasyAxlsx
  require 'axlsx'

  autoload 'Building', 'easy_axlsx/building'
  autoload 'Builder', 'easy_axlsx/builder'
  autoload 'ClassConfig', 'easy_axlsx/class_config'

  # @api public
  # @return [EasyAxlsx::Building]
  def self.build(objects)
    Builder.build(objects)
  end
end
