# Guidance and organization of the seminar

## Basic commands

*Be careful of the commas(`,`) and periods(`.`)*.

Duplicate the repository:
1. `git clone git@github.com:pppppass/ToolsSeminar`,
2. `cd` into the `ToolsSeminar` folder,
3. `git submodule init`,
4. `git submodule update`.

Update the repository after some new materials are pushed:
1. `git pull`,
2. have a try for `git submodule update`.

Setting the `.gitignore`:
1. `cp .gitignore.template .gitignore`,
2. after making updates to `.gitignore`, it is OK to perform `cp .gitignore .gitignore.template` and make a push.

Feel free to ask questions about command line tools in the Seminar group.

## Organization

Materials in the repository consist of three parts, namely *Outline*
(a brief slide of outline to be presented, stressing the key points
and framework), *Materials* (a list of materials on the topics, with
an introduction of the assignment), *Assignment* (several exercises
and small projects to be finished on the topic).

Materials should be put in the the folder `Week<#week>-<topic>` in the repository. Spaces in the topic should be stripped and **UpperCaseCamel** convention should be used. (Note that nrelated words should be joined by `-`) An article of *Materials* and a slide of *Outline* should be provided in the the folder as TeX source files.

Assignments should be placed separatedly in the `Assignment` folder right in the repository folder `ToolsSeminar`. Each piece of assignment should be placed in a specific folder named `<topic>-<title>`, where the topic and title should both follow the **UpperCaseCamel** convention. A `main.ipynb` and/or `main.tex` should be provided to discribe the problem. (And maybe with some C++ source) Remember to clean the output when uploading Jupyter Notebooks.

## Responsibility

*Be careful of the material due, which are usually a month before the seminare.*

Before the material due, person responsible for the topic should:
- Upload, or say push, a source file of a slide of outline. The outline should
cover *fundamental ideas* of the topic and should **avoid** aimless, intensive enumeration. The slide will be used in online or in-class presentation.
- Upload, or say push, a source file of a list of materials related to
the topic. The list of materials should contain following parts:
    - Hints for configurations and installations.
    - A list of resources related to the topic.
    - A list of assignment with a brief description, marked with `\textbf{(Required)}` and
    `\textbf{(Optional)}`. It is recommended that the assignment composed
    of several small, practical projects, and ``short questions'' emphasizing
    details should be avoided, especially multiple choices and blank filling.
    Background of required assignments should be explained in the TeX source file. It is strongly
    suggested that the assignment is published as several *IPython Notebooks*. In the IPython Notebook, it is recommended to provide sections like "Description", "Generating data", "Key", "Your implementation" and "Test".
- Set an issue in the original seminar repository to collect suggestions
on the topics. The title should be `Week <#week> --- <title>`.

Before the seminar or a specified due, everyone attending the seminar should:
- Choose some resource to read and learn about the topic.
- Finish the required part of assignment.

In the seminar, person responsible for the topic should:
- Give a brief presentation on the outline of the topic for about 15 minutes (online, or 30 minutes in-class). Questions are
not allowed during the presentation due to limited time.
- Hold discussion around the topic.

## Comments

It is strongly recommended to use English in the repository.

When using pppppass' TeXTemplates, remember to use commands like `\documentclass{../TeXTemplate/pkupaper}` to invoke templates in `TeXTemplate` folder right in the repository folder `ToolsSeminar`. Please **do not** duplicate single files like `pkupaper.cls`, because of license issues.
