lbl_80CB247C:
/* 80CB247C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB2480  7C 08 02 A6 */	mflr r0
/* 80CB2484  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB2488  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80CB248C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80CB2490  7D 89 03 A6 */	mtctr r12
/* 80CB2494  4E 80 04 21 */	bctrl 
/* 80CB2498  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB249C  7C 08 03 A6 */	mtlr r0
/* 80CB24A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB24A4  4E 80 00 20 */	blr 
