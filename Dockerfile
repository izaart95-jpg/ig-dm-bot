FROM sickcodes/dock-droid:latest

# Add any custom configuration or files below.
# Example: copy a custom script or set environment variables.
# For now, we just keep the base image as is.

# (Optional) Set default environment variables that can be overridden.
ENV EXTRA="-display none -vnc 0.0.0.0:99,password=off"

# The original image already defines a sensible entrypoint and command.
# We keep them unchanged.
