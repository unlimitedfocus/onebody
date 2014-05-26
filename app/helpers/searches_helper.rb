module SearchesHelper

  def show_birthdays?
    return false unless params[:birthday]
    params[:birthday][:month].present? ||
    params[:birthday][:day].present?
  end

  def show_testimonies?
    params[:testimony].present?
  end

  def types_for_select
    t('search.form.types').invert.to_a +
    (Setting.get(:features, :custom_person_type) ? Person.custom_types : [])
  end

end
