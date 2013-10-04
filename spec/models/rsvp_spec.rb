require 'spec_helper'

describe Rsvp do
	it { should belong_to :event            }

	it { should validate_presence_of :name  }
	it { should validate_presence_of :rolnr }
end
