# DOT-CLI (Tools Installation Repository)

This repository contains a collection of scripts to install various tools. The `install.sh` script facilitates the installation of all included tools at once. The tools are organized in the `tools` directory.

## Repository Structure

```bash
.
├── install.sh
└── tools
  ├── amixer.sh
  ├── bat.sh
  ├── brightnessctl.sh
  ├── eza.sh
  ├── fzf.sh
  ├── trash-cli.sh
  └── zoxide.sh

```

## Tools Included

- **amixer.sh**: Script to install and configure `amixer`.
- **bat.sh**: Script to install and configure `bat`.
- **brightnessctl.sh**: Script to install and configure `brightnessctl`.
- **eza.sh**: Script to install and configure `exa`.
- **fzf.sh**: Script to install and configure `fzf`.
- **trash-cli.sh**: Script to install and configure `trash-cli`.
- **zoxide.sh**: Script to install and configure `zoxide`.

## Usage

### Clone the Repository

First, clone the repository to your local machine:

```sh
git clone https://github.com/syntaxbox/dot-cli
cd dot-cli
```

### Install All Tools

Run the `install.sh` script to install all the tools:

```sh
chmod +x install.sh
./install.sh
```

## Contribution

Contributions are welcome! If you have any improvements, bug fixes, or new features to add, please follow these steps:

1. **Fork the Repository**

   Click the "Fork" button at the top right of this page to create a copy of this repository in your GitHub account.

2. **Clone Your Fork**

   ```sh
   git clone https://github.com/syntaxbox/dot-cli
   cd dot-cli
   ```

3. **Create a Branch**

   Create a new branch for your changes.

   ```sh
   git checkout -b my-feature-branch
   ```

4. **Make Your Changes**

   Implement your changes or new features.

5. **Commit Your Changes**

   ```sh
   git add .
   git commit -m "Description of your changes"
   ```

6. **Push to Your Fork**

   ```sh
   git push origin my-feature-branch
   ```

7. **Create a Pull Request**

   Go to the original repository on GitHub and click "New Pull Request". Select your branch and submit your pull request for review.

Thank you for contributing!
