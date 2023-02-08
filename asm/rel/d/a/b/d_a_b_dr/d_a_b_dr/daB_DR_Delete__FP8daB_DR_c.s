lbl_805C5684:
/* 805C5684  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C5688  7C 08 02 A6 */	mflr r0
/* 805C568C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C5690  4B FF FF 21 */	bl _delete__8daB_DR_cFv
/* 805C5694  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C5698  7C 08 03 A6 */	mtlr r0
/* 805C569C  38 21 00 10 */	addi r1, r1, 0x10
/* 805C56A0  4E 80 00 20 */	blr 
