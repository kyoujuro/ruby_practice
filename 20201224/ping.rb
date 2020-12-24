module Ping
  NETWORKS = ["127.0.0.1"].freeze
end

def ping_unreachble(networks = Ping::NETWORKS)
  networks.delete_if do |net|
    !ping(net + ".1")
  end
end
