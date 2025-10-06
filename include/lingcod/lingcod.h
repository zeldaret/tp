#ifndef LINGCOD_H
#define LINGCOD_H

#ifdef __cplusplus
extern "C" {
#endif

int lingcod_getIniState();
int NVGXCreateGroup();
int NVGXCreateSubGroup();
void NVGXReleaseGroup();
float lingcod_getBloomScale();
float lingcod_getDoFScale();
int lingcod_fireGameEventEx();

inline void lingcod_revalidateNVSI() {
    return;    
}

inline void lingcod_callNVSISnippet() {
    return;    
}

#ifdef __cplusplus
}
#endif

#endif
