json.extract! course, :id, :name, :introduction, :course_id, :group_id, :created_at, :updated_at
json.url course_url(course, format: :json)
