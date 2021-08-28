# == Schema Information
#
# Table name: pages
#
#  id           :uuid             not null, primary key
#  object       :string           default("page"), not null
#  parent       :json             not null
#  properties   :json
#  children     :json             is an Array
#  archived     :boolean          default(FALSE)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  workspace_id :uuid             not null
#
class Page < ApplicationRecord
  belongs_to :user,
    foreign_key: :author_id,
    class_name: :User

end
