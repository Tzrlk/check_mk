default['check_mk']['agent']['plugins'] = '/usr/lib/check_mk_agent/plugins'
default['check_mk']['agent']['local'] = '/usr/lib/check_mk_agent/local'
default['check_mk']['agent']['conf_dir'] = '/etc/check_mk'
default['check_mk']['agent']['mrpe'] = '/etc/check_mk/mrpe.cfg'
default['check_mk']['agent']['port'] = 6556

default['check_mk']['agent']['dir']['lib'] = '/usr/lib/check_mk_agent'
default['check_mk']['agent']['dir']['conf'] = '/etc/check_mk'

case platform
  when "debian", "ubuntu"
    default["check_mk"]["agent"]["package"]["url"] = "http://mathias-kettner.de/download/check-mk-agent_1.2.4p2-2_all.deb"
    default["check_mk"]["agent"]["package"]["checksum"] = "89ccc51dfc83c2328346e7a16a91fc5a1303e6c502b00080b755a46479861a68"
  when "centos", "redhat", "amazon", "scientific"
    default["check_mk"]["agent"]["package"]["url"] = "http://mathias-kettner.de/download/check_mk-agent-1.2.2p3-1.noarch.rpm"
    default["check_mk"]["agent"]["package"]["checksum"] = "6112d23c7282168945bfda930e7c27c00fa979d5f3f45f3225e14850f5e5f369"
end
