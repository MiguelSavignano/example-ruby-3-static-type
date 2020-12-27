class Author
  def initialize(name)
    @name = name
  end

  def with_name(&block)
    yield @name
  end
end

# Author.new("name").with_name do |name|
#   puts name
# end
