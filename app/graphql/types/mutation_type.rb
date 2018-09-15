Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :createAnnounce, function: Resolvers::CreateAnnounce.new
end
