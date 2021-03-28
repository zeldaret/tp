lbl_8033B7B4:
/* 8033B7B4  7C 08 02 A6 */	mflr r0
/* 8033B7B8  90 01 00 04 */	stw r0, 4(r1)
/* 8033B7BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8033B7C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8033B7C4  48 00 1F 31 */	bl OSDisableInterrupts
/* 8033B7C8  7C 7F 1B 78 */	mr r31, r3
/* 8033B7CC  4B FF FF 1D */	bl __LCEnable
/* 8033B7D0  7F E3 FB 78 */	mr r3, r31
/* 8033B7D4  48 00 1F 49 */	bl OSRestoreInterrupts
/* 8033B7D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8033B7DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8033B7E0  38 21 00 10 */	addi r1, r1, 0x10
/* 8033B7E4  7C 08 03 A6 */	mtlr r0
/* 8033B7E8  4E 80 00 20 */	blr 
