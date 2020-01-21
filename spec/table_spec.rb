describe 'Tables', :table, :smoke do
    
    before(:each) do
        visit '/tables'
    end


    it 'show salary' do
        actors = all('table tbody tr')
        stark = actors.detect {|actor| actor.text.include?('Robert Downey Jr')}

        expect(stark.text).to include '10.000.000'
    end

    it 'get list item key' do
        vin = find('table tbody tr', text: '@vindiesel')
        expect(vin).to have_content '10.000.000'
    end

    
    it 'get movie item' do
        vin = find('table tbody tr', text: '@vindiesel')
        movie = vin.all('td')[2].text

        expect(movie).to eql 'Fast and Furious'
    end

        
    it 'get instagram' do
        evans = find('table tbody tr', text: 'Chris Evans')
        insta = evans.all('td')[4].text

        expect(insta).to eql '@teamcevans'
    end

    it 'remove item' do
        prat = find('table tbody tr', text: 'Chris Pratt')
        prat.find('a', text: 'delete').click

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'Chris Pratt foi selecionado para remoção!'
    end

    it 'edit item' do
        prat = find('table tbody tr', text: 'Chris Pratt')
        prat.find('a', text: 'edit').click

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'Chris Pratt foi selecionado para edição!'
    end

    after(:each) do
        sleep 0.5
    end


end