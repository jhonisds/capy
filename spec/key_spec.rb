describe 'Key', :key do
    
    before(:each) do
        visit '/key_presses'
    end

    it 'Key presses' do

        keys = %i[tab escape enter shift control alt]

        keys.each do |k|
            find('#campo-id').send_keys k
            expect(page).to have_content 'You entered: ' + k.to_s.upcase
            sleep 1.5
        end

    end

    it 'Key letter' do

        letters = %w[a s d f g h j k l]

        letters.each do |l|
            find('#campo-id').send_keys l
            expect(page).to have_content 'You entered: ' + l.to_s.upcase
            sleep 1.5
        end

    end


    after(:each) do
        sleep 0.5
    end


end