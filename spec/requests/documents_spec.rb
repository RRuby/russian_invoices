require 'spec_helper'

describe "Document pages" do
  render_views

  describe "Home page" do
    get ''
    it('get 200') { expect(response.status).to eq(200) }
  end

end
