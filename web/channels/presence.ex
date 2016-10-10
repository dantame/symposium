defmodule Symposium.Presence do
	use Phoenix.Presence, otp_app: :symposium, pubsub_server: Symposium.PubSub
end