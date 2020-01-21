describe 'Hover', :hover do
    
    before(:each) do
        visit '/hovers'
    end

    it 'card one' do
        card = find('img[alt=Blade]')
        card.hover

        expect(page).to have_content 'Nome: Blade'

    end

    it 'card two' do
        card = find('img[alt="Pantera Negra"]')
        card.hover

        expect(page).to have_content 'Nome: Pantera Negra'
    end

    it 'card three' do
        card = find('img[alt="Homem Aranha"]')
        card.hover

        expect(page).to have_content 'Nome: Homem Aranha'
    end


    after(:each) do
        sleep 1
    end

    #find('img[alt^=Pantera]') Start with Pantera
    #find('img[alt$=Aranha]') Ended with Aranha
    #find('img[alt*=Aranha]') Content Aranha


end