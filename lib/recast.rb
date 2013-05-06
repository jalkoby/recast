require "recast/version"

module Recast
  autoload :Model,  'recast/model'
  autoload :Errors, 'recast/errors'
  autoload :Utils,  'recast/utils'
end

if defined?(ActiveRecord)
  ActiveSupport.on_load(:active_record) do
    include Recast::Model
  end
end
