# Operating System

A lightweight, educational operating system implementation. This project demonstrates fundamental OS concepts with a focus on learning.

##  Overview

This project is an implementation of a basic operating system that covers essential OS components and principles. It serves as both a learning tool for understanding operating system internals.

##  Features

- **Bootloader**: Custom bootloader to initialize the system
- **Kernel**: Minimal but functional kernel implementation
- **Memory Management**: Basic memory allocation and paging
- **Process Scheduling**: Simple process creation and scheduling algorithms
- **File System**: Rudimentary file system implementation
- **Device Drivers**: Basic drivers for keyboard, display, and storage
- **Shell Interface**: Command-line interface for system interaction
- **System Calls**: Implementation of fundamental system calls
- **Interrupt Handling**: Basic interrupt service routines

##  Getting Started

### Prerequisites
- GCC cross-compiler for target architecture
- NASM assembler
- QEMU for emulation
- Make build system

### Building
1. Clone the repository:
   ```bash
   git clone https://github.com/amabilisifi/OS.git
   ```

2. Navigate to the project directory:
   ```bash
   cd OS
   ```

3. Build the operating system:
   ```bash
   make
   ```

### Running
Run the OS in the QEMU emulator:
```bash
make run
```

## 📂 Project Structure

```
OS/
├── boot/             # Bootloader code
├── kernel/           # Kernel source code
│   ├── include/      # Header files
│   ├── memory/       # Memory management
│   ├── process/      # Process scheduling
│   ├── fs/           # File system
│   ├── drivers/      # Device drivers
│   └── syscalls/     # System call implementation
├── userland/         # User space programs
├── tools/            # Build and development tools
├── docs/             # Documentation
├── tests/            # Test suite
├── Makefile          # Main build script
└── README.md
```

##  Documentation

Detailed documentation is available in the `docs/` directory:
- `docs/architecture.md`: Overview of the system architecture
- `docs/building.md`: Detailed build instructions
- `docs/development.md`: Guide for contributing to the project

##  Testing

Run the test suite to verify system functionality:
```bash
make test
```

##  Contributing

Contributions are welcome! Please read `docs/development.md` for guidelines on how to contribute.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

##  License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🔗 Resources

- [Operating Systems: Three Easy Pieces](http://pages.cs.wisc.edu/~remzi/OSTEP/)
- [OSDev Wiki](https://wiki.osdev.org/Main_Page)
- [The Little Book About OS Development](https://littleosbook.github.io/)


For questions and suggestions, please open an issue on the GitHub repository.
