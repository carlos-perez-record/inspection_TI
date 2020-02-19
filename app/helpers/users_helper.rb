module UsersHelper
  def form_titleuser
    @user.new_record? ? "Crear Usuario" : "Modificar Usuario"
  end
end
