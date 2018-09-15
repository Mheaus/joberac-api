Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :createAnnounce, function: Resolvers::CreateAnnounce.new
  field :deleteAnnounce, function: Resolvers::DeleteAnnounce.new
  field :updateAnnounce, function: Resolvers::UpdateAnnounce.new
end
