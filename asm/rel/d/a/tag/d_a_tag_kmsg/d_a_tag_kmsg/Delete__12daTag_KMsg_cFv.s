lbl_8048DFDC:
/* 8048DFDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048DFE0  7C 08 02 A6 */	mflr r0
/* 8048DFE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048DFE8  38 80 FF FF */	li r4, -1
/* 8048DFEC  81 83 05 C8 */	lwz r12, 0x5c8(r3)
/* 8048DFF0  81 8C 00 08 */	lwz r12, 8(r12)
/* 8048DFF4  7D 89 03 A6 */	mtctr r12
/* 8048DFF8  4E 80 04 21 */	bctrl 
/* 8048DFFC  38 60 00 01 */	li r3, 1
/* 8048E000  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048E004  7C 08 03 A6 */	mtlr r0
/* 8048E008  38 21 00 10 */	addi r1, r1, 0x10
/* 8048E00C  4E 80 00 20 */	blr 
