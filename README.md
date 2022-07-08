# YottaDB-Wrapper

A bash wrapper for the native ydb command, allowing access to YottaDB information and documentation as command line, global views and routine edits.

![Alt text](yottadb-wrapper.webp?raw=true "Gitpod View")

As well as the existing functionality of allowing access to the YottaDB environment, this wrapper displays the YottaDB version and web address of YottaDB on execution of the **ydb** command.

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/RamSailopal/YottaDB-Wrapper)

Once the Gitpod environment opens, wait 60 seconds for the YottaDB container to provision, the second terminal window will "drop into" a container tty session. Expand the terminal pane as much as possible and then execute **ydb**

To run ydb without a the banner, run:

    ydb -n
    
# Browser access

Access to the terminal is also available via ttyd and a web browser.

To access ydb via this method, open a browser tab and navigate to:

https://7681-gitpodaddress

Enter the following credentials:

username:  **test**

password:  **test**

# Command line

The ncurses utility has also been "sub-divided" into a number of separate commands:

**ydb-help - List of YottaDB aliases**
**ydb-start - YottaDB interactive command line**
**ydb-search - Search YottaDB documentation**
**ydb-edit - Edit YottaDB routines**
**ydb-rlist - List YottaDB routines**
**ydb-glist - List YottaDB globals**
**ydb-gview - View YottaDB global**

