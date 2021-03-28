lbl_80348474:
/* 80348474  7C 08 02 A6 */	mflr r0
/* 80348478  90 01 00 04 */	stw r0, 4(r1)
/* 8034847C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80348480  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80348484  3B E4 00 00 */	addi r31, r4, 0
/* 80348488  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8034848C  3B C3 00 00 */	addi r30, r3, 0
/* 80348490  4B FF 52 65 */	bl OSDisableInterrupts
/* 80348494  93 CD 91 B4 */	stw r30, WorkAroundType(r13)
/* 80348498  93 ED 91 B8 */	stw r31, WorkAroundSeekLocation(r13)
/* 8034849C  4B FF 52 81 */	bl OSRestoreInterrupts
/* 803484A0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 803484A4  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 803484A8  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 803484AC  38 21 00 18 */	addi r1, r1, 0x18
/* 803484B0  7C 08 03 A6 */	mtlr r0
/* 803484B4  4E 80 00 20 */	blr 
