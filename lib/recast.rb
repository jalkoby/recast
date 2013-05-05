require "recast/version"
require 'active_support/all'

module Recast
  autoload :Model, 'recast/model'
end

ActiveSupport.on_load(:active_record) do
  include Recast::Model
end
