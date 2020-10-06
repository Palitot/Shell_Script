#!/bin/bash
ping -v www.google.com  | tee /tmp/report.txt
exit 0