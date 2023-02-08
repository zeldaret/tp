lbl_80CA8C20:
/* 80CA8C20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA8C24  7C 08 02 A6 */	mflr r0
/* 80CA8C28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA8C2C  81 83 05 68 */	lwz r12, 0x568(r3)
/* 80CA8C30  81 8C 00 08 */	lwz r12, 8(r12)
/* 80CA8C34  7D 89 03 A6 */	mtctr r12
/* 80CA8C38  4E 80 04 21 */	bctrl 
/* 80CA8C3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA8C40  7C 08 03 A6 */	mtlr r0
/* 80CA8C44  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA8C48  4E 80 00 20 */	blr 
