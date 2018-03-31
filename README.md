[![GitHub issues](https://img.shields.io/github/issues/rizwan95/Perfect-MySQL-Example.svg)](https://github.com/rizwan95/Perfect-MySQL-Example/issues)
[![GitHub license](https://img.shields.io/github/license/rizwan95/Perfect-MySQL-Example.svg)](https://github.com/rizwan95/Perfect-MySQL-Example/blob/master/LICENSE)

[![Twitter](https://img.shields.io/twitter/url/https/github.com/rizwan95/Perfect-MySQL-Example.svg?style=social)](https://twitter.com/intent/tweet?text=Wow:&url=https%3A%2F%2Fgithub.com%2Frizwan95%2FPerfect-MySQL-Example)
# PerfectTodoBackend


This project is an implementation of database operations (MySQL database) using the Perfect framework. The project serves as a backend for a todo application. You can add a list of tasks to your server and fetch them from your server.    
This project also builds with Swift Package Manager. You can run the project either in Mac or in Ubuntu. 

<code>Note - If you are trying to run the project in Ubuntu, make sure you have installed Ubuntu 16.04 and Swift 4 for better compatibility. </code>

[If you are wondering how to get started with Swift and Perfect framework in Ubuntu then here is an article which explains how to do so.](https://www.bit.ly/installperfect "Deploying Perfect and Swift 4 on Ubuntu")


## Usage - Mac and Xcode 9

* Clone the repository using the following command.

<pre><code>git clone https://github.com/rizwan95/Perfect-MySQL-Example.git</code></pre>

* Alternatively, you can download the repository from [here.](https://github.com/rizwan95/Perfect-MySQL-Example/archive/master.zip "Perfect-MySQL example")

* Navigate to the directory where you have cloned/downloaded the repository.

* Generate the .xcodeproj by executing the following command.

<pre><code>swift package generate-xcodeproj</code></pre>

* Open <code>Perfect-MySQL-Example.xcodeproj</code> build and run. 

You will get an output like this

<pre><code>[INFO] Starting HTTP server  on 0.0.0.0:8082</code> </pre>

## Usage - Ubuntu (Using terminal)

* Clone the repository using the following command.

<pre><code>git clone https://github.com/rizwan95/Perfect-MySQL-Example.git</code></pre>

* Navigate to the directory where you have cloned the repository.

* Update the swift packages by using the following command
<pre><code>swift package update</code></pre>

* Build the project.
<pre><code>swift build</code></pre>

* Execute the project. 
<pre><code>.build/debug/Perfect-MySQL-Example</code></pre>

You will get an output like this

<pre><code>[INFO] Starting HTTP server  on 0.0.0.0:8082</code> </pre>

After starting your server, you can now add or fetch the todos.

## Add todo

<pre><code>API URL - 0.0.0.0:8082/addToDo 
 METHOD - POST
 Parameters -  Key - "taskStringValue" Value - "Your task" </code></pre>


## Fetch todos

<pre><code>API URL - 0.0.0.0:8082/fetchToDo 
METHOD - GET
  </code></pre>


### I hope this project helps you in getting started with Server Side Swift programming using Perfect framework. Forks and pull requests are also welcome. :) 
### Don't forget to star the project :) 



