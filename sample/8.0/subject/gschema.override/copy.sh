#!/usr/bin/env bash


mkdir -p ./asset/overlay/usr/share/glib-2.0/schemas

cp -rf /usr/share/glib-2.0/schemas/*.gschema.override ./asset/overlay/usr/share/glib-2.0/schemas
