#ifndef JAUAUDIOARCLOADER_H_
#define JAUAUDIOARCLOADER_H_

struct JAUSection;  // goes in JAudio2.a JAUAudioArcLoader.o

extern "C" {
void __ct__16Z2AudioArcLoaderFP10JAUSection(void);
void JAUAudioArcLoader(void);  // ctor
void JAUAudioArcLoader_NS_load(void);
}

#endif  // JAUAUDIOARCLOADER_H_