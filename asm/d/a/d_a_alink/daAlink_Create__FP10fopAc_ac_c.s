lbl_800A660C:
/* 800A660C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A6610  7C 08 02 A6 */	mflr r0
/* 800A6614  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A6618  4B FF F6 B1 */	bl create__9daAlink_cFv
/* 800A661C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A6620  7C 08 03 A6 */	mtlr r0
/* 800A6624  38 21 00 10 */	addi r1, r1, 0x10
/* 800A6628  4E 80 00 20 */	blr 
