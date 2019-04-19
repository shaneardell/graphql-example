class Schema < GraphQL::Schema
  query Types::QueryType
  mutation Types::MutationType

  rescue_from ActiveRecord::RecordNotFound, &:message
  rescue_from ActiveRecord::Rollback, &:message
  rescue_from StandardError, &:message
  rescue_from ActiveRecord::RecordNotUnique, &:message
end

