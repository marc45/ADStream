#
# pluginJPEG.cmd
#
# Required env vars
#	CAM			- PV Prefix for all camera related PV's
#	N			- Plugin number, must be unique if more than one JPEG plugin
#	PLUGIN_SRC	- Which port should this plugin get its data from

# Configure the plugin
NDFileJPEGConfigure( "JPEG$(N)", $(QSIZE), 0, "$(PLUGIN_SRC)", 0, 0, 0 )

# Load the plugin records
dbLoadRecords( "db/pluginJPEG.db",  "CAM=$(CAM_PV),CAM_PORT=$(CAM_PORT),PLUGIN_SRC=$(PLUGIN_SRC),N=$(N)" )
