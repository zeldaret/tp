lbl_8034C1E0:
/* 8034C1E0  7C 08 02 A6 */	mflr r0
/* 8034C1E4  90 01 00 04 */	stw r0, 4(r1)
/* 8034C1E8  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8034C1EC  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8034C1F0  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8034C1F4  7C 7E 1B 78 */	mr r30, r3
/* 8034C1F8  83 ED 92 74 */	lwz r31, PreCB(r13)
/* 8034C1FC  4B FF 14 F9 */	bl OSDisableInterrupts
/* 8034C200  93 CD 92 74 */	stw r30, PreCB(r13)
/* 8034C204  4B FF 15 19 */	bl OSRestoreInterrupts
/* 8034C208  7F E3 FB 78 */	mr r3, r31
/* 8034C20C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8034C210  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8034C214  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8034C218  38 21 00 18 */	addi r1, r1, 0x18
/* 8034C21C  7C 08 03 A6 */	mtlr r0
/* 8034C220  4E 80 00 20 */	blr 
