#!/usr/bin/with-contenv bashio
# ==============================================================================
# Home Assistant Community Add-on: Example
#
# Example add-on for Hass.io.
# This add-on displays a random quote every X seconds.
# ==============================================================================

# ------------------------------------------------------------------------------

main() {
    local sleep

    bashio::log.trace "${FUNCNAME[0]}"

    sleep=$(bashio::config 'seconds_between_quotes')
    bashio::log.info "Seconds between each quotes is set to: ${sleep}"

    while true; do
        echo "hello"
        sleep "${sleep}"
    done
}
main "$@"
