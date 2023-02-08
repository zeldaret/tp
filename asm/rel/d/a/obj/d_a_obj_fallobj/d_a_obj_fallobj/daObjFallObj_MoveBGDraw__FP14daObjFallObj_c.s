lbl_80BE4A44:
/* 80BE4A44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE4A48  7C 08 02 A6 */	mflr r0
/* 80BE4A4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE4A50  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80BE4A54  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80BE4A58  7D 89 03 A6 */	mtctr r12
/* 80BE4A5C  4E 80 04 21 */	bctrl 
/* 80BE4A60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE4A64  7C 08 03 A6 */	mtlr r0
/* 80BE4A68  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE4A6C  4E 80 00 20 */	blr 
