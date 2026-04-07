# Tasks: Syscall Pattern Anomaly Detection (xv6 + LERAD)

- [ ] **Project Setup** <!-- id: 0 -->
    - [ ] Initialize project directory `xv6-lerad-project` <!-- id: 1 -->
    - [ ] Acquire xv6 source code (User to provide or clone) <!-- id: 2 -->
    - [ ] Verify build environment (WSL2, QEMU, GCC/RISC-V toolchain) <!-- id: 3 -->
- [ ] **Kernel Implementation** <!-- id: 4 -->
    - [ ] Design LERAD data structures (e.g., transition matrix/hash map in `proc.h`) <!-- id: 5 -->
    - [ ] Implement `sys_lerad_control` syscall (Toggle Modes: OFF, LEARN, DETECT) <!-- id: 6 -->
    - [ ] Modify `syscall` function in `syscall.c` to trace transitions <!-- id: 7 -->
    - [ ] Implement Learning Logic: Update transition counts <!-- id: 8 -->
    - [ ] Implement Detection Logic: Check threshold, kill process if violated <!-- id: 9 -->
    - [ ] Implement Reporting Mechanism: Store violation details for user-space retrieval <!-- id: 10 -->
- [ ] **User-Space Tools** <!-- id: 11 -->
    - [ ] Create `lerad.c` utility (Set mode, set threshold, print stats) <!-- id: 12 -->
    - [ ] Create `test_attack.c` to simulate anomalous behavior <!-- id: 13 -->
- [ ] **Verification** <!-- id: 14 -->
    - [ ] Verify Learning Mode captures normal patterns (e.g., `ls`, `sh`) <!-- id: 15 -->
    - [ ] Verify Detection Mode kills `test_attack` but allows normal usage <!-- id: 16 -->
