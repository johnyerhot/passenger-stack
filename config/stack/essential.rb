package :build_essential do
  description 'Build tools'
  apt 'build-essential' do
    pre :install, 'apt-get update'
  end
end

package :wget do
  description 'grabs stuff'
  apt 'wget' do
    pre :install, 'apt-get update'
  end
end
