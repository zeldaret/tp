lbl_8065B8A8:
/* 8065B8A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8065B8AC  7C 08 02 A6 */	mflr r0
/* 8065B8B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8065B8B4  3C 80 80 66 */	lis r4, data_806634AC@ha /* 0x806634AC@ha */
/* 8065B8B8  38 84 34 AC */	addi r4, r4, data_806634AC@l /* 0x806634AC@l */
/* 8065B8BC  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 8065B8C0  4B C1 53 45 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8065B8C4  7C 63 07 34 */	extsh r3, r3
/* 8065B8C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8065B8CC  7C 08 03 A6 */	mtlr r0
/* 8065B8D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8065B8D4  4E 80 00 20 */	blr 
