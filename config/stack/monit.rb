package :monit, :provides => :monitor do 
  description "Monit Systems Management"

  apt %w( monit )
  push_text File.read(File.join(File.dirname(__FILE__), 'monit', 'monitrc')), "/etc/monit/monitrc", :sudo => true
  push_text File.read(File.join(File.dirname(__FILE__), 'monit', 'monit_startup')), "/etc/default/monit", :sudo => true
  

  verify do
    has_file "/etc/init.d/monit"
  end
  
  requires :sendmail
end
 
package :sendmail do
  description "Sendmail"
  apt %w( sendmail )
  verify do
    has_executable "sendmail"
  end
end
