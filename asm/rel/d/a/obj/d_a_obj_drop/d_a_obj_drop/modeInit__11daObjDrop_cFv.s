lbl_80BE08A0:
/* 80BE08A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE08A4  7C 08 02 A6 */	mflr r0
/* 80BE08A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE08AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE08B0  93 C1 00 08 */	stw r30, 8(r1)
/* 80BE08B4  7C 7E 1B 78 */	mr r30, r3
/* 80BE08B8  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80BE08BC  54 1F C6 3E */	rlwinm r31, r0, 0x18, 0x18, 0x1f
/* 80BE08C0  28 1F 00 FF */	cmplwi r31, 0xff
/* 80BE08C4  41 82 00 24 */	beq lbl_80BE08E8
/* 80BE08C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BE08CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BE08D0  7F E4 FB 78 */	mr r4, r31
/* 80BE08D4  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80BE08D8  7C 05 07 74 */	extsb r5, r0
/* 80BE08DC  4B 45 4A 84 */	b isSwitch__10dSv_info_cCFii
/* 80BE08E0  2C 03 00 00 */	cmpwi r3, 0
/* 80BE08E4  41 82 00 48 */	beq lbl_80BE092C
lbl_80BE08E8:
/* 80BE08E8  7F C3 F3 78 */	mr r3, r30
/* 80BE08EC  4B FF FE 91 */	bl createBodyEffect__11daObjDrop_cFv
/* 80BE08F0  28 1F 00 FF */	cmplwi r31, 0xff
/* 80BE08F4  41 82 00 0C */	beq lbl_80BE0900
/* 80BE08F8  38 00 00 03 */	li r0, 3
/* 80BE08FC  98 1E 06 B7 */	stb r0, 0x6b7(r30)
lbl_80BE0900:
/* 80BE0900  3C 60 80 BE */	lis r3, lit_4183@ha
/* 80BE0904  C0 23 20 08 */	lfs f1, lit_4183@l(r3)
/* 80BE0908  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80BE090C  EC 01 00 2A */	fadds f0, f1, f0
/* 80BE0910  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 80BE0914  38 00 00 02 */	li r0, 2
/* 80BE0918  98 1E 06 B2 */	stb r0, 0x6b2(r30)
/* 80BE091C  38 00 00 03 */	li r0, 3
/* 80BE0920  98 1E 06 B0 */	stb r0, 0x6b0(r30)
/* 80BE0924  38 60 00 01 */	li r3, 1
/* 80BE0928  48 00 00 54 */	b lbl_80BE097C
lbl_80BE092C:
/* 80BE092C  38 00 00 00 */	li r0, 0
/* 80BE0930  98 1E 06 B2 */	stb r0, 0x6b2(r30)
/* 80BE0934  3C 60 80 BE */	lis r3, searchParentSub__FPvPv@ha
/* 80BE0938  38 63 FC D8 */	addi r3, r3, searchParentSub__FPvPv@l
/* 80BE093C  7F C4 F3 78 */	mr r4, r30
/* 80BE0940  4B 44 09 F8 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80BE0944  28 03 00 00 */	cmplwi r3, 0
/* 80BE0948  41 82 00 28 */	beq lbl_80BE0970
/* 80BE094C  41 82 00 0C */	beq lbl_80BE0958
/* 80BE0950  80 03 00 04 */	lwz r0, 4(r3)
/* 80BE0954  48 00 00 08 */	b lbl_80BE095C
lbl_80BE0958:
/* 80BE0958  38 00 FF FF */	li r0, -1
lbl_80BE095C:
/* 80BE095C  90 1E 04 A4 */	stw r0, 0x4a4(r30)
/* 80BE0960  38 00 00 01 */	li r0, 1
/* 80BE0964  98 1E 06 B0 */	stb r0, 0x6b0(r30)
/* 80BE0968  38 60 00 01 */	li r3, 1
/* 80BE096C  48 00 00 10 */	b lbl_80BE097C
lbl_80BE0970:
/* 80BE0970  38 00 00 02 */	li r0, 2
/* 80BE0974  98 1E 06 B0 */	stb r0, 0x6b0(r30)
/* 80BE0978  38 60 00 01 */	li r3, 1
lbl_80BE097C:
/* 80BE097C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE0980  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BE0984  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE0988  7C 08 03 A6 */	mtlr r0
/* 80BE098C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE0990  4E 80 00 20 */	blr 
