lbl_801BDD40:
/* 801BDD40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801BDD44  7C 08 02 A6 */	mflr r0
/* 801BDD48  90 01 00 14 */	stw r0, 0x14(r1)
/* 801BDD4C  88 A3 01 08 */	lbz r5, 0x108(r3)
/* 801BDD50  81 83 00 00 */	lwz r12, 0(r3)
/* 801BDD54  81 8C 00 C4 */	lwz r12, 0xc4(r12)
/* 801BDD58  7D 89 03 A6 */	mtctr r12
/* 801BDD5C  4E 80 04 21 */	bctrl 
/* 801BDD60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801BDD64  7C 08 03 A6 */	mtlr r0
/* 801BDD68  38 21 00 10 */	addi r1, r1, 0x10
/* 801BDD6C  4E 80 00 20 */	blr 
