describe 'Id Dynamic', :dynamic do
    
    before(:each) do
        visit '/access'
    end

    it 'cadastro ' do

        find('input[id$=UsernameInput]').set 'jhoni' #termina com $
        find('input[id^=PasswordInput]').set '123456' #começa com *
        find('a[id*=GetStartedButton]').click    #contém *
           
        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'

    end

    after(:each) do
        sleep 0.5
    end


end