class Object
  def self.const_missing(const)
    require Frame.snake_case(const.to_s)
    Object.const_get(const)
  end
end