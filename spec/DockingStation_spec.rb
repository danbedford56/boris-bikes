require 'DockingStation'

RSpec.describe DockingStation do
    it { should respond_to(:release_bike) }
    it { should respond_to(:dock) }

    subject {DockingStation.new}

    describe 'release_bike' do
        it 'Returns a new working bike' do
            subject.dock(Bike.new)
            expect(subject.release_bike.working?).to eq true
        end

        it 'Raises an error if there are no bikes' do
            expect{subject.release_bike}.to raise_error("There is no bikes left")
        end
    end

    describe 'dock' do
        it 'Raises an error if the dock is taken' do
            subject.dock(Bike.new)
            expect{subject.dock(Bike.new)}.to raise_error("This dock is taken")
        end
    end
end