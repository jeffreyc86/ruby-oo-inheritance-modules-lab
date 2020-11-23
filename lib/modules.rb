module Modules

    module ClassMethods

        def reset_all
            self.all.clear
        end

        def count
            self.all.count
        end

    end

    module InstanceMethods

        def initialize
            self.class.all << self
        end

        def self.find_by_name(name)
            @@all.detect{|a| a.name == name}
        end

        def to_param
            self.name.downcase.gsub(' ', '-')
        end

    end

end
