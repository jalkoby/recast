require 'bundler'
Bundler.require

module ActiveRecord
  class Base
  end
end
ActiveSupport.run_load_hooks(:active_record, ActiveRecord::Base)
