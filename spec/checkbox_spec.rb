describe 'Checkbox', :checkbox do
    
    before(:each) do
        visit '/checkboxes'
    end

    it 'check item' do
        check('thor')
    end

    it 'uncheck item' do
        uncheck('antman')
    end

    it 'check by find set true' do
        find('input[value=cap]').set(true)
    end

    it 'uncheck by find set false' do
        find('input[value=guardians]').set(false)
    end

    after(:each) do
        sleep 2
    end

end