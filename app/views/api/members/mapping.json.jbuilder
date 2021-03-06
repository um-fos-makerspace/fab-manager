# frozen_string_literal: true

@members.each do |member|
  json.set! member.id, member&.profile&.full_name
end