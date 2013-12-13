default['yum']['epel']['repositoryid'] = 'epel'

case node['platform_version'].to_i
when 5
  default['yum']['epel']['description'] = 'Extra Packages for Enterprise Linux 5 - $basearch'
  default['yum']['epel']['mirrorlist'] = 'http://mirrors.fedoraproject.org/mirrorlist?repo=epel-5&arch=$basearch'
  default['yum']['epel']['gpgkey'] = 'http://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL'
when 6
  default['yum']['epel']['description'] = 'Extra Packages for Enterprise Linux 6 - $basearch'
  default['yum']['epel']['mirrorlist'] = 'http://mirrors.fedoraproject.org/mirrorlist?repo=epel-6&arch=$basearch'
  default['yum']['epel']['gpgkey'] = 'http://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-6'
end

default['yum']['epel']['failovermethod'] = 'priority'
default['yum']['epel']['enabled'] = true
default['yum']['epel']['gpgcheck'] = true
