#ifndef JAUAUDIOARCLOADER_H_
#define JAUAUDIOARCLOADER_H_

struct JAUSection;  // goes in JAudio2.a JAUAudioArcLoader.o

extern "C" {
void __ct__16Z2AudioArcLoaderFP10JAUSection(void);
void __ct__17JAUAudioArcLoaderFP10JAUSection(void);  // ctor
void load__17JAUAudioArcLoaderFPCv(void);
}

#endif  // JAUAUDIOARCLOADER_H_