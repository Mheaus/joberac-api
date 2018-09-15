class Resolvers::CreateAnnounce < GraphQL::Function
  argument :address, !types.String
  argument :description, !types.String
  argument :title, !types.String
  argument :userId, !types.Int

  type Types::AnnounceType

  def call(_obj, args, _ctx)
    Announce.create!(
      address: args[:address],
      description: args[:description],
      title: args[:title],
      user_id: args[:userId],
    )
  end
end
