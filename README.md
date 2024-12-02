# Code Review Guidelines for GUI-based Testing

The review of software artifacts, such as source or test code, is a common industrial practice. However, although review guidelines are available for source and low-level test code, such guidelines are missing for GUI-based testing artifacts.

The goal of this work is to define a set of guidelines from literature about production and test code, that can be mapped to GUI-based testing artifacts.

## Guidelines

The guidelines are presented in the [main.pdf](./main.pdf) file.

## Sources

The guidelines are based on the findings of the following academic studies:

- Bauer, A., Coppola, R., Alégroth, E., & Gorschek, T. (2023). Code review guidelines for GUI-based testing artifacts. Information and Software Technology, 107299. [https://doi.org/10.1016/j.infsof.2023.107299](https://doi.org/10.1016/j.infsof.2023.107299)

- Bauer, A., Alégroth, E., Helmfridsson, T. (2024) . When GUI-based Testing Meets Code Reviews (submitted to journal)

## Build PDF from source

The PDF is generated from the [main.typ](./main.typ) file using [Typst](https://typst.app).

To build the PDF, [install Typst](https://github.com/typst/typst?tab=readme-ov-file#installation) and run the following command:

```bash
typst compile main.typ
```

## License

Copyright © 2024 Andreas Bauer

This work is licensed under [CC BY-SA 4.0](./LICENSE).
