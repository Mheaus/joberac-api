class Resolvers::CreateAnnounce < GraphQL::Function
  # arguments passed as "args"
  argument :address, !types.String
  argument :description, !types.String
  argument :title, !types.String
  argument :userId, !types.String

  # return type from the mutation
  type Types::AnnounceType

  # the mutation method
  # _obj - is parent object, which in this case is nil
  # args - are the arguments passed
  # _ctx - is the GraphQL context (which would be discussed later)
  def call(_obj, args, _ctx)
    Announce.create!(
      address: args[:address],
      description: args[:description],
      title: args[:title],
      user_id: args[:userId],
    )
  end
end
