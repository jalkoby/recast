class User
  include Recast::Model

  class Writer < Struct.new(:person)
  end
end

class Writer < Struct.new(:person)
end

class Singer < Struct.new(:person, :alias)
end

module Microsoft
  module Web
    class Developer < Struct.new(:person)
    end
  end
end
