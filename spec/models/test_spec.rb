# frozen_string_literal: true

describe 'test describe' do
  it 'should test it' do
    PERMITTED_PARAMS = %i[notification_type sender external_event_id external_members_id external_assignment_id organisation_name external_id].freeze
    PERMITTED_OBJECTS = [{ sender: %i[email name sender_id] }, { external_members_id: [] }].freeze
    params = ActionController::Parameters.new(external_id: 1, notification_type: 'event_unassigned', sender: nil, external_event_id: 2, external_members_id: [1, 5], external_assignment_id: nil)
    pp = params.permit(PERMITTED_PARAMS+PERMITTED_OBJECTS)
    a = 1 + 2
  end
end
