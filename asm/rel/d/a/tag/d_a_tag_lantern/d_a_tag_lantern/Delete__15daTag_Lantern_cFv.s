lbl_8048EDA8:
/* 8048EDA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048EDAC  7C 08 02 A6 */	mflr r0
/* 8048EDB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048EDB4  38 80 FF FF */	li r4, -1
/* 8048EDB8  81 83 06 08 */	lwz r12, 0x608(r3)
/* 8048EDBC  81 8C 00 08 */	lwz r12, 8(r12)
/* 8048EDC0  7D 89 03 A6 */	mtctr r12
/* 8048EDC4  4E 80 04 21 */	bctrl 
/* 8048EDC8  38 60 00 01 */	li r3, 1
/* 8048EDCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048EDD0  7C 08 03 A6 */	mtlr r0
/* 8048EDD4  38 21 00 10 */	addi r1, r1, 0x10
/* 8048EDD8  4E 80 00 20 */	blr 
