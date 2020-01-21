describe 'File Upload', :upload do
    
    before(:each) do
        visit '/upload'
        
        @file = Dir.pwd + '/spec/files/file.txt'
        @image = Dir.pwd + '/spec/files/image.png'
   
    end

    it 'upload file' do
        attach_file('file-upload', @file)
        click_button 'Upload'

        div_arquivo = find('#uploaded-file')
        expect(div_arquivo.text).to eql 'file.txt'
    end

    it 'upload image' do
        attach_file('file-upload', @image)
        click_button 'Upload'

        img = find('#new-image')
        expect(img[:src]).to include '/uploads/image.png'
    end

    after(:each) do
        sleep 2
    end

end