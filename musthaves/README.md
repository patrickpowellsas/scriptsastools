# scriptsastools

## SubTools

+ proc setinit; run;
  -- %put Site: &syssite;
  -- %put Release:  &sysver  (&sysvlong);
  -- %put System: &sysscp (&sysscpl); 
  -- **if (viya)**
    * cas casauto;
    * cas casauto listabout;
  -- **if (grid)**
    * %put %sysfunc(getoption(xcmd));
	* %SYSEXEC quoting-function( CmdOne ; CmdTwo ; Cmd**N**
+ The SAS Hot Fix Analysis, Download and Deployment (SASHFADD) Tool
+ DeploymentRegistry
+ order_data directory contents
+ ``` ls -al **{SAS_Home}** ```
