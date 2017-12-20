class Task < ApplicationRecord
  belongs_to :user

  validates :content, presence: true

  def finish
    raise "Task was finished already! (#{content})" if is_finished?

    update_attributes(is_finished: true, finished_at: Time.now)
  end
end
