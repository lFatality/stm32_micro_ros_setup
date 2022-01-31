uint8 POWER_SUPPLY_STATUS_UNKNOWN = 0
uint8 POWER_SUPPLY_STATUS_CHARGING = 1
uint8 POWER_SUPPLY_STATUS_DISCHARGING = 2
uint8 POWER_SUPPLY_STATUS_NOT_CHARGING = 3
uint8 POWER_SUPPLY_STATUS_FULL = 4

# OR'able bits to communicate current safety state as determined by base sensors
uint16 SAFETY_STATE_OPERATIONAL = 1
uint16 SAFETY_STATE_LOW_SPEED   = 2
uint16 SAFETY_STATE_NO_FORWARD  = 4
uint16 SAFETY_STATE_NO_BACKWARD = 8
uint16 SAFETY_STATE_NO_ROTATE   = 16

# identifying information
uint32 hw_id                  # a, hopefully unique, id
uint32 hw_timestamp           # timestamp as returned by the hardware
builtin_interfaces/Time stamp # wall clock timestamp

# position information (estimated, relative to starting pose)
float32 x
float32 y
float32 orientation
# should we add z?

# velocity information
float32 forward_velocity
float32 rotational_velocity

# battery state
uint8 battery_voltage_pct     # range: 0-100. current battery voltage as percent of nominal.
uint8 power_supply            # one of the constants above

# diagnostic information
bool overcurrent              # motor overcurrent detected
bool blocked                  # True if forward direction is blocked by an obstacle
bool in_collision             # True if the robot is in collision (usually detected via bumper)
bool at_cliff                 # True if the robot has detected a cliff in the forward direction

uint16 safety_state