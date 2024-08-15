# CoffeevoSim

**CoffeevoSim** is a simple evolutionary simulation written in CoffeeScript. The project simulates microorganisms evolving over time, adapting to their environment through movement, mutation, and natural selection.

## Project Structure

```
coffeevosim/
┣ src/
┃ ┣ environment.coffee
┃ ┣ main.coffee
┃ ┣ organism.coffee
┃ ┗ utils.coffee
┣ README.md
┗ package.json
```

## Installation

To run this project, you need to have CoffeeScript installed on your system. You can install it via npm if you haven't already:

```bash
sudo apt install coffee-script
```

Alternatively, you can install CoffeeScript globally using npm:

```bash
npm install -g coffee-script
```

If you plan to use npm for package management, ensure you have Node.js and npm installed, then run:

```bash
npm install
```

## Compiling CoffeeScript

To compile the CoffeeScript files to JavaScript:

```bash
coffee --compile --output compiled/ src/
```

This will generate JavaScript files in a `compiled/` directory.

## Running the Simulation

You can run the simulation directly from the CoffeeScript source:

```bash
coffee src/main.coffee
```

Or, if you have compiled the code, you can run the JavaScript version:

```bash
node compiled/main.js
```

## How It Works

The simulation creates a grid-based environment where microorganisms with simple genetic codes evolve over time. Each microorganism has basic behaviors such as:

- **Movement**: Moving randomly within the grid.
- **Mutation**: Random changes in their DNA that affect their characteristics.
- **Aging and Survival**: Organisms age and lose energy over time. If their energy depletes, they die.

The environment updates each turn, showing the current state of the grid, with organisms represented by symbols.

## Customization

You can modify the simulation parameters in `main.coffee`, such as the grid size, number of organisms, and mutation logic, to explore different evolutionary outcomes.

## Contributions

Contributions are welcome! If you find bugs or have ideas for new features, please open an issue or submit a pull request.
