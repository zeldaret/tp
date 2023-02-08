lbl_8048F6B8:
/* 8048F6B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048F6BC  7C 08 02 A6 */	mflr r0
/* 8048F6C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048F6C4  4B FF FF CD */	bl _delete__11daTagMist_cFv
/* 8048F6C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048F6CC  7C 08 03 A6 */	mtlr r0
/* 8048F6D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8048F6D4  4E 80 00 20 */	blr 
