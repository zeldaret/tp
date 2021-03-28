lbl_80CC43EC:
/* 80CC43EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC43F0  7C 08 02 A6 */	mflr r0
/* 80CC43F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC43F8  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80CC43FC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80CC4400  7D 89 03 A6 */	mtctr r12
/* 80CC4404  4E 80 04 21 */	bctrl 
/* 80CC4408  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC440C  7C 08 03 A6 */	mtlr r0
/* 80CC4410  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC4414  4E 80 00 20 */	blr 
