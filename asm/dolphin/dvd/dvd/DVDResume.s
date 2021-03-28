lbl_8034B284:
/* 8034B284  7C 08 02 A6 */	mflr r0
/* 8034B288  90 01 00 04 */	stw r0, 4(r1)
/* 8034B28C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8034B290  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8034B294  4B FF 24 61 */	bl OSDisableInterrupts
/* 8034B298  38 80 00 00 */	li r4, 0
/* 8034B29C  90 8D 92 04 */	stw r4, PauseFlag(r13)
/* 8034B2A0  7C 7F 1B 78 */	mr r31, r3
/* 8034B2A4  80 0D 92 08 */	lwz r0, PausingFlag(r13)
/* 8034B2A8  2C 00 00 00 */	cmpwi r0, 0
/* 8034B2AC  41 82 00 0C */	beq lbl_8034B2B8
/* 8034B2B0  90 8D 92 08 */	stw r4, PausingFlag(r13)
/* 8034B2B4  4B FF ED F9 */	bl stateReady
lbl_8034B2B8:
/* 8034B2B8  7F E3 FB 78 */	mr r3, r31
/* 8034B2BC  4B FF 24 61 */	bl OSRestoreInterrupts
/* 8034B2C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8034B2C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8034B2C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8034B2CC  7C 08 03 A6 */	mtlr r0
/* 8034B2D0  4E 80 00 20 */	blr 
