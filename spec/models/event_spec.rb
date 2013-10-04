require 'spec_helper'

describe Event do
	it { should belong_to :host                   }
	it { should have_many :rsvps                  }

	it { should validate_presence_of :name        }
	it { should validate_presence_of :description }
	it { should validate_presence_of :date        }
	it { should validate_presence_of :location    }
	it { should validate_presence_of :host        }
end
