require './lib/app'

describe '#caesar_cipher' do
    it 'retruns a string with each character advanced by a number' do
        expect(caesar_cipher("What", 5)).to eql("Bmfy")
    end

    it 'works with white_spaces' do
        expect(caesar_cipher("What a string", 5)).to eql('Bmfy f xywnsl')
    end

    it 'works with punctuation' do
        expect(caesar_cipher("What a string!", 5)).to eql('Bmfy f xywnsl!')
    end

    it 'works with numbers' do
        expect(caesar_cipher('342', 2)).to eql('564')
    end
end