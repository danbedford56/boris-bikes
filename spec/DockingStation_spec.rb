require 'DockingStation'

RSpec.describe DockingStation do
    it { should respond_to(:release_bike) }
    it { should respond_to(:dock) }

    subject {DockingStation.new}

    describe 'release_bike' do
        it 'Returns a new working bike' do
            expect(subject.release_bike.working?).to eq true
        end
    end
end