lbl_80C29DAC:
/* 80C29DAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C29DB0  7C 08 02 A6 */	mflr r0
/* 80C29DB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C29DB8  38 80 FF FF */	li r4, -1
/* 80C29DBC  81 83 0A 1C */	lwz r12, 0xa1c(r3)
/* 80C29DC0  81 8C 00 08 */	lwz r12, 8(r12)
/* 80C29DC4  7D 89 03 A6 */	mtctr r12
/* 80C29DC8  4E 80 04 21 */	bctrl 
/* 80C29DCC  38 60 00 01 */	li r3, 1
/* 80C29DD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C29DD4  7C 08 03 A6 */	mtlr r0
/* 80C29DD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C29DDC  4E 80 00 20 */	blr 
