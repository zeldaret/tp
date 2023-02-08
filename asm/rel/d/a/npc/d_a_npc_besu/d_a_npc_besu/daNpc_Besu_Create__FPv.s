lbl_8053D29C:
/* 8053D29C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053D2A0  7C 08 02 A6 */	mflr r0
/* 8053D2A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053D2A8  4B FF 9D 75 */	bl create__12daNpc_Besu_cFv
/* 8053D2AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053D2B0  7C 08 03 A6 */	mtlr r0
/* 8053D2B4  38 21 00 10 */	addi r1, r1, 0x10
/* 8053D2B8  4E 80 00 20 */	blr 
