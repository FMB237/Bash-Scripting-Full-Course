# Bash-Scripting-Full-Course

A personal, hands-on Bash scripting course by Fouenang Miguel Bruce (FMB237). This repository collects short examples, notes and small projects to learn common shell scripting patterns.

## Goals
- Teach core Bash concepts: variables, conditionals, loops, functions, I/O, redirection, arrays, string handling and simple projects.
- Provide runnable examples you can tinker with and expand.
- Offer simple projects to practice and combine learned concepts.

## Quick start
Prerequisites:
- Linux, macOS, or WSL with bash (version 4+ recommended)
- Optional: shellcheck for linting (install with your package manager)

Clone and run an example:

```bash
git clone https://github.com/FMB237/Bash-Scripting-Full-Course.git
cd Bash-Scripting-Full-Course/BashScriptingCourse
bash hello.sh
# or make executable and run
chmod +x hello.sh
./hello.sh
```

## Repo structure
- BashScriptingCourse/
  - SimpleProjects/         - small practice projects
  - AdvanceProjects/        - larger combined examples
  - Images/                 - diagrams and visuals
  - *.sh                    - example scripts (variables.sh, forloop.sh, functions.sh, etc.)
  - IO-RedirectionNotes.txt - short notes on I/O redirection
  - Bash Colors - ShellHacks.html - reference HTML page on Bash colors

## How examples are organized
Each lesson/example file contains short comments and a runnable snippet. Recommended workflow:
1. Open the .sh file and read the comments.
2. Run it with bash or make it executable.
3. Modify variables and re-run to see effects.

## Suggested learning path
1. hello.sh
2. variables.sh
3. strings.sh / StringsComparison.sh
4. forloop.sh / whileloop.sh
5. if-else.sh / case-statement.sh
6. functions.sh
7. arguments.sh / FileCondition.sh / IO-RedirectionNotes.txt
8. Arrays.sh
9. SimpleProjects/* then AdvanceProjects/*

## Contributing
- Found a typo, bug, or enhancement? Open an issue or submit a PR.
- Please follow these simple rules:
  - Keep examples small and focused.
  - Add comments and expected output.
  - Add tests or example inputs where appropriate.

## Recommended next steps (for repo owner)
- Add a LICENSE (MIT or CC-BY for course content).
- Add `CONTRIBUTING.md` and a short syllabus file (SYLLABUS.md).
- Add a GitHub Action to run shellcheck on *.sh.
- Add a table of contents (TOC.md) or use GitHub Pages to host the HTML course.

## License
Add a license file (e.g., `LICENSE` with MIT) to clarify reuse.

## Contact
Author: Fouenang Miguel Bruce — https://github.com/FMB237
