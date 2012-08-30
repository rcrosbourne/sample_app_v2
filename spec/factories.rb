FactoryGirl.define do
	factory :user do
		name					"Jack Frost"
		email					"jackfrost@example.com"
		password 				"foobar"
		password_confirmation 	"foobar"
	end
end
