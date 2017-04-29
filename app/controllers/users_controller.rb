class UsersController < Devise::RegistrationsController
  def create
    super do
      new_profile = Profile.new(user_id: resource.id)
      new_profile.photo = "user_gqomus"
      new_profile.save
    end
  end

end
