require_dependency "test_engine/application_controller"

module TestEngine
  class LinkController < ApplicationController
    def duration
      if params[:session_id] != ""
        session = Session.find(params[:session_id])
        session.duration = Duration.find(params[:duration_id])
        session.save
      else
        duration = Duration.find(params[:duration_id])
        duration.session = nil
        duration.save
      end
      render nothing: true, status: 200, content_type: "text/html"
    end

    def program_module
      session = Session.find(params[:session_id])
      session.program_module_id = params[:program_module_id]
      session.save

      render nothing: true, status: 200, content_type: "text/html"
    end

    def order
      learning_journey = LearningJourney.find(params[:learning_journey_id])
      order = Hash[params[:order].map.with_index.to_a]
      learning_journey.sessions.each do |session|
        session.update_attributes(ordinal: order["#{session.id}"] + 1)
      end
      render nothing: true, status: 200, content_type: "text/html"
    end
  end
end