#!/bin/bash
if [ ! -e "/NodeLink/NodeLink.exe" ]; then
  cd /NodeLink
  wget http://automationshack.com/Files/NodeLink.exe
fi
exec mono /NodeLink/NodeLink.exe &
exec tail -f /dev/null
