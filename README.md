# Syscall Pattern Anomaly Detection for xv6 (LERAD)

## Overview

This project implements a kernel-level anomaly detection system in the xv6 operating system using a deterministic variant of the LERAD (Learning Rules for Anomaly Detection) algorithm. It models normal program behavior using system call sequences and detects anomalous execution patterns in real time.

## Motivation

Traditional security systems rely on predefined attack signatures and fail to detect unknown or logic-based attacks. This project explores behavior-based detection by learning normal syscall patterns and identifying statistically improbable deviations directly within the OS kernel.

## Key Features

* Kernel-level monitoring of system call sequences
* Trigram-based behavioral modeling of syscall patterns
* Real-time anomaly detection using threshold-based scoring
* Detection of previously unseen execution paths
* Interactive handling of anomalous transitions
* Persistent learning across system runs

## Tech Stack

* C
* xv6 Operating System
* QEMU Emulator
* GCC Toolchain

## How It Works

1. The system observes system call sequences during a training phase
2. Builds a statistical model of normal behavior (trigrams)
3. During execution, each syscall transition is evaluated
4. If a transition deviates significantly, it is flagged as an anomaly

## Results

* Successfully detects anomalous syscall sequences
* Identifies unknown execution paths without predefined signatures
* Maintains low overhead suitable for kernel-level deployment

## Project Structure

* Modified xv6 kernel source
* LERAD detection logic integrated into syscall handling
* Training and detection modules

## Future Improvements

* Support for more complex sequence modeling
* Automated policy enforcement instead of manual prompts
* Integration with larger operating systems

## Author

Ajay G
