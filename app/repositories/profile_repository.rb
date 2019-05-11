class ProfileRepository < ROM::Repository::Root
  root :profiles

  commands :create, update: :by_pk, delete: :by_pk

  struct_namespace RomRailsDemo

  def by_id(id)
    root.by_pk(id).one
  end

  def all
    root.to_a
  end
end
