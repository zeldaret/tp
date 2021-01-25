#ifndef JASTRACK_H_
#define JASTRACK_H_

extern "C" {
void JASTrack_NS_openChild(void);
void JASTrack_NS_readPort(void);
void JASTrack_NS_setFIR(void);
void JASTrack_NS_setIIR(void);
void JASTrack_NS_writePort(void);
}

#endif  // JASTRACK_H_
