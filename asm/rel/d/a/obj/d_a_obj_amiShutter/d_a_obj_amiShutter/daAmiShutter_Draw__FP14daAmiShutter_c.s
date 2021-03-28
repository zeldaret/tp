lbl_80BA2154:
/* 80BA2154  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA2158  7C 08 02 A6 */	mflr r0
/* 80BA215C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA2160  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80BA2164  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80BA2168  7D 89 03 A6 */	mtctr r12
/* 80BA216C  4E 80 04 21 */	bctrl 
/* 80BA2170  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA2174  7C 08 03 A6 */	mtlr r0
/* 80BA2178  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA217C  4E 80 00 20 */	blr 
