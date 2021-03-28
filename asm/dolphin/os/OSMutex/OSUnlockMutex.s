lbl_8033F11C:
/* 8033F11C  7C 08 02 A6 */	mflr r0
/* 8033F120  90 01 00 04 */	stw r0, 4(r1)
/* 8033F124  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8033F128  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8033F12C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8033F130  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8033F134  7C 7D 1B 78 */	mr r29, r3
/* 8033F138  4B FF E5 BD */	bl OSDisableInterrupts
/* 8033F13C  7C 7F 1B 78 */	mr r31, r3
/* 8033F140  48 00 1B 45 */	bl OSGetCurrentThread
/* 8033F144  80 1D 00 08 */	lwz r0, 8(r29)
/* 8033F148  3B C3 00 00 */	addi r30, r3, 0
/* 8033F14C  7C 00 F0 40 */	cmplw r0, r30
/* 8033F150  40 82 00 70 */	bne lbl_8033F1C0
/* 8033F154  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8033F158  34 03 FF FF */	addic. r0, r3, -1
/* 8033F15C  90 1D 00 0C */	stw r0, 0xc(r29)
/* 8033F160  40 82 00 60 */	bne lbl_8033F1C0
/* 8033F164  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 8033F168  80 9D 00 14 */	lwz r4, 0x14(r29)
/* 8033F16C  28 03 00 00 */	cmplwi r3, 0
/* 8033F170  40 82 00 0C */	bne lbl_8033F17C
/* 8033F174  90 9E 02 F8 */	stw r4, 0x2f8(r30)
/* 8033F178  48 00 00 08 */	b lbl_8033F180
lbl_8033F17C:
/* 8033F17C  90 83 00 14 */	stw r4, 0x14(r3)
lbl_8033F180:
/* 8033F180  28 04 00 00 */	cmplwi r4, 0
/* 8033F184  40 82 00 0C */	bne lbl_8033F190
/* 8033F188  90 7E 02 F4 */	stw r3, 0x2f4(r30)
/* 8033F18C  48 00 00 08 */	b lbl_8033F194
lbl_8033F190:
/* 8033F190  90 64 00 10 */	stw r3, 0x10(r4)
lbl_8033F194:
/* 8033F194  38 00 00 00 */	li r0, 0
/* 8033F198  90 1D 00 08 */	stw r0, 8(r29)
/* 8033F19C  80 7E 02 D0 */	lwz r3, 0x2d0(r30)
/* 8033F1A0  80 1E 02 D4 */	lwz r0, 0x2d4(r30)
/* 8033F1A4  7C 03 00 00 */	cmpw r3, r0
/* 8033F1A8  40 80 00 10 */	bge lbl_8033F1B8
/* 8033F1AC  7F C3 F3 78 */	mr r3, r30
/* 8033F1B0  48 00 1B FD */	bl __OSGetEffectivePriority
/* 8033F1B4  90 7E 02 D0 */	stw r3, 0x2d0(r30)
lbl_8033F1B8:
/* 8033F1B8  7F A3 EB 78 */	mr r3, r29
/* 8033F1BC  48 00 2A DD */	bl OSWakeupThread
lbl_8033F1C0:
/* 8033F1C0  7F E3 FB 78 */	mr r3, r31
/* 8033F1C4  4B FF E5 59 */	bl OSRestoreInterrupts
/* 8033F1C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8033F1CC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8033F1D0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8033F1D4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8033F1D8  38 21 00 20 */	addi r1, r1, 0x20
/* 8033F1DC  7C 08 03 A6 */	mtlr r0
/* 8033F1E0  4E 80 00 20 */	blr 
