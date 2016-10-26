require 'strava/api/v3/common'

module Strava::Api::V3
  module Challenge
    include Common

    # Fetch information about a specific segment
    #
    # See {http://strava.github.io/api/partner/v3/challenges/} for full details
    #
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return challenge json (see http://strava.github.io/api/partner/v3/challenges/)
    def retrieve_a_challenge(id, args = {}, options = {}, &block)
      # Fetches the challenge for given id.
      api_call("challenges/#{id}", args, 'get', options, &block)
    end

    # Join specified challenge
    #
    # See {http://strava.github.io/api/partner/v3/challenges/} for full details
    #
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return challenge json (see http://strava.github.io/api/partner/v3/challenges/)
    def join(id, args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call("challenges/#{id}/athletes", args, 'post', options, &block)
    end

    # Leave specified challenge
    #
    # See {http://strava.github.io/api/partner/v3/challenges/} for full details
    #
    # @param args any additional arguments
    # @param options (see #get_object)
    # @param block post processing code block
    #
    # @return challenge json (see http://strava.github.io/api/partner/v3/challenges/)
    def leave(id, args = {}, options = {}, &block)
      # Fetches the connections for given object.
      api_call("challenges/#{id}/athletes", args, 'delete', options, &block)
    end

  end
end
