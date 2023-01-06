# frozen_string_literal: true

# BEGIN
def compare_versions(version1, version2)
  version1_major, version1_minor = version1.split('.').map(&:to_i)
  version2_major, version2_minor = version2.split('.').map(&:to_i)
  case version1_major <=> version2_major
  when 1 then 1;
  when 0 then version1_minor <=> version2_minor;
  when -1 then -1;
  end
end
puts compare_versions("3.2", "4.12")
# END
