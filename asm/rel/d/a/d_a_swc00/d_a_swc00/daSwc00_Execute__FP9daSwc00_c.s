lbl_805A15DC:
/* 805A15DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A15E0  7C 08 02 A6 */	mflr r0
/* 805A15E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A15E8  48 00 00 15 */	bl execute__9daSwc00_cFv
/* 805A15EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A15F0  7C 08 03 A6 */	mtlr r0
/* 805A15F4  38 21 00 10 */	addi r1, r1, 0x10
/* 805A15F8  4E 80 00 20 */	blr 
