# YottaDB-Wrapper

A bash wrapper for the native ydb command, allowing access to YottaDB information and documentation.

![Alt text](yottadb-wrapper.webp?raw=true "Gitpod View")

As well as the existing functionality of allowing access to the YottaDB environment, this wrapper displays the YottaDB version and web address of YottaDB on execution of the **ydb** command.

Utilising Lynx (https://lynx.invisible-island.net/), it also allows browsing of the YottaDB website via the terminal

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/RamSailopal/YottaDB-Wrapper)

Once the Gitpod environment opens, wait 60 seconds for the YottaDB container to provision, the second terminal window will "drop into" a container tty session. Expand the terminal pane as much as possible and then execute **ydb**

To run ydb without a the banner, run:

    ydb -n
