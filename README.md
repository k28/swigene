
# Swigene

Swigene is a Ruby tool for generating Swift(or other) module templates with customizable placeholders. It allows you to set up a configuration and generate files based on templates with specific values replaced dynamically.

## Installation

1. Clone the repository or download the `swigene.rb` and place it in your desired directory.
2. Ensure you have Ruby installed on your system.

## Usage

### Setup

Before generating files, you need to set up the configuration. This will create a `config.yaml` file where you can store project-specific information.

To set up the configuration, run:

```
ruby swigene.rb setup
```

You will be prompted to enter your project name and author name. These details will be saved in `config.yaml`.

### Generate

Once the setup is complete, you can generate module files from templates. The templates should be stored in a specific directory.

To generate files, run:

```
ruby swigene.rb generate <module_name> <template_dir>
```

- `<module_name>`: The name of the module you want to generate.
- `<template_dir>`: The directory containing the template files.

Example:

```
ruby swigene.rb generate DebugTop swift_viper
```

This will read the template files from the `swift_viper` directory and generate files with the module name `DebugTop`, replacing placeholders accordingly.

## Template File Structure

Template files should contain placeholders that will be replaced with actual values during generation. The following placeholders are supported:

- `{{__model_template__}}`: Will be replaced with the module name.
- `{{__project_name__}}`: Will be replaced with the project name from `config.yaml`.
- `{{__author_name__}}`: Will be replaced with the author name from `config.yaml`.
- `{{__create_date__}}`: Will be replaced with the current date in `yyyy/MM/dd` format.

Template files should be named with a `template_` prefix. For example:

- `template_Presenter.swift`
- `template_ViewController.swift`

During generation, the `template_` prefix will be replaced with the module name.

## Example Template File

Here is an example of a template file (`template_Presenter.swift`):

```
// Project: {{__project_name__}}
// Author: {{__author_name__}}
// Date: {{__create_date__}}

class {{__model_template__}}Presenter {
    // Your code here
}
```

After running the generate command, this template will be transformed into something like `DebugTopPresenter.swift` with placeholders replaced by actual values.

## Contributing

Feel free to submit issues or pull requests if you have suggestions for improvements or find bugs.

## License

This project is licensed under the MIT License.


