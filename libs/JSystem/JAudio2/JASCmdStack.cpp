//
// JASCmdStack
//

#include "JSystem/JAudio2/JASCmdStack.h"
#include "dolphin/os/OS.h"

/* 80431684-80431690 05E3A4 000C+00 1/2 0/0 0/0 .bss             sCommandListOnce__10JASPortCmd */
JASPortCmd::TPortHead JASPortCmd::sCommandListOnce;

/* 8043169C-804316A8 05E3BC 000C+00 1/2 0/0 0/0 .bss             sCommandListStay__10JASPortCmd */
JASPortCmd::TPortHead JASPortCmd::sCommandListStay;

/* 80291060-80291094 28B9A0 0034+00 0/0 1/1 0/0 .text            execAllCommand__10JASPortCmdFv */
void JASPortCmd::execAllCommand() {
	sCommandListOnce.execCommandOnce();
	sCommandListStay.execCommandStay();
}

/* 80291094-8029110C 28B9D4 0078+00 1/1 0/0 0/0 .text execCommandOnce__Q210JASPortCmd9TPortHeadFv
 */
void JASPortCmd::TPortHead::execCommandOnce() {
	volatile BOOL interrupts = OSDisableInterrupts();
	JSULink<JASPortCmd>* next;
	for (JSULink<JASPortCmd>* link = getFirst(); link != NULL; link = next) {
		next = link->getNext();
		link->getObject()->_10(link->getObject()->_14);
		remove(link);
	}
	OSRestoreInterrupts(interrupts);
}

/* 8029110C-8029116C 28BA4C 0060+00 1/1 0/0 0/0 .text execCommandStay__Q210JASPortCmd9TPortHeadFv
 */
void JASPortCmd::TPortHead::execCommandStay() {
	volatile int interrupts = OSDisableInterrupts();
	for (JSULink<JASPortCmd>* link = getFirst(); link != NULL; link = link->getNext()) {
		link->getObject()->_10(link->getObject()->_14);
	}
	OSRestoreInterrupts(interrupts);
}

