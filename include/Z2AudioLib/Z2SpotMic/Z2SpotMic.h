#ifndef Z2SPOTMIC_H_
#define Z2SPOTMIC_H_

extern "C" {
void Z2SpotMic(void);
void Z2SpotMic_NS_calcMicDist(void);
void Z2SpotMic_NS_calcMicPriority(void);
void Z2SpotMic_NS_calcMicVolume(void);
void Z2SpotMic_NS_calcVolumeFactor(void);
void Z2SpotMic_NS_clearMicState(void);
void Z2SpotMic_NS_setMicState(void);
}

#endif  // Z2SPOTMIC_H_
