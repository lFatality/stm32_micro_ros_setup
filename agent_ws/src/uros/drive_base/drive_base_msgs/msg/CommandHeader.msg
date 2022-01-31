# Standard header for commands

# source timestamp
builtin_interfaces/Time stamp 

# an identifier for status replies
uint32 command_id

# by informing the base about the period we expect
# to send, it can implement a safety shut-off when
# messages take much longer.
# if zero, bases may estimate the period from the incoming data
# data stream
uint16 expected_period

