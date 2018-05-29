#!/bin/sh
# `pwd` should be /opt/sandbox_api

if [ "${DB_MIGRATE}" == "true" ]; then
  echo "[WARNING] Migrating database!"
  ./bin/sandbox_api command Elixir.SandboxCore.ReleaseTasks migrate
fi;

if [ "${DB_SEED}" == "true" ]; then
  echo "[WARNING] Seeding database!"
  ./bin/sandbox_api command Elixir.SandboxCore.ReleaseTasks seed
fi;
