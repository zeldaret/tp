lbl_80D3F1D0:
/* 80D3F1D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3F1D4  7C 08 02 A6 */	mflr r0
/* 80D3F1D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3F1DC  81 83 05 68 */	lwz r12, 0x568(r3)
/* 80D3F1E0  81 8C 00 08 */	lwz r12, 8(r12)
/* 80D3F1E4  7D 89 03 A6 */	mtctr r12
/* 80D3F1E8  4E 80 04 21 */	bctrl 
/* 80D3F1EC  38 60 00 01 */	li r3, 1
/* 80D3F1F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3F1F4  7C 08 03 A6 */	mtlr r0
/* 80D3F1F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3F1FC  4E 80 00 20 */	blr 
