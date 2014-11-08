require 'abstraxlsx/version'

module Abstraxlsx
  require 'axlsx'

  autoload 'Building', 'abstraxlsx/building'
  autoload 'Builder', 'abstraxlsx/builder'
  autoload 'ClassConfig', 'abstraxlsx/class_config'

  def self.build
    Builder.build
  end
end
