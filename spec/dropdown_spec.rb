describe 'Dropdown', :dropdown do
    
    it 'select item' do
        visit '/dropdown'

        select('Loki', from: 'dropdown')
        sleep 2
    end

    it 'select by find' do
        visit '/dropdown'

        drop = find('.avenger-list')
        drop.find('option', text:'Scott Lang').select_option
        sleep 2
    end

    it 'select something', :sample do
        visit '/dropdown'

        drop = find('.avenger-list')
        drop.all('option').sample.select_option
        sleep 2
    end

end