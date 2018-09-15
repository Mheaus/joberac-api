# defines a new GraphQL type
Types::AnnounceType = GraphQL::ObjectType.define do
  # this type is named `Announce`
  name 'Announce'

  # it has the following fields
  field :id, !types.ID
  field :address, !types.String
  field :description, !types.String
  field :title, !types.String
  field :user, -> { Types::UserType }
end
