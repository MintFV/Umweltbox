# Temperature LED Control
import json

var threshold = 25.0
var last_state = nil

def check_temp()
    var sensor_str = tasmota.read_sensors()
    var s = json.load(sensor_str)

    if s.contains("AM2301")
        var am2301 = s["AM2301"]
        if am2301.contains("Temperature")
            var temp = am2301["Temperature"]
            var new_state = (temp >= threshold)

            if new_state != last_state
                if new_state
                    tasmota.cmd("Power1 1")
                    print("Temp: " + str(temp) + "C - LED ON")
                else
                    tasmota.cmd("Power1 0")
                    print("Temp: " + str(temp) + "C - LED OFF")
                end
                last_state = new_state
            end
        end
    end
end
tasmota.add_cron("*/5 * * * * *", check_temp, "temp_monitor")
print("Temperature monitoring started (threshold: 25C)")
