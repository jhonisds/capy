describe 'First script', :hello do
    
    it 'visit web page' do
        
        visit '/'
        
        expect(page.title).to eql 'Training Wheels Protocol'

    end


end