lbl_805637A0:
/* 805637A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805637A4  7C 08 02 A6 */	mflr r0
/* 805637A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805637AC  4B FF 86 3D */	bl Delete__12daNpc_Maro_cFv
/* 805637B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805637B4  7C 08 03 A6 */	mtlr r0
/* 805637B8  38 21 00 10 */	addi r1, r1, 0x10
/* 805637BC  4E 80 00 20 */	blr 
