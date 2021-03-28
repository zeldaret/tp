lbl_80CA99B8:
/* 80CA99B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA99BC  7C 08 02 A6 */	mflr r0
/* 80CA99C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA99C4  81 83 05 68 */	lwz r12, 0x568(r3)
/* 80CA99C8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80CA99CC  7D 89 03 A6 */	mtctr r12
/* 80CA99D0  4E 80 04 21 */	bctrl 
/* 80CA99D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA99D8  7C 08 03 A6 */	mtlr r0
/* 80CA99DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA99E0  4E 80 00 20 */	blr 
