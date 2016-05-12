import jenkins.model.*
Jenkins.instance.setNumExecutors(1)

System.setProperty("hudson.model.DirectoryBrowserSupport.CSP", "")
