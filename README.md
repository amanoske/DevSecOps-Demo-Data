# DevSecOps Demos

### What is this?

This repo contains source code and sample sensor data examples. These data are intended for use in demoing and testing devsecops demos in AI-augmented security operations as well as secure infrastructure code management. 

Much of this data is originally derived from:
* https://github.com/jstrosch/malware-samples
* https://github.com/snoopysecurity/Vulnerable-Code-Snippets

### Structure

Within this repo are two directories. Both directories have sub-directories intended for each specific example workflow.

**Sensor Data**: These workflows are attempting to model situations where system analysts are analyuzing sensor log data (e.g.: SIEM logs, YARA file output, etc.) for evidence of an attack, or outages. Examples include IDR/XDR, QoS Reductions, and more. 

**Sample Code**: These workflows are attempting to model situations where analysts or devsecops developers are creating application or system source code. Typically this is meant to analyze the code for vulnerabilities or as part of a RCA (Root Cause Analysis) investigation.

### License

This repo and its source code and examples are licensed under the [MIT License](https://en.wikipedia.org/wiki/MIT_License). 
