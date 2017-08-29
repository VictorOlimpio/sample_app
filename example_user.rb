class User
  attr_accessor :name, :email

  def initialize(atributes = {})
    @name = atributes[:name]
    @email = atributes[:email]
  end

  def formated_email
    "#{@name} <#{@email}>"
  end

end