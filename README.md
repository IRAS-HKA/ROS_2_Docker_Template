# ROS_2_Docker_Template
Template Repo for ROS2 Docker based deployment for the usage at @HKA-IRAS based on the concepts of @AndreasZachariae

Extend the provided Dockerfile for your own projekt. Local files for development can be used within the docker by moving them into the 'src' folder.\
Additional packages can be installed within the 'Global Dependencies' step within the Dockerfile, using apt and pip.\
If you need to install dependencies from source add them to the dependency workspace within the Dockerfile.

# MY_PROJECT
This is your space to describe your project. What is it for, how can it be installed and used? Keep it simple, use sample commands where possible. For the full markdown syntax take a look at: [Github Docs](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)

## How to debug C++ nodes within the docker container

Install VSCode extension:
- Remote Development
- ROS
- C/C++
 
Mount settings folder .vscode to target directory for development
```bash
# Add parameter to docker run command
-v $PWD/.vscode:/home/docker/ros2_ws/src/.vscode
```
 
```bash
source start_docker.sh
```
 
1. Attach to running docker container with VSCode remote extension
2. Open remote folder where .vscode is mounted to
3. Install `ROS` and `C/C++` extension in container
4. Use command palette (strg + shift + p) and `Tasks: Run Task` and `Build`
5. Use VSCode debugger and stop points for debugging
