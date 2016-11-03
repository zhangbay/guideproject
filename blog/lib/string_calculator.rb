class StringCalculator
	def self.add(input)
    if input.empty?
    	0
    else
    	numbers = input.split(",").map { |num| num.to_i }
      	numbers.inject(0) { |sum, number| sum + number }
    end
  end
end

guard :rspec, cmd: 'rspec' do
	watch('spec/spec_helper.rb') do 
		{"spec/controller/#{m[1]}_spec.rb"}
	end
	watch('config/routes.rb') {"spec/routing"}

end