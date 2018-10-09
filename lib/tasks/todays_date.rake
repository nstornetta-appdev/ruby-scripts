desc "Print today's date"
require 'time'
task :todays_date do
    dt = Date.today()
    wday_array = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat']
    ap(wday_array[dt.wday] + ", #{dt}")
end
