### Just run Synthesis

set RDF_PATH [lindex $argv 0]

#set RDF_PATH [glob "(PROJ_PATH)/radiant/*.rdf"]
#if {[llength $RDF_FILE] != 1} {
#    error "Ambiguous match for RDF_PATH"
#}
#puts "RDF_FILE: (RDF_FILE)"

puts "RDF_FILE: ${RDF_PATH}"

set IMPL impl_1
prj_open "${RDF_PATH}"
prj_run Synthesis -impl $IMPL
#prj_run Map -impl $IMPL
#prj_run PAR -impl $IMPL
#prj_run Export -impl $IMPL
prj_close
