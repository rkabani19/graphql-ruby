require 'test_helper'

class Resolvers::CreateLinkTest < ActiveSupport::TestCase
    def perform(args = {})
      Resolvers::CreateLink.new.call(nil, args, {})
    end

    test 'creating new link' do
        link = perform(
            url: 'google.com',
            description: 'Best search engine.'
        )

        assert link.persisted?
        assert_equal link.description, 'Best search engine.'
        assert_equal link.url, 'google.com'
    end
end