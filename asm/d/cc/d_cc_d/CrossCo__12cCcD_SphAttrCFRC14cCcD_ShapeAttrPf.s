lbl_80084BAC:
/* 80084BAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80084BB0  7C 08 02 A6 */	mflr r0
/* 80084BB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80084BB8  7C 60 1B 78 */	mr r0, r3
/* 80084BBC  7C 83 23 78 */	mr r3, r4
/* 80084BC0  7C 04 03 78 */	mr r4, r0
/* 80084BC4  81 83 00 1C */	lwz r12, 0x1c(r3)
/* 80084BC8  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 80084BCC  7D 89 03 A6 */	mtctr r12
/* 80084BD0  4E 80 04 21 */	bctrl 
/* 80084BD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80084BD8  7C 08 03 A6 */	mtlr r0
/* 80084BDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80084BE0  4E 80 00 20 */	blr 
