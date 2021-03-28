lbl_809D79BC:
/* 809D79BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D79C0  7C 08 02 A6 */	mflr r0
/* 809D79C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D79C8  38 80 FF FF */	li r4, -1
/* 809D79CC  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 809D79D0  81 8C 00 08 */	lwz r12, 8(r12)
/* 809D79D4  7D 89 03 A6 */	mtctr r12
/* 809D79D8  4E 80 04 21 */	bctrl 
/* 809D79DC  38 60 00 01 */	li r3, 1
/* 809D79E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D79E4  7C 08 03 A6 */	mtlr r0
/* 809D79E8  38 21 00 10 */	addi r1, r1, 0x10
/* 809D79EC  4E 80 00 20 */	blr 
