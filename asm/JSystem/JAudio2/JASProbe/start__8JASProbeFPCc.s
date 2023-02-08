lbl_80290D74:
/* 80290D74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80290D78  7C 08 02 A6 */	mflr r0
/* 80290D7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80290D80  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80290D84  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80290D88  7C 7E 1B 78 */	mr r30, r3
/* 80290D8C  7C 9F 23 78 */	mr r31, r4
/* 80290D90  48 0A C9 65 */	bl OSDisableInterrupts
/* 80290D94  90 61 00 08 */	stw r3, 8(r1)
/* 80290D98  93 FE 00 00 */	stw r31, 0(r30)
/* 80290D9C  48 0B 19 61 */	bl OSGetTime
/* 80290DA0  90 9E 00 04 */	stw r4, 4(r30)
/* 80290DA4  80 61 00 08 */	lwz r3, 8(r1)
/* 80290DA8  48 0A C9 75 */	bl OSRestoreInterrupts
/* 80290DAC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80290DB0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80290DB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80290DB8  7C 08 03 A6 */	mtlr r0
/* 80290DBC  38 21 00 20 */	addi r1, r1, 0x20
/* 80290DC0  4E 80 00 20 */	blr 
