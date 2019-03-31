PROJECT = emqx_plugin_kafka_bridge
PROJECT_DESCRIPTION = EMQ X Plugin Template
PROJECT_VERSION = 3.0

BUILD_DEPS = emqx cuttlefish ekaf
dep_emqx = git-emqx https://github.com/emqx/emqx emqx30
dep_cuttlefish = git-emqx https://github.com/emqx/cuttlefish v2.2.1
dep_ekaf = git https://github.com/helpshift/ekaf master
ERLC_OPTS += +debug_info

NO_AUTOPATCH = cuttlefish

COVER = true

$(shell [ -f erlang.mk ] || curl -s -o erlang.mk https://raw.githubusercontent.com/emqx/erlmk/master/erlang.mk)

include erlang.mk

app:: rebar.config

app.config::
	./deps/cuttlefish/cuttlefish -l info -e etc/ -c etc/emqx_plugin_helloworld.conf -i priv/emqx_plugin_helloworld.schema -d data
