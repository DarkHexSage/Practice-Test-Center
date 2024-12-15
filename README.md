# Backend Frontend App  

This application provides a comprehensive platform for candidates to showcase their technical skills in an interactive and efficient manner.  

## Key Components  

### Front-End  
- **Intuitive User Interface**: Simple and user-friendly design.  
- **Integrated Virtual Terminal**: Access a virtual shell via WebSocket directly from the browser.  
- **Well-Defined Challenges**: Clearly presented scenarios and objectives for each task.  
- **Challenge Verification**: Buttons for candidates to confirm task completion.  

### Back-End  
- **Challenge Verification**: PHP and JavaScript-based functionality to ensure objective and accurate assessment.  
- **Real-Time Communication**: Smooth interaction between the front-end and back-end using XMLHttpRequests.  
- **Countdown Timer**: Keeps candidates focused and aware of time constraints.  

## Key Features  
- **Dynamic Skill Assessment**: Real-time evaluation of candidate abilities.  
- **Secure Testing Environment**: Fully controlled and browser-based to maintain system integrity.  
- **Seamless User Experience**: Optimized for efficient evaluations.  

This platform is an ideal solution for identifying top candidates quickly and effectively.  

## Summary  
The application integrates **Shell in a Box** with **PHP verification functions**, creating an interactive and robust platform for assessing technical skills.  

### Features  

#### Shell in a Box Integration  
- Web-based shell interface embedded in the application.  
- Execute shell commands directly from the browser.  
- Explore Linux command-line utilities interactively.  

#### PHP Verification Functions  
- Server-side PHP functions validate candidate responses and inputs.  
- Accurate assessment of programming and system administration skills.  

#### Dynamic Content Evaluation  
- Instant feedback on candidate actions during evaluations.  

#### Secure & Controlled Environment  
- Safe environment for practicing and demonstrating skills without compromising security.  

#### Scalability & Accessibility  
- Scalable for multiple users to access simultaneously.  
- Remote assessment capability from anywhere with internet access.  

## Conclusion  
This app is a powerful tool for assessing candidates in shell scripting, Linux command-line usage. 

It delivers an intuitive, interactive experience, providing valuable insights for recruitment and skill evaluation.

![image](https://github.com/user-attachments/assets/b879a3de-155e-468c-a0b2-318161719266)

###Deployment instructions
Get the docker file and build it, afterward run a container with port 80 being exposed to your port 80.
```bash

┌──(root㉿kali)-[/home/kali]
└─#docker build .
┌──(root㉿kali)-[/home/kali]
└─# docker run -p 80:80 97ba241aed83
```

Then navigate to

http://localhost/easy-test.php
