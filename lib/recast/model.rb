module Recast::Model
  def become(roles, *args, &block)
    role = Array(roles).map(&:to_s).join('/')
    begin
      klass = self.class.class_eval(Recast::Utils.camelize(role))
    rescue NameError
      raise Recast::Errors::RoleNotFound, "Undefined role #{ role } for #{ self }"
    end
    klass.new(self, *args, &block)
  end
end
