# Extensions List

Run the command `code --list-extensions` and we get a list of extensions installed in our VSCode.

## Must-Have Extensions

```
aaron-bond.better-comments
patbenatar.advanced-new-file
esbenp.prettier-vscode
GitHub.github-vscode-theme
```

## Other Language/Framework Specific Extensions

- Java:
  
  ```
  redhat.java
  mwpb.java-prettier-formatter
  ```

- Rust:

  ```
  rust-lang.rust-analyzer
  ```

- Python:

  ```
  ms-python.python
  ms-python.vscode-pylance
  ```

- Sass/SCSS:
  
  ```
  glenn2223.live-sass
  ```

- HTML/CSS:

  ```
  ritwickdey.LiveServer
  ```

- API Testing:

  ```
  rangav.vscode-thunder-client
  ```

- ReactJS:

  ```
  dsznajder.es7-react-js-snippets
  ```

- Solidity:

  ```
  JuanBlanco.solidity
  ```

## Extra Fun Extensions | Not-Necessary to Have

```
shd101wyy.markdown-preview-enhanced
```

## Extensions in Detail with Usage

- `aaron-bond.better-comments`: Better Comments for human-friendly comments
- `patbenatar.advanced-new-file`: Helper Utility for New file creation.
- `esbenp.prettier-vscode`: Prettier extension for most file formats, used for prettifying the files with proper indentation and spaces.
  > Note: Prettier extension does not work for some specific file formats, including Java and Rust. 
  - That is why, instead of this extension, we use different extensions for Java and Rust. 
  - And thus for Java/Rust, we don't need to install this extension separately.
- `GitHub.github-vscode-theme`: Best set of themes for me.
- `redhat.java`: Redhat Java provides intellisense, autocompletion, linting, and many more features including Java files formatting and prettifying, but the Redhat version of prettifying has various bugs, so we use `mwpb.java-prettier-formatter` for the formatting of Java files.
  - `mwpb.java-prettier-formatter` does not depend on `redhat.java` extension, and can work independently for just the formatting of Java files.
- `mwpb.java-prettier-formatter`: Java Prettier formatter extension.
- `rust-lang.rust-analyzer`: Rust intellisense, autocompletion, linting, formatting etc. are provided by this extension.
- `ms-python.python`: Python IDE features in VSCode
- `ms-python.vscode-pylance`: Intellisense for Python
  - Note: `ms-python.python` is dependent on `ms-python.vscode-pylance`, but not vice versa. To have better support for Python, we install `ms-python.python` which also installs `ms-python.vscode-pylance`.
- `glenn2223.live-sass`: Live SASS/SCSS compiler to CSS
- `ritwickdey.LiveServer`: Live server for HTML files
- `rangav.vscode-thunder-client`: Thunder Client -- REST client
- `dsznajder.es7-react-js-snippets`: React/Redux/JS code snippets
- `JuanBlanco.solidity`: Solidity syntax highlighting, snippets suggestion etc.
- `shd101wyy.markdown-preview-enhanced`: Markdown Preview Enhanced in VSCode

## Current List of Extensions I Use 

Below are the list of extensions I use, as on ***14th July, 2022***.

```
aaron-bond.better-comments
esbenp.prettier-vscode
GitHub.github-vscode-theme
mwpb.java-prettier-formatter
patbenatar.advanced-new-file
redhat.java
ritwickdey.LiveServer
rust-lang.rust-analyzer
```
