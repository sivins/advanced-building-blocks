def bubble_sort things
	#numbers is an array to be sorted using the bubble sort algorithm
	unsorted = true
	while unsorted
		unsorted = false
		
		for i in (0..things.size-2) do
			
			if things[i] > things[i+1]

				things.insert(i, things[i+1])
				things.delete_at(i+2)
				unsorted = true
				puts "unsorted is true"
				puts things
			end
		end
	end
	things
end

result = bubble_sort([4,3,78,2,0,2])
puts result