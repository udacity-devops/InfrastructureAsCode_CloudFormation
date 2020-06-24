# Infrastructure as Code: CloudFormation
Udacity Cloud DevOps Engineer: Infrastructure as Code Project. Deploy a High Availability App to AWS using CloudFormation.
These are some scripts you can use to easily deploy your stack, you can also use them as a starting point or example.

## Installation
You will need to [install](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html) and [configure](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html) AWS CLI.

The Makefile manages and runs the necessary scripts, but you will also need to make sure `make` is available. To see the commands, open the Makefile and take a look, or read the Usage section below.

## Usage

```sh
# Run all necessary commands to deploy the whole stack, appending the name 'sample_name':
make name=sample_name

# Delete the stack you created
make delete -B name=sample_name
```
![infrastructure-diagram](https://raw.githubusercontent.com/udacity-devops/InfrastructureAsCode_CloudFormation/master/AWS%20Infrastructure%20Diagram.jpeg)
