#!/bin/bash

# Clear the terminal
clear

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[1;37m'
RESET='\033[0m'

# Function to display ASCII art banner
show_banner() {
    echo -e "${CYAN}"
    echo "  _______                  _             _   _____           _    __       _ _       "
    echo " |__   __|                (_)           | | |  __ \         | |  / _|     | (_)      "
    echo "    | | ___ _ __ _ __ ___  _ _ __   __ _| | | |__) |__  _ __| |_| |_ _ __ | |_  ___  "
    echo "    | |/ _ \ '__| '_ \` _ \| | '_ \ / _\` | | |  ___/ _ \| '__| __|  _| '_ \| | |/ _ \ "
    echo "    | |  __/ |  | | | | | | | | | | (_| | | | |  | (_) | |  | |_| | | | | | | | (_) |"
    echo "    |_|\___|_|  |_| |_| |_|_|_| |_|\__,_|_| |_|   \___/|_|   \__|_| |_| |_|_|_|\___/ "
    echo -e "${RESET}"
    echo -e "${GREEN}Welcome to my interactive terminal portfolio!${RESET}"
    echo "Type 'help' to see available commands."
    echo
}

# Function to display help menu
show_help() {
    echo -e "${YELLOW}Available commands:${RESET}"
    echo -e "  ${GREEN}about${RESET}      - Display information about me"
    echo -e "  ${GREEN}projects${RESET}   - List my projects"
    echo -e "  ${GREEN}skills${RESET}     - Show my technical skills"
    echo -e "  ${GREEN}education${RESET}  - Show my educational background"
    echo -e "  ${GREEN}contact${RESET}    - Display contact information"
    echo -e "  ${GREEN}experience${RESET} - Show my work experience"
    echo -e "  ${GREEN}clear${RESET}      - Clear the screen"
    echo -e "  ${GREEN}demo${RESET}       - Run a small demo of my work"
    echo -e "  ${GREEN}exit${RESET}       - Exit the portfolio"
    echo
}

# Function to display about me
show_about() {
    echo -e "${BLUE}=== About Me ===${RESET}"
    echo "Hi, I'm [Your Name]!"
    echo
    echo "I'm a [Your Profession] with a passion for creating efficient and elegant solutions."
    echo "With [X] years of experience in [Your Field], I specialize in [Your Specialization]."
    echo
    echo "I'm currently based in [Your Location] and open to [Types of Opportunities]."
    echo
}

# Function to display projects
show_projects() {
    echo -e "${BLUE}=== My Projects ===${RESET}"
    echo -e "${GREEN}1. Project Name${RESET}"
    echo "   Description: A brief description of the project"
    echo "   Technologies: Tech1, Tech2, Tech3"
    echo "   Link: https://github.com/yourusername/project1"
    echo
    echo -e "${GREEN}2. Another Project${RESET}"
    echo "   Description: What this project does and why it's interesting"
    echo "   Technologies: Tech1, Tech2, Tech3"
    echo "   Link: https://github.com/yourusername/project2"
    echo
    echo -e "Type ${YELLOW}project <number>${RESET} to see more details about a specific project"
    echo
}

# Function to display project details
show_project_details() {
    case $1 in
        1)
            echo -e "${BLUE}=== Project 1 Details ===${RESET}"
            echo -e "${GREEN}Project Name${RESET}"
            echo
            echo "This project was developed to solve [problem] by implementing [solution]."
            echo
            echo "Key features:"
            echo "- Feature 1"
            echo "- Feature 2"
            echo "- Feature 3"
            echo
            echo "Technical challenges:"
            echo "- Challenge 1: How I solved it"
            echo "- Challenge 2: How I solved it"
            echo
            echo "GitHub: https://github.com/yourusername/project1"
            echo "Live Demo: https://your-project-demo.com"
            ;;
        2)
            echo -e "${BLUE}=== Project 2 Details ===${RESET}"
            echo -e "${GREEN}Another Project${RESET}"
            echo
            echo "This project demonstrates [functionality] using [technologies]."
            echo
            echo "Key features:"
            echo "- Feature 1"
            echo "- Feature 2"
            echo
            echo "GitHub: https://github.com/yourusername/project2"
            ;;
        *)
            echo "Project $1 not found. Available projects are numbered 1-2."
            ;;
    esac
    echo
}

