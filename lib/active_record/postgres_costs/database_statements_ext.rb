# frozen_string_literal: true

require 'active_record/connection_adapters/postgresql_adapter'
require 'json'

module ActiveRecord::ConnectionAdapters::PostgreSQL::DatabaseStatements

  # @return [Array<Hash>]
  def explain_costs arel, binds = []
    sql = "EXPLAIN (FORMAT JSON, COSTS) #{to_sql(arel, binds)}"
    result = exec_query(sql, 'EXPLAIN', binds)
    document = JSON.parse result.rows.first.first
    document.map { |plan| plan['Plan'] }
  end

end
