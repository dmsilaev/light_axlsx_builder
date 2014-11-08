require 'abstraxlsx/version'

module Abstraxlsx
  require 'axlsx'

  autoload 'Building', 'abstraxlsx/building'
  autoload 'Builder', 'abstraxlsx/builder'

  def self.build
    Builder.build
  end
end
