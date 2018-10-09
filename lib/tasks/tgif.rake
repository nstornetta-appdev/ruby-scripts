desc "Check if today is Friday"
require 'time'
task :tgif do
    dt = Date.today()
    if dt.wday == 5
        ap("Yay, it's Friday!")
    else
        ap("Nope, not yet :/")
    end
end

