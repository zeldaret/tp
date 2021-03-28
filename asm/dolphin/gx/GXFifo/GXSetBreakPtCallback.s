lbl_8035ABE8:
/* 8035ABE8  7C 08 02 A6 */	mflr r0
/* 8035ABEC  90 01 00 04 */	stw r0, 4(r1)
/* 8035ABF0  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8035ABF4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8035ABF8  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8035ABFC  7C 7E 1B 78 */	mr r30, r3
/* 8035AC00  83 ED 93 DC */	lwz r31, BreakPointCB(r13)
/* 8035AC04  4B FE 2A F1 */	bl OSDisableInterrupts
/* 8035AC08  93 CD 93 DC */	stw r30, BreakPointCB(r13)
/* 8035AC0C  4B FE 2B 11 */	bl OSRestoreInterrupts
/* 8035AC10  7F E3 FB 78 */	mr r3, r31
/* 8035AC14  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8035AC18  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8035AC1C  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8035AC20  38 21 00 18 */	addi r1, r1, 0x18
/* 8035AC24  7C 08 03 A6 */	mtlr r0
/* 8035AC28  4E 80 00 20 */	blr 
