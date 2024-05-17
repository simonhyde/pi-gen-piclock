#!/bin/bash -e

#/bin/passwd -d "$(FIRST_USER_NAME)"
deluser --remove-home "${FIRST_USER_NAME}"
