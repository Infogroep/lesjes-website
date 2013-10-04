require 'spec_helper'

describe Host do
	it { should have_many :events                   }

	it { should validate_presence_of :username      }
	it { should validate_presence_of :password_hash }
	it { should validate_presence_of :password_salt }
	it { should validate_presence_of :name          }
end
