# simplyfirescore

Base Assets and Sample Architecure implementation for all Simples Projects

## Getting Started

The exported assets of the project will ONLY
services
repository
entity
model
simples_widgets - baseWidgets
simples_helpers
values - themes, styles
i18n
validation
logger
simplesCall

services
  firebase
    firestore
    firestorage
    authentication
    fcm
    functions
  api_service
  websocket
  localdbHive
  securestorageservice
  sqliteService
  android_platform_service
  

All these will be implementables / extendables / referrables.

[config, routes, main, materialApp] in this project will be 
just a reference to refer their structure to implement in other projects.

Each project can have a MaterialApp with routing for internal testing
The implementor project will manage the routing with MaterialApp

