module BonsaisHelper

  def bonsai_author(bonsai)
    user_signed_in? && current_user.id == bonsai.user_id
  end

end
