require "animatedgifme/version"
require "httparty"

module Animatedgifme
	include HTTParty
	base_uri "animatedgif.me"

	def self.find(id)
		get("/gifs/#{id}.json")
	end

	def self.tagged(tag)
	end

	def self.random(tag)
	end
end

Animatedgifme.find(768)
# Animatedgifme.tagged("cat")
# Animatedgifme.random("cat")