# Function to display skills
show_skills() {
    echo -e "${BLUE}=== Technical Skills ===${RESET}"
    echo -e "${YELLOW}Programming Languages:${RESET}"
    echo "- JavaScript (Advanced)"
    echo "- Python (Intermediate)"
    echo "- Java (Intermediate)"
    echo
    echo -e "${YELLOW}Frameworks & Libraries:${RESET}"
    echo "- React.js"
    echo "- Node.js"
    echo "- Express"
    echo
    echo -e "${YELLOW}Tools & Technologies:${RESET}"
    echo "- Git/GitHub"
    echo "- Docker"
    echo "- AWS"
    echo
}

# Function to display education
show_education() {
    echo -e "${BLUE}=== Education ===${RESET}"
    echo -e "${GREEN}University Name${RESET}"
    echo "Degree: Bachelor of Science in Computer Science"
    echo "Date: 2015 - 2019"
    echo "GPA: 3.8/4.0"
    echo
    echo -e "${GREEN}Certifications${RESET}"
    echo "- AWS Certified Developer"
    echo "- Certified Scrum Master"
    echo
}

# Function to display contact info
show_contact() {
    echo -e "${BLUE}=== Contact Information ===${RESET}"
    echo -e "Email: ${CYAN}your.email@example.com${RESET}"
    echo -e "LinkedIn: ${CYAN}https://linkedin.com/in/yourusername${RESET}"
    echo -e "GitHub: ${CYAN}https://github.com/yourusername${RESET}"
    echo -e "Twitter: ${CYAN}@yourusername${RESET}"
    echo
}

# Function to display work experience
show_experience() {
    echo -e "${BLUE}=== Work Experience ===${RESET}"
    echo -e "${GREEN}Senior Developer at Company Name${RESET}"
    echo "January 2020 - Present"
    echo "- Developed and maintained cloud-based applications"
    echo "- Led a team of 5 developers on Project X"
    echo "- Implemented CI/CD pipeline reducing deployment time by 50%"
    echo
    echo -e "${GREEN}Junior Developer at Another Company${RESET}"
    echo "June 2019 - December 2019"
    echo "- Assisted in developing front-end components using React"
    echo "- Fixed bugs and improved application performance"
    echo
}

# Function to run a demo
run_demo() {
    echo -e "${BLUE}=== Running Demo ===${RESET}"
    echo "Initializing..."
    sleep 1

    # Simple animation
    for i in {1..20}; do
        echo -ne "${YELLOW}[$i/20]${RESET} Loading... \r"
        sleep 0.1
    done
    echo -e "\n"

    echo -e "${GREEN}Demo complete!${RESET}"
    echo "This is a placeholder for a real demo of your work."
    echo "In a real portfolio, you could:"
    echo "- Show a text-based game"
    echo "- Run a small algorithm visualization"
    echo "- Display an ASCII art animation"
    echo "- Show syntax highlighting of code samples"
    echo
}

# Main loop
show_banner

while true; do
    echo -ne "${GREEN}portfolio>${RESET} "
    read -r command args

    case $command in
        help)
            show_help
            ;;
        about)
            show_about
            ;;
        projects)
            show_projects
            ;;
        project)
            show_project_details "$args"
            ;;
        skills)
            show_skills
            ;;
        education)
            show_education
            ;;
        contact)
            show_contact
            ;;
        experience)
            show_experience
            ;;
        clear)
            clear
            show_banner
            ;;
        demo)
            run_demo
            ;;
        exit)
            echo "Thank you for visiting my portfolio! Goodbye."
            exit 0
            ;;
        *)
            echo "Unknown command: $command"
            echo "Type 'help' to see available commands."
            ;;
    esac
done
