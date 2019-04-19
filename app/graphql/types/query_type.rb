module Types
  class QueryType < Types::BaseObject
    graphql_name 'Query'
    description 'The query root of this schema'

    # field :resource_name, resolver: Resolvers::ResourceName, null: true, description: 'Description goes here'
  end
end
