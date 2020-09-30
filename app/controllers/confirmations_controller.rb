class ConfirmationsController < Devise::ConfirmationsController
  def send_on_create_confirmation_instructions
    self.confirm
  end

  def after_confirmations_path_for(resource_name, resource)
    signed_in(resource)
    cocktails_path
  end
end
