json.extract! course_progress, :id, :user_id, :course_id, :progress, :created_at, :updated_at
json.url course_progress_url(course_progress, format: :json)
