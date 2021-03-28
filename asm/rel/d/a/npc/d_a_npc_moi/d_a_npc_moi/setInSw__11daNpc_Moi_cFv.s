lbl_80A769C8:
/* 80A769C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A769CC  7C 08 02 A6 */	mflr r0
/* 80A769D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A769D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A769D8  7C 7F 1B 78 */	mr r31, r3
/* 80A769DC  4B FF FF 79 */	bl chkSetInSw__11daNpc_Moi_cFv
/* 80A769E0  2C 03 00 00 */	cmpwi r3, 0
/* 80A769E4  41 82 00 28 */	beq lbl_80A76A0C
/* 80A769E8  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80A769EC  38 63 00 0C */	addi r3, r3, 0xc
/* 80A769F0  3C 80 80 A8 */	lis r4, lit_5488@ha
/* 80A769F4  C0 24 B0 8C */	lfs f1, lit_5488@l(r4)
/* 80A769F8  4B 8B 1A 34 */	b checkPass__12J3DFrameCtrlFf
/* 80A769FC  2C 03 00 00 */	cmpwi r3, 0
/* 80A76A00  41 82 00 0C */	beq lbl_80A76A0C
/* 80A76A04  38 00 00 00 */	li r0, 0
/* 80A76A08  98 1F 16 6B */	stb r0, 0x166b(r31)
lbl_80A76A0C:
/* 80A76A0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A76A10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A76A14  7C 08 03 A6 */	mtlr r0
/* 80A76A18  38 21 00 10 */	addi r1, r1, 0x10
/* 80A76A1C  4E 80 00 20 */	blr 
