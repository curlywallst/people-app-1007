class User < ApplicationRecord
    validates :username, :email, presence: true
    validates :username, uniqueness: true
    validates :username, length: { minimum: 4 }

    has_many :children
    # accepts_nested_attributes_for :children

    def children_attributes=children_hash
        children_hash.values.each do |child_hash|
            if !child_hash[:name].empty?
                self.children.build(child_hash)
            end
        end
    end
end
