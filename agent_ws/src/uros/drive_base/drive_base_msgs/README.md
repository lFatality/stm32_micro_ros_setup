General information about this repository, including legal information, build instructions and known issues/limitations, are given in [README.md](../README.md) in the repository root.


# The drive_base_msgs package

This package provides four messages definitions for the interaction with a Kobuki robot platform, i.e. the base of Turtlebot 2.

* `BaseInfo.msg` gives details on the internal state (e.g., battery) and the current values of the internal sensors.
* `TRVCommand.msg` is a generic message type to give translational and rotational velocity commands for navigation in 2D.
* `CommandHeader.msg` is a generic message type to give meta information on a TRVCommand message.
* `CommandStatus.msg` is a geneirc message type to give a response on the success or failure of a velocity command from a mobile platform.
