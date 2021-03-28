lbl_806C0C08:
/* 806C0C08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806C0C0C  7C 08 02 A6 */	mflr r0
/* 806C0C10  90 01 00 14 */	stw r0, 0x14(r1)
/* 806C0C14  4B FF FF 81 */	bl _delete__8daE_FZ_cFv
/* 806C0C18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806C0C1C  7C 08 03 A6 */	mtlr r0
/* 806C0C20  38 21 00 10 */	addi r1, r1, 0x10
/* 806C0C24  4E 80 00 20 */	blr 
