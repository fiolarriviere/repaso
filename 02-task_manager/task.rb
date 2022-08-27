require 'sqlite3'
DB = SQLite3::Database.new('tasks.db')

class Task
  def initialize(atributes = {})
    @id = atributes[:id]
    @title = atributes[:title]
    @description = atributes[:description]
    @done = atributes[:done]
  end

  def self.find(id)
    DB.execute('SELECT * FROM tasks WHERE id = ?', id)
  end

  def self.all
    DB.execute('SELECT * FROM tasks')
  end

  def destroy(id)
    DB.execute('DELETE * FROM tasks WHERE id = ?', id)

    Task.destroy(1)

#los metodos de instancia no se pueden llamar si no está creada la instancia
#los métodos de clase se laman NombreClase.metodo

#En el crud los métodos son:

#find método de clase SELF.FIND
#all método de clase
#destroy => instancia



  private

  def saludar
    'saludar al comenzar'
  end

end
