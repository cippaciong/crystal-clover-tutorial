class AddBelongsToUserForFortune::V20240128232446 < Avram::Migrator::Migration::V1
  def migrate
    alter table_for(Fortune) do
      add_belongs_to user : User, on_delete: :cascade, fill_existing_with: :nothing
    end
  end

  def rollback
    alter table_for(Fortune) do
      remove_belongs_to :user
    end
  end
end
