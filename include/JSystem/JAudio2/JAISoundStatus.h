#ifndef JAISOUNDSTATUS_H_
#define JAISOUNDSTATUS_H_

// Additional symbols needed for JAISoundStatus
extern "C" {
void JAISoundStatus__NS_lockWhenPrepared(void);
void JAISoundStatus__NS_unlockIfLocked(void);
}

#endif  // JAISOUNDSTATUS_H_
