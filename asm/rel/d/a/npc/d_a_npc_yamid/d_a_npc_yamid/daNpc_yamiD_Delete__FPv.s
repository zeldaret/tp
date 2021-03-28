lbl_80B44D20:
/* 80B44D20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B44D24  7C 08 02 A6 */	mflr r0
/* 80B44D28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B44D2C  4B FF EA 5D */	bl Delete__13daNpc_yamiD_cFv
/* 80B44D30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B44D34  7C 08 03 A6 */	mtlr r0
/* 80B44D38  38 21 00 10 */	addi r1, r1, 0x10
/* 80B44D3C  4E 80 00 20 */	blr 
