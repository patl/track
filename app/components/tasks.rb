class Tasks < Netzke::Basepack::Grid
  def configure(c)
  c.scope = {done: [nil, false]}
    super
    c.model = "Task"
 c.columns = [
      :done,
      :name,
      :bug,
      {name: :notes,flex: 1},
      :priority,
      {name: :due, header: "Due on"}
    ]
    
  end
end
