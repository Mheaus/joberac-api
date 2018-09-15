import ApolloClient from 'apollo-boost'
import gql from 'graphql-tag'

const client = new ApolloClient({
  uri: 'http://localhost:3001/graphql',
})

const ANNOUNCES_ALL = gql`
  query GetAnnounces {
    announces {
      id
      address
      description
      excerpt
      title
    }
  }
`

const getAnnounces = () =>
  client
    .query({
      query: ANNOUNCES_ALL,
    })
    .catch(error => console.error(error))

export { ANNOUNCES_ALL, getAnnounces }
