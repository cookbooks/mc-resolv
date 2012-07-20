Description
===========
This cookbook allows the generation of a custom resolv.conf

Requirements
============

Attributes
==========

node[:default][:domain] must be set in the nodes environment or via default attribute
node[:resolv][:nameservers] contains a list of custom nameserver ip's

Usage
=====

