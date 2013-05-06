module ActiveRecord
  class Base
  end
end

module ActiveSupport
  def self.on_load(kind, &block)
    case kind
    when :active_record
      ActiveRecord::Base.instance_eval(&block)
    else
      raise 'Please update ActiveSupport.on_load stub'
    end
  end
end
