class MembershipsController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    Membership.find_or_create_by(event: @event, user: current_user)
  
    redirect_back(fallback_location: root_path)
  end
  
  def destroy
    @event = Event.find(params[:event_id])
    @membership = @event.memberships.find(params[:id])
    @membership.destroy
  
    redirect_back(fallback_location: root_path)
  end
end
