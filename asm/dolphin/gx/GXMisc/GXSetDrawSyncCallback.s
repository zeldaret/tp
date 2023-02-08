lbl_8035C4E0:
/* 8035C4E0  7C 08 02 A6 */	mflr r0
/* 8035C4E4  90 01 00 04 */	stw r0, 4(r1)
/* 8035C4E8  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8035C4EC  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8035C4F0  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8035C4F4  7C 7E 1B 78 */	mr r30, r3
/* 8035C4F8  83 ED 93 E8 */	lwz r31, TokenCB(r13)
/* 8035C4FC  4B FE 11 F9 */	bl OSDisableInterrupts
/* 8035C500  93 CD 93 E8 */	stw r30, TokenCB(r13)
/* 8035C504  4B FE 12 19 */	bl OSRestoreInterrupts
/* 8035C508  7F E3 FB 78 */	mr r3, r31
/* 8035C50C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8035C510  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8035C514  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8035C518  38 21 00 18 */	addi r1, r1, 0x18
/* 8035C51C  7C 08 03 A6 */	mtlr r0
/* 8035C520  4E 80 00 20 */	blr 
