require 'active_record/relation'

##
# Extensions to Active Record
class ActiveRecord::Relation

  # @return [Array<Hash>]
  def costs
    model.connection.explain_costs arel, bound_attributes
  end

  def verbose_costs
    model.connection.explain_analyze_costs arel, bound_attributes
  end

end
