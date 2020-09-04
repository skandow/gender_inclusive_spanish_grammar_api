class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :email, :preferred_pronouns, :id
end
