lbl_801C9B64:
/* 801C9B64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C9B68  7C 08 02 A6 */	mflr r0
/* 801C9B6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C9B70  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801C9B74  7C 7F 1B 78 */	mr r31, r3
/* 801C9B78  48 00 1A ED */	bl talkButton__12dMenu_Fmap_cFv
/* 801C9B7C  38 7F 00 C4 */	addi r3, r31, 0xc4
/* 801C9B80  38 80 00 00 */	li r4, 0
/* 801C9B84  38 A0 00 00 */	li r5, 0
/* 801C9B88  38 C0 00 00 */	li r6, 0
/* 801C9B8C  48 08 07 4D */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 801C9B90  48 06 E8 41 */	bl getMessageID__12dMsgObject_cFv
/* 801C9B94  28 03 07 D8 */	cmplwi r3, 0x7d8
/* 801C9B98  40 80 00 10 */	bge lbl_801C9BA8
/* 801C9B9C  A8 1F 02 14 */	lha r0, 0x214(r31)
/* 801C9BA0  2C 00 00 0A */	cmpwi r0, 0xa
/* 801C9BA4  40 80 00 C4 */	bge lbl_801C9C68
lbl_801C9BA8:
/* 801C9BA8  A8 1F 02 14 */	lha r0, 0x214(r31)
/* 801C9BAC  2C 00 00 0A */	cmpwi r0, 0xa
/* 801C9BB0  40 82 00 38 */	bne lbl_801C9BE8
/* 801C9BB4  38 00 00 BD */	li r0, 0xbd
/* 801C9BB8  90 01 00 08 */	stw r0, 8(r1)
/* 801C9BBC  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801C9BC0  38 81 00 08 */	addi r4, r1, 8
/* 801C9BC4  38 A0 00 00 */	li r5, 0
/* 801C9BC8  38 C0 00 00 */	li r6, 0
/* 801C9BCC  38 E0 00 00 */	li r7, 0
/* 801C9BD0  C0 22 A7 24 */	lfs f1, lit_3995(r2)
/* 801C9BD4  FC 40 08 90 */	fmr f2, f1
/* 801C9BD8  C0 62 A7 54 */	lfs f3, lit_4541(r2)
/* 801C9BDC  FC 80 18 90 */	fmr f4, f3
/* 801C9BE0  39 00 00 00 */	li r8, 0
/* 801C9BE4  48 0E 1D A1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_801C9BE8:
/* 801C9BE8  A8 7F 02 14 */	lha r3, 0x214(r31)
/* 801C9BEC  38 03 FF FF */	addi r0, r3, -1
/* 801C9BF0  B0 1F 02 14 */	sth r0, 0x214(r31)
/* 801C9BF4  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C9BF8  A8 1F 02 14 */	lha r0, 0x214(r31)
/* 801C9BFC  C8 22 A7 40 */	lfd f1, lit_4358(r2)
/* 801C9C00  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801C9C04  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C9C08  3C 00 43 30 */	lis r0, 0x4330
/* 801C9C0C  90 01 00 10 */	stw r0, 0x10(r1)
/* 801C9C10  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801C9C14  EC 20 08 28 */	fsubs f1, f0, f1
/* 801C9C18  C0 02 A7 3C */	lfs f0, lit_4353(r2)
/* 801C9C1C  EC 21 00 24 */	fdivs f1, f1, f0
/* 801C9C20  48 00 75 29 */	bl zoomMapCalc__18dMenu_Fmap2DBack_cFf
/* 801C9C24  A8 1F 02 14 */	lha r0, 0x214(r31)
/* 801C9C28  2C 00 00 00 */	cmpwi r0, 0
/* 801C9C2C  41 81 00 3C */	bgt lbl_801C9C68
/* 801C9C30  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801C9C34  88 03 12 2F */	lbz r0, 0x122f(r3)
/* 801C9C38  28 00 00 00 */	cmplwi r0, 0
/* 801C9C3C  41 82 00 18 */	beq lbl_801C9C54
/* 801C9C40  7F E3 FB 78 */	mr r3, r31
/* 801C9C44  48 00 29 D9 */	bl removeAreaData__12dMenu_Fmap_cFv
/* 801C9C48  7F E3 FB 78 */	mr r3, r31
/* 801C9C4C  38 80 00 FF */	li r4, 0xff
/* 801C9C50  48 00 1B 21 */	bl readWorldData__12dMenu_Fmap_cFUc
lbl_801C9C54:
/* 801C9C54  38 00 00 01 */	li r0, 1
/* 801C9C58  98 1F 03 07 */	stb r0, 0x307(r31)
/* 801C9C5C  7F E3 FB 78 */	mr r3, r31
/* 801C9C60  38 80 00 01 */	li r4, 1
/* 801C9C64  48 00 1A 6D */	bl setProcess__12dMenu_Fmap_cFUc
lbl_801C9C68:
/* 801C9C68  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801C9C6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C9C70  7C 08 03 A6 */	mtlr r0
/* 801C9C74  38 21 00 20 */	addi r1, r1, 0x20
/* 801C9C78  4E 80 00 20 */	blr 
