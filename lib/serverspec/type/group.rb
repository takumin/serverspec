module Serverspec::Type
  class Group < Base
    def exists?
      @runner.check_group_exists(@name)
    end

    def system_group?
      @runner.check_group_is_system_group(@name)
    end

    def has_gid?(gid)
      @runner.check_group_has_gid(@name, gid)
    end
  end
end
