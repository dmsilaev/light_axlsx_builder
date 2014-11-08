require 'easy_axlsx/version'
class Object
  def eigenclass
    class << self
      self
    end
  end
end

module EasyAxlsx
  require 'axlsx'

  autoload 'Building', 'easy_axlsx/building'
  autoload 'Builder', 'easy_axlsx/builder'
  autoload 'ClassConfig', 'easy_axlsx/class_config'

  def self.build
    Builder.build
  end
end
