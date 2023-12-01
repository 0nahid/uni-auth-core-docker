#!/bin/bash

yarn prisma:migrate
yarn prisma:generate

node dist/server.js