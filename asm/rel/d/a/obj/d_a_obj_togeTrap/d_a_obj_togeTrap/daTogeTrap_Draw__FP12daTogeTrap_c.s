lbl_80D18CD4:
/* 80D18CD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D18CD8  7C 08 02 A6 */	mflr r0
/* 80D18CDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D18CE0  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80D18CE4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80D18CE8  7D 89 03 A6 */	mtctr r12
/* 80D18CEC  4E 80 04 21 */	bctrl 
/* 80D18CF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D18CF4  7C 08 03 A6 */	mtlr r0
/* 80D18CF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D18CFC  4E 80 00 20 */	blr 
