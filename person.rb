class Person
  def initialize(name, born)
    @name, @born = name, born
  end

  attr_reader :name

  def age
    (Time.now.strftime('%Y%m%d').to_i - @born.strftime('%Y%m%d').to_i) / 100_00
  rescue
    nil
  end

  def to_s
    _age = age
    if _age
      "#{@name}(#{_age})"
    else
      @name
    end
  end
end
