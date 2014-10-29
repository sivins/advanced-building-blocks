module Enumerable

	def my_each

		i=0
		while self[i]

			yield(self[i])
			i+=1

		end
		self
	end

	def my_each_with_index

		i=0
		while self[i]

			yield(self[i], i)
			i+=1

		end
		self
	end

	def my_select
		new_self = []
		
		 self.my_each do |j|

			if yield(j)
				new_self.push(j)
			end
			
		end
		new_self
	end

	def my_all?

		all = true

		self.my_each do |i|
			unless yield(i)

				all = false
				
			end
		end
		all
	end

	def my_any?

		any = false

		self.my_each do |i|
			if yield(i)

				any = true
				
			end
		end
		any
	end

	def my_none?

		none = true

		self.my_each do |i|
			if yield(i)

				none = false
				
			end
		end
		none
	end

	def my_count

		count=0
		self.my_each {|i| count += 1}
		count

	end

	def my_map

		mapped = self.clone
		i=0
		while self[i]

			mapped[i] = yield(self[i])
			i+=1

		end
		mapped
	end

	def my_inject(initial=nil)
		memo = initial

		for i in self
			
			unless memo
				memo = i
			end
			
			memo = yield(memo, i)

		end
		memo
	end
	
end