# Inception Of Things

Introduction to Kubernetes

## Mandatory part

-   This project will consist of setting up several environments under specific
    rules.It is divided into three parts you have to do in the following order:

    -   [Part 1: K3s and Vagrant](#part-1-k3s-and-vagrant)
    -   [Part 2: K3s and three simple applications](#part-2-k3s-and-three-simple-applications)

    -   [Part 3: K3d and Argo CD5](#part-3-k3d-and-argo-cd5)

### Part 1: K3s and Vagrant

In this section, you will launch virtual machines using Vagrant. The
configuration should be complete to ensure proper functionality. Here is an
example when the virtual machines are launched:

-   Example: [Include example here]

And an example when the configuration is not complete:

-   Example: [Include example here]

And finally, an example when the machines are correctly configured:

Example: [Include example here]

### Part 2: K3s and three simple applications

Now that you have a grasp of K3s, it's time to delve deeper. Set up a single
virtual machine with the distribution of your choice (latest stable version) and
install K3s in server mode. Configure three web applications to run in your K3s
instance. Access them based on the HOST used when making a request to the IP
address 192.168.56.110. The machine's name should be your login followed by 'S'
(e.g., wilS if your login is wil).

Here's a brief diagram for reference:

-   Diagram: [Include diagram here]

When a client inputs the IP 192.168.56.110 in their web browser with the HOST
app1.com, the server should display app1. For HOST app2.com, the server should
display app2. Otherwise, app3 will be selected by default. Application number 2
should have three replicas. Adapt your configuration accordingly.

-   Example: [Include example here]

### Part 3: K3d and Argo CD5

Now that you've mastered a minimalist version of K3S, set up everything you've
learned (and more!) without using Vagrant. Install K3d on your virtual machine,
and create a script to install all necessary packages and tools. Understand the
difference between K3s and K3d.

Configure a small infrastructure with two namespaces: one for Argo CD and
another named 'dev' containing an application. This application should be
automatically deployed by Argo CD using your online GitHub repository. Create a
public repository on GitHub and push your configuration files, ensuring to
include a group member's login in the repository name.

-   Example: [Include example here]

### Application Deployment

The application to be deployed must have two different versions. You can either
use Wil's ready-made application available on Docker Hub or create your own
application. If you choose the latter, make it available through a public Docker
image pushed into a Docker Hub repository. The two versions should have a few
differences.

-   Example: [Include example here]

### Argo CD Configuration

Configure Argo CD to synchronize with your GitHub repository. Change the version
of your application in the repository and ensure that the application is
correctly updated.

-   Example: [Include example here]

## Bonus Part

For the bonus part, add GitLab to the infrastructure set up in Part 3. Use the
latest version of GitLab from the official website and ensure it runs locally.
Configure GitLab to work with your cluster and create a dedicated namespace
named 'gitlab'. Everything from Part 3 should work with your local GitLab.

-   Example: [Include example here]
