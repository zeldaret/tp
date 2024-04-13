#ifndef M_DO_M_DO_MACHINE_EXCEPTION_H
#define M_DO_M_DO_MACHINE_EXCEPTION_H


class JUTConsole;

void print_f(char const*, ...);
void print(char const*);
void dispHeapInfo();
void dispGameInfo();
void dispDateInfo();
void dispConsoleToTerminal();
void exception_addition(JUTConsole* pConsole);

#endif /* M_DO_M_DO_MACHINE_EXCEPTION_H */
