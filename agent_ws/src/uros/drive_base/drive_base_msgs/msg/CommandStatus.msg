# command has been accepted
uint8 OK = 0
# the command contained requests that exceed the capabilities of the system
# e.g., the command speed was too high
# NOTE: The system will still attempt to perform as best it can
uint8 CAPABILITIES_EXCEEDED = 1
# the command contained invalid values, and the system will not attempt
# to perform it
uint8 INVALID = 2
# the command cannot be executed because the system has insufficient power to operate
uint8 POWER_INSUFFICIENT = 3
# the system is currently inoperational for an unspecified reason
# it expects to be able to recover
uint8 TEMPORARY_FAILURE = 4
# the system is inoperational indefinitely
uint8 SYSTEM_FAILURE = 5


# timestamp of this message
builtin_interfaces/Time stamp
# command this pertains to
drive_base_msgs/CommandHeader cmd_header
# result of the command
uint8 status