class AcmeChallengesController < ApplicationController
  def show
    acme_challenges = JSON.parse(ENV['ACME_CHALLENGES'])

    render plain: acme_challenges[params[:passcode]]
  end
end
