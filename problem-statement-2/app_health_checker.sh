#!/bin/bash

APP_URL="http://your-application-url.com"
LOGFILE="app_health.log"

check_application_health() {
    http_status=$(curl -s -o /dev/null -w "%{http_code}" $APP_URL)

    if [ "$http_status" -eq 200 ]; then
        echo "$(date): Application is UP (HTTP 200)" >> $LOGFILE
    else
        echo "$(date): Application is DOWN (HTTP $http_status)" >> $LOGFILE
    fi
}

check_application_health
