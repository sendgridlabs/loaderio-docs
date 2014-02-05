# Jenkins Plugin

We built a dedicated Jenkins plugin, which you can install from the Jenkins plugin manager. More information is available on the [Jenkins web site][1]

![Jenkins Plugin](../img/jenkins-install.png)

# Jenkins WebHooks

You can also use the Jenkins [Notification plugin][2] to call your [test webook][3]. Install the plugin and configure it with **Protocol=HTTP** and **URL=your webhook URL**.

  [1]: https://wiki.jenkins-ci.org/display/JENKINS/loaderio "Jenkins loader.io plugin"
  [2]: https://wiki.jenkins-ci.org/display/JENKINS/Notification+Plugin "Jenkins Notification Plugin"
  [3]: webhook.html
