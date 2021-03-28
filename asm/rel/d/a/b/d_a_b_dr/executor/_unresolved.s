lbl_805BADD8:
/* 805BADD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BADDC  7C 08 02 A6 */	mflr r0
/* 805BADE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BADE4  4B CA 82 AC */	b ModuleUnresolved
/* 805BADE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BADEC  7C 08 03 A6 */	mtlr r0
/* 805BADF0  38 21 00 10 */	addi r1, r1, 0x10
/* 805BADF4  4E 80 00 20 */	blr 
