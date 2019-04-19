class Resolvers::Users < Resolvers::Base
  type [Types::UserType], null: false

  def resolve
    User.all
  end
end

