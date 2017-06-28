# urls: 
# - https://www.vagrantup.com/docs/vagrantfile/index.html
# - https://www.vagrantup.com/docs/docker/configuration.html

ENV['VAGRANT_DEFAULT_PROVIDER'] = 'docker'
 
Vagrant.configure("2") do |config|
  config.vm.define "vertxdev" do |a|
    a.vm.provider "docker" do |d|
      d.build_dir = "."
      d.build_args = ["-t=vertxdev"]
      d.ports = ["8081:8080"]
      d.name = "vertxdev"
      d.remains_running = true
      d.cmd = ["vertx", "run", "vertx-examples/src/raw/java/httphelloworld/HelloWorldServer.java"]
      d.volumes = ["/src/vertx/:/usr/local/src"]
    end
  end
end
