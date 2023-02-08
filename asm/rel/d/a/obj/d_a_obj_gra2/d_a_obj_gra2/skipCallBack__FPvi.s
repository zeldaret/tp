lbl_80C0D3A8:
/* 80C0D3A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C0D3AC  7C 08 02 A6 */	mflr r0
/* 80C0D3B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C0D3B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C0D3B8  7C 7F 1B 78 */	mr r31, r3
/* 80C0D3BC  4B FF FF 41 */	bl skipDemoGra__11daObj_GrA_cFv
/* 80C0D3C0  7F E3 FB 78 */	mr r3, r31
/* 80C0D3C4  4B 40 C8 B9 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80C0D3C8  38 60 00 01 */	li r3, 1
/* 80C0D3CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C0D3D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C0D3D4  7C 08 03 A6 */	mtlr r0
/* 80C0D3D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C0D3DC  4E 80 00 20 */	blr 
