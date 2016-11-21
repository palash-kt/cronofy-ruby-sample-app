class ServiceAccountUsersController < ServiceAccountBaseController
  def show
    @account_profiles = cronofy.list_calendars.group_by { |calendar| { profile_id: calendar.profile_id, profile_name: calendar.profile_name } }
  end
end