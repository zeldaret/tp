lbl_80CA998C:
/* 80CA998C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA9990  7C 08 02 A6 */	mflr r0
/* 80CA9994  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA9998  81 83 05 68 */	lwz r12, 0x568(r3)
/* 80CA999C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80CA99A0  7D 89 03 A6 */	mtctr r12
/* 80CA99A4  4E 80 04 21 */	bctrl 
/* 80CA99A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA99AC  7C 08 03 A6 */	mtlr r0
/* 80CA99B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA99B4  4E 80 00 20 */	blr 
