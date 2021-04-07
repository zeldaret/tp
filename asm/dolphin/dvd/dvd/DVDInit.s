lbl_803490F0:
/* 803490F0  7C 08 02 A6 */	mflr r0
/* 803490F4  90 01 00 04 */	stw r0, 4(r1)
/* 803490F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803490FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80349100  93 C1 00 08 */	stw r30, 8(r1)
/* 80349104  80 0D 92 3C */	lwz r0, DVDInitialized(r13)
/* 80349108  2C 00 00 00 */	cmpwi r0, 0
/* 8034910C  40 82 00 A4 */	bne lbl_803491B0
/* 80349110  80 6D 84 68 */	lwz r3, __DVDVersion(r13)
/* 80349114  4B FF 17 61 */	bl OSRegisterVersion
/* 80349118  3B C0 00 01 */	li r30, 1
/* 8034911C  93 CD 92 3C */	stw r30, DVDInitialized(r13)
/* 80349120  4B FF F3 D1 */	bl __DVDFSInit
/* 80349124  48 00 27 51 */	bl __DVDClearWaitingQueue
/* 80349128  4B FF E5 4D */	bl __DVDInitWA
/* 8034912C  3C 00 80 00 */	lis r0, 0x8000
/* 80349130  3B E0 00 00 */	li r31, 0
/* 80349134  90 0D 92 00 */	stw r0, bootInfo(r13)
/* 80349138  3C 60 80 34 */	lis r3, __DVDInterruptHandler@ha /* 0x803476B4@ha */
/* 8034913C  38 83 76 B4 */	addi r4, r3, __DVDInterruptHandler@l /* 0x803476B4@l */
/* 80349140  93 ED 92 38 */	stw r31, MotorState(r13)
/* 80349144  38 60 00 15 */	li r3, 0x15
/* 80349148  90 0D 91 FC */	stw r0, IDShouldBe(r13)
/* 8034914C  4B FF 45 F5 */	bl __OSSetInterruptHandler
/* 80349150  38 60 04 00 */	li r3, 0x400
/* 80349154  4B FF 49 F1 */	bl __OSUnmaskInterrupts
/* 80349158  38 6D 91 F0 */	la r3, __DVDThreadQueue(r13) /* 80451770-_SDA_BASE_ */
/* 8034915C  4B FF 7B 19 */	bl OSInitThreadQueue
/* 80349160  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC006000@ha */
/* 80349164  38 00 00 2A */	li r0, 0x2a
/* 80349168  90 03 60 00 */	stw r0, 0x6000(r3)  /* 0xCC006000@l */
/* 8034916C  93 E3 60 04 */	stw r31, 0x6004(r3)
/* 80349170  80 6D 92 00 */	lwz r3, bootInfo(r13)
/* 80349174  38 63 00 20 */	addi r3, r3, 0x20
/* 80349178  80 63 00 00 */	lwz r3, 0(r3)
/* 8034917C  3C 03 1A E0 */	addis r0, r3, 0x1ae0
/* 80349180  28 00 7C 22 */	cmplwi r0, 0x7c22
/* 80349184  40 82 00 1C */	bne lbl_803491A0
/* 80349188  3C 60 80 3D */	lis r3, lit_18@ha /* 0x803D1568@ha */
/* 8034918C  4C C6 31 82 */	crclr 6
/* 80349190  38 63 15 68 */	addi r3, r3, lit_18@l /* 0x803D1568@l */
/* 80349194  4B CB D9 29 */	bl OSReport
/* 80349198  48 00 2C 6D */	bl __fstLoad
/* 8034919C  48 00 00 14 */	b lbl_803491B0
lbl_803491A0:
/* 803491A0  3C 03 F2 EB */	addis r0, r3, 0xf2eb
/* 803491A4  28 00 EA 5E */	cmplwi r0, 0xea5e
/* 803491A8  41 82 00 08 */	beq lbl_803491B0
/* 803491AC  93 CD 92 34 */	stw r30, FirstTimeInBootrom(r13)
lbl_803491B0:
/* 803491B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803491B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803491B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 803491BC  38 21 00 10 */	addi r1, r1, 0x10
/* 803491C0  7C 08 03 A6 */	mtlr r0
/* 803491C4  4E 80 00 20 */	blr 
