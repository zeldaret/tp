lbl_809F3C0C:
/* 809F3C0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F3C10  7C 08 02 A6 */	mflr r0
/* 809F3C14  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F3C18  4B 75 E3 FD */	bl execute__8daNpcF_cFv
/* 809F3C1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F3C20  7C 08 03 A6 */	mtlr r0
/* 809F3C24  38 21 00 10 */	addi r1, r1, 0x10
/* 809F3C28  4E 80 00 20 */	blr 
