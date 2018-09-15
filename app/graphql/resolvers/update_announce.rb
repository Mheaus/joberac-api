class Resolvers::UpdateAnnounce < GraphQL::Function
  argument :id, !types.ID
  argument :address, types.String
  argument :description, types.String
  argument :title, types.String

  type Types::AnnounceType

  def call(_obj, args, _ctx)
    announce = Announce.find_by(id: args.id.to_i)

    announce.update!(
      address: args[:address],
      description: args[:description],
      title: args[:title],
    )

    return announce
  end
end
