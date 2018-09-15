class Resolvers::DeleteAnnounce < GraphQL::Function
  argument :id, !types.ID

  type Types::AnnounceType

  def call(_obj, args, _ctx)
    announce = Announce.find_by(id: args.id.to_i)

    announce.delete

    return announce
  end
end
