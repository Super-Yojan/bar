#!/bin/sh

# A dwm_bar function to display information regarding system memory, CPU temperature, and storage
# Joe Standring <git@joestandring.com>
# GNU GPLv3


dwm_resources(){
free --mebi | sed -n '2{p;q}' | awk '{printf ("🧠%2.2fGiB/%2.2fGiB\n", ( $3 / 1024), ($2 / 1024))}'
df_check_location='/home'
}

dwm_resources

