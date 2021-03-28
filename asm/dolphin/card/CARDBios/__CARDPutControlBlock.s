lbl_80353C6C:
/* 80353C6C  7C 08 02 A6 */	mflr r0
/* 80353C70  90 01 00 04 */	stw r0, 4(r1)
/* 80353C74  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80353C78  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80353C7C  3B E4 00 00 */	addi r31, r4, 0
/* 80353C80  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80353C84  3B C3 00 00 */	addi r30, r3, 0
/* 80353C88  4B FE 9A 6D */	bl OSDisableInterrupts
/* 80353C8C  80 1E 00 00 */	lwz r0, 0(r30)
/* 80353C90  2C 00 00 00 */	cmpwi r0, 0
/* 80353C94  41 82 00 0C */	beq lbl_80353CA0
/* 80353C98  93 FE 00 04 */	stw r31, 4(r30)
/* 80353C9C  48 00 00 14 */	b lbl_80353CB0
lbl_80353CA0:
/* 80353CA0  80 1E 00 04 */	lwz r0, 4(r30)
/* 80353CA4  2C 00 FF FF */	cmpwi r0, -1
/* 80353CA8  40 82 00 08 */	bne lbl_80353CB0
/* 80353CAC  93 FE 00 04 */	stw r31, 4(r30)
lbl_80353CB0:
/* 80353CB0  4B FE 9A 6D */	bl OSRestoreInterrupts
/* 80353CB4  7F E3 FB 78 */	mr r3, r31
/* 80353CB8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80353CBC  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80353CC0  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80353CC4  38 21 00 18 */	addi r1, r1, 0x18
/* 80353CC8  7C 08 03 A6 */	mtlr r0
/* 80353CCC  4E 80 00 20 */	blr 
