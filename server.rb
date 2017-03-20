module Sinatra
  class Server < Sinatra::Base
    get "/" do
      def break_into_groups (students, subgroups, maxsize)
        sorted_groups = []

        subgroups.times do
          sorted_groups.push([])
        end

        students.shuffle!

        sorted_groups.each do |subgroup|
          students.each do |student|
            # see if the student is already in this group and check to make sure group isn't full
            if subgroup.include?(student) == false && subgroup.length <= maxsize
              subgroup.push(student)
              students.delete(student)
            else
              next
            end
          end
        end
      end

      students = [
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

      @sorted_groups = break_into_groups(students, 13, 2)

      erb :index
    end
  end
end
