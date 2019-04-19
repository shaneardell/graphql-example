module Types
  class QueryType < Types::BaseObject
    graphql_name 'Query'
    description 'The query root of this schema'

    field :users, [Types::UserType], null: false, description: 'A list of users'

    def users
      User.all
    end
  end
end
