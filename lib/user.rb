

class User
attr_accessor :first_name, :last_name, :knowledge

@@all = []

     def initialize
          @first_name = first_name
          @last_name = last_name
          @knowledge = []
          self.class.all << self
     end
     def self.all
          @@all
     end
     def learn(learned)
          @knowledge << learned
     end
     def knowledge
          @knowledge
     end
     def all_knowledge
          list = []
          self.all.collect{|x|x.knowledge.each{|item|list << item}}.uniq
          list.uniq
     end
     # def teach
     #      all_knowledge[rand(0..all_knowledge.size-1)]
     # end

end