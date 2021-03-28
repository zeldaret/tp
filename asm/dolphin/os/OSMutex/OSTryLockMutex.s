lbl_8033F254:
/* 8033F254  7C 08 02 A6 */	mflr r0
/* 8033F258  90 01 00 04 */	stw r0, 4(r1)
/* 8033F25C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8033F260  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8033F264  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8033F268  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8033F26C  7C 7D 1B 78 */	mr r29, r3
/* 8033F270  4B FF E4 85 */	bl OSDisableInterrupts
/* 8033F274  7C 7F 1B 78 */	mr r31, r3
/* 8033F278  48 00 1A 0D */	bl OSGetCurrentThread
/* 8033F27C  80 1D 00 08 */	lwz r0, 8(r29)
/* 8033F280  28 00 00 00 */	cmplwi r0, 0
/* 8033F284  40 82 00 44 */	bne lbl_8033F2C8
/* 8033F288  90 7D 00 08 */	stw r3, 8(r29)
/* 8033F28C  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 8033F290  38 04 00 01 */	addi r0, r4, 1
/* 8033F294  90 1D 00 0C */	stw r0, 0xc(r29)
/* 8033F298  80 83 02 F8 */	lwz r4, 0x2f8(r3)
/* 8033F29C  28 04 00 00 */	cmplwi r4, 0
/* 8033F2A0  40 82 00 0C */	bne lbl_8033F2AC
/* 8033F2A4  93 A3 02 F4 */	stw r29, 0x2f4(r3)
/* 8033F2A8  48 00 00 08 */	b lbl_8033F2B0
lbl_8033F2AC:
/* 8033F2AC  93 A4 00 10 */	stw r29, 0x10(r4)
lbl_8033F2B0:
/* 8033F2B0  90 9D 00 14 */	stw r4, 0x14(r29)
/* 8033F2B4  38 00 00 00 */	li r0, 0
/* 8033F2B8  3B C0 00 01 */	li r30, 1
/* 8033F2BC  90 1D 00 10 */	stw r0, 0x10(r29)
/* 8033F2C0  93 A3 02 F8 */	stw r29, 0x2f8(r3)
/* 8033F2C4  48 00 00 24 */	b lbl_8033F2E8
lbl_8033F2C8:
/* 8033F2C8  7C 00 18 40 */	cmplw r0, r3
/* 8033F2CC  40 82 00 18 */	bne lbl_8033F2E4
/* 8033F2D0  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8033F2D4  3B C0 00 01 */	li r30, 1
/* 8033F2D8  38 03 00 01 */	addi r0, r3, 1
/* 8033F2DC  90 1D 00 0C */	stw r0, 0xc(r29)
/* 8033F2E0  48 00 00 08 */	b lbl_8033F2E8
lbl_8033F2E4:
/* 8033F2E4  3B C0 00 00 */	li r30, 0
lbl_8033F2E8:
/* 8033F2E8  7F E3 FB 78 */	mr r3, r31
/* 8033F2EC  4B FF E4 31 */	bl OSRestoreInterrupts
/* 8033F2F0  7F C3 F3 78 */	mr r3, r30
/* 8033F2F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8033F2F8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8033F2FC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8033F300  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8033F304  38 21 00 20 */	addi r1, r1, 0x20
/* 8033F308  7C 08 03 A6 */	mtlr r0
/* 8033F30C  4E 80 00 20 */	blr 
