module VisitsHelper
  def form_title
    @visit.new_record? ? "Registrar Visita" : "Modificar Visita"
  end
end
