students =
  [
  "Laura Amaya Castano",
  "Mohammad Chughtai",
  "Stacey Stewart",
  "Brooklyne Finni",
  "Benjamin de Jesus",
  "khem Marriott",
  "Erin Fox",
  "Adam Roberts",
  "Barry Levy",
  "Danilo Marichal",
  "Artur Lan",
  "Nigel Gardner",
  "Maria Sylla",
  "Elizabeth Rodriguez",
  "Scott Kaplan",
  "Jessica Hirsch",
  "Chelsea Dowling",
  "Shannon Roberts",
  "Raymond Hendricks",
  "Ali Weinberg",
  "Luke Pate",
  "Kristyn Ginski",
  "Craig Dempsey"
  ]

  def break_into_groups(students, groupsize)
    students.shuffle!
    @sorted_groups = students.each_slice(groupsize).to_a
    @sorted_groups.each_with_index do |gr,i|
      if @sorted_groups[ i + 1]
        if @sorted_groups[i].length > @sorted_groups[ i + 1].length
          @sorted_groups[i + 1].each do |sg|
            @sorted_groups[rand(@sorted_groups.length)].push(sg)
            @sorted_groups[i + 1].delete(sg)
          end
        end
      else
        if @sorted_groups[i].length < @sorted_groups[i - 1].length
          @sorted_groups[i].each do |sg|
            @sorted_groups[rand(@sorted_groups.length)].push(sg)
            @sorted_groups[i].delete(sg)
          end
        end
      end
      if gr.length < 1
        @sorted_groups.delete(gr)
      end
    end
  end

  @sorted_groups = break_into_groups(students, 3)


  @sorted_groups.each_with_index do |gr, i|
    puts "Group #{i + 1}: #{gr}, length: #{gr.length}"
  end
