lbl_8034C224:
/* 8034C224  7C 08 02 A6 */	mflr r0
/* 8034C228  90 01 00 04 */	stw r0, 4(r1)
/* 8034C22C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8034C230  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8034C234  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8034C238  7C 7E 1B 78 */	mr r30, r3
/* 8034C23C  83 ED 92 78 */	lwz r31, PostCB(r13)
/* 8034C240  4B FF 14 B5 */	bl OSDisableInterrupts
/* 8034C244  93 CD 92 78 */	stw r30, PostCB(r13)
/* 8034C248  4B FF 14 D5 */	bl OSRestoreInterrupts
/* 8034C24C  7F E3 FB 78 */	mr r3, r31
/* 8034C250  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8034C254  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8034C258  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8034C25C  38 21 00 18 */	addi r1, r1, 0x18
/* 8034C260  7C 08 03 A6 */	mtlr r0
/* 8034C264  4E 80 00 20 */	blr 
