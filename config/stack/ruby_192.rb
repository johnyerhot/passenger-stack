package :ruby_192 do
  description "Ruby 1.9.2"
  version '1.9.0-p0'
  RUBY_PATH = "/usr/local"
  download_uri = "http://ftp.ruby-lang.org//pub/ruby/1.9/ruby-1.9.2-p0.tar.gz"

  binaries = %w(erb irb ruby rake gem)
  
  source download_uri

  verify do
    binaries.each do |binary|
      has_executable "#{RUBY_PATH}/bin/#{binary}"
    end
  end

  requires :ruby_dependencies
end

package :ruby_dependencies do
  apt %w(libssl-dev libreadline5-dev zlib1g-dev libc6-dev libssl-dev)
  requires :build_essential
  requires :wget
end

