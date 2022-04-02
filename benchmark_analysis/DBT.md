Welcome to your new dbt project!
# Local DBT Setup

This repo contains dbt development environment to be run in a Docker container. In order to do the development in a container, Docker Desktop, VSCode and "Remote - Containers" VSCode-extension are required to be installed.

## 1. How to get started w/ dbt?

If you are not familiar with dbt, you learn more [here](https://docs.getdbt.com/docs/introduction)

## 2. Install Docker Desktop

[Docker Desktop](https://hub.docker.com/editions/community/docker-ce-desktop-windows/)

Be sure to install and enable [WSL 2 backend](https://docs.docker.com/docker-for-windows/wsl/)

## 3. Install VSCode & Remote - Containers extension

[VSCode installer](https://code.visualstudio.com/)

[Remote - Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

No other extensions are required to be installed since the required extensions are created when the container is being created. See the .devcontainer/devcontainer.json for more details.

## 4. Open Docker Desktop & VSCode and Clone the repository

Open the installed applications:
- Docker Desktop - and ensure that the WSL 2 backend is enabled.
- VSCode - Open a new VSCode window and 'Clone Git Repository...' from the front page. Copy the URL for the menu from Azure DevOps.

Then Clone the repository and open it in your VSCode application.

## 5. Add secrets

Create the following files into .devcontainer folder
- dbr_token.txt
 
 and add your Databricks workspace token

## 6. Configure the profile

Edit .devcontainer/profiles.yml

## 7. Start developing inside a container

 Follow up the [guidance](https://code.visualstudio.com/docs/remote/containers#_quick-start-open-an-existing-folder-in-a-container) to start developing inside a container. 

Choose the existing Docker Compose file from the menu:

- Start docker
- In VScode: F1 + Open Folder in Container... > choose a local copy/folder of this repository
- If asked, use the Docker Compose file in this repository

## 8. Configure Git in Remote Container

Your git credentials won't be automatically shared with the container. Follow these steps to share them:

- Install [Git for Windows](https://git-scm.com/download/win)
- Open Git Bash and run the following command: `git config --global credential.helper wincred`
- Generate Git Credentials in Azure DevOps and copy the password into the VScode when prompting (I.e. when pushing or pulling code). 


## dbt resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](http://slack.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices