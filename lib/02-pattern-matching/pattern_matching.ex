IO.puts "Hola mundo"
list = [1,2,3,4,5]

IO.puts hd list

[a | b] = mylist = [1,2,3]

IO.inspect(mylist,label: "=>")
IO.inspect(a,label: "=>")
IO.inspect(b,label: "=>")

personas = [%{firstname: "Carlos", lastname: "Perez"},
                         %{firstname: "Pepito", lastname: "Perez"},
                         %{firstname: "Juan", lastname: "Perez"}
           ]
first = hd personas           
IO.inspect(personas)           
IO.inspect(first.firstname, label: "------>")
