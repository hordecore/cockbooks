remote_file "/root/epel-release.rpm" do
  source "http://mirror.logol.ru/epel/6/i386/epel-release-6-8.noarch.rpm"
end

package '/root/epel-release.rpm'
package 'nginx'
package 'python-pip'
package 'gcc'
package 'gcc-c++'
package 'python-flask'
package 'python-jinja2'
package 'strace'

service "nginx" do
  supports :status => true, :restart => true, :reload => true
  action [ :enable, :restart ]
end
