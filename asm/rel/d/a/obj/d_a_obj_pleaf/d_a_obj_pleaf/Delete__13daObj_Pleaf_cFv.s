lbl_80CB13C4:
/* 80CB13C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB13C8  7C 08 02 A6 */	mflr r0
/* 80CB13CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB13D0  38 80 FF FF */	li r4, -1
/* 80CB13D4  81 83 09 4C */	lwz r12, 0x94c(r3)
/* 80CB13D8  81 8C 00 08 */	lwz r12, 8(r12)
/* 80CB13DC  7D 89 03 A6 */	mtctr r12
/* 80CB13E0  4E 80 04 21 */	bctrl 
/* 80CB13E4  38 60 00 01 */	li r3, 1
/* 80CB13E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB13EC  7C 08 03 A6 */	mtlr r0
/* 80CB13F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB13F4  4E 80 00 20 */	blr 
