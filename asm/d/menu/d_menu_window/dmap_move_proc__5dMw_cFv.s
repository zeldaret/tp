lbl_801FB404:
/* 801FB404  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801FB408  7C 08 02 A6 */	mflr r0
/* 801FB40C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801FB410  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801FB414  7C 7F 1B 78 */	mr r31, r3
/* 801FB418  80 63 01 18 */	lwz r3, 0x118(r3)
/* 801FB41C  4B FC 3F 19 */	bl getNextStatus__12dMenu_Dmap_cFv
/* 801FB420  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801FB424  28 00 00 01 */	cmplwi r0, 1
/* 801FB428  40 82 00 A0 */	bne lbl_801FB4C8
/* 801FB42C  48 01 22 25 */	bl isEnableDispMapAndMapDispSizeTypeNo__11dMeterMap_cFv
/* 801FB430  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FB434  41 82 00 20 */	beq lbl_801FB454
/* 801FB438  38 00 00 01 */	li r0, 1
/* 801FB43C  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801FB440  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801FB444  98 03 00 BF */	stb r0, 0xbf(r3)
/* 801FB448  80 63 00 20 */	lwz r3, 0x20(r3)
/* 801FB44C  48 01 24 29 */	bl setDispPosInsideFlg_SE_On__11dMeterMap_cFv
/* 801FB450  48 00 00 1C */	b lbl_801FB46C
lbl_801FB454:
/* 801FB454  38 00 00 00 */	li r0, 0
/* 801FB458  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801FB45C  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801FB460  98 03 00 BF */	stb r0, 0xbf(r3)
/* 801FB464  80 63 00 20 */	lwz r3, 0x20(r3)
/* 801FB468  48 01 24 55 */	bl setDispPosOutsideFlg_SE_On__11dMeterMap_cFv
lbl_801FB46C:
/* 801FB46C  38 00 02 00 */	li r0, 0x200
/* 801FB470  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801FB474  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801FB478  B0 03 00 AA */	sth r0, 0xaa(r3)
/* 801FB47C  38 00 00 0C */	li r0, 0xc
/* 801FB480  98 1F 01 46 */	stb r0, 0x146(r31)
/* 801FB484  38 00 00 03 */	li r0, 3
/* 801FB488  80 7F 01 18 */	lwz r3, 0x118(r31)
/* 801FB48C  98 03 01 7A */	stb r0, 0x17a(r3)
/* 801FB490  38 00 00 BB */	li r0, 0xbb
/* 801FB494  90 01 00 10 */	stw r0, 0x10(r1)
/* 801FB498  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801FB49C  38 81 00 10 */	addi r4, r1, 0x10
/* 801FB4A0  38 A0 00 00 */	li r5, 0
/* 801FB4A4  38 C0 00 00 */	li r6, 0
/* 801FB4A8  38 E0 00 00 */	li r7, 0
/* 801FB4AC  C0 22 AA C4 */	lfs f1, lit_4386(r2)
/* 801FB4B0  FC 40 08 90 */	fmr f2, f1
/* 801FB4B4  C0 62 AA C8 */	lfs f3, lit_4387(r2)
/* 801FB4B8  FC 80 18 90 */	fmr f4, f3
/* 801FB4BC  39 00 00 00 */	li r8, 0
/* 801FB4C0  48 0B 04 C5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801FB4C4  48 00 01 04 */	b lbl_801FB5C8
lbl_801FB4C8:
/* 801FB4C8  28 00 00 02 */	cmplwi r0, 2
/* 801FB4CC  40 82 00 70 */	bne lbl_801FB53C
/* 801FB4D0  38 00 00 00 */	li r0, 0
/* 801FB4D4  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801FB4D8  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801FB4DC  98 03 00 BF */	stb r0, 0xbf(r3)
/* 801FB4E0  38 00 04 00 */	li r0, 0x400
/* 801FB4E4  B0 03 00 AA */	sth r0, 0xaa(r3)
/* 801FB4E8  38 00 00 0C */	li r0, 0xc
/* 801FB4EC  98 1F 01 46 */	stb r0, 0x146(r31)
/* 801FB4F0  80 63 00 20 */	lwz r3, 0x20(r3)
/* 801FB4F4  48 01 23 C9 */	bl setDispPosOutsideFlg_SE_On__11dMeterMap_cFv
/* 801FB4F8  38 00 00 01 */	li r0, 1
/* 801FB4FC  80 7F 01 18 */	lwz r3, 0x118(r31)
/* 801FB500  98 03 01 7A */	stb r0, 0x17a(r3)
/* 801FB504  38 00 00 BB */	li r0, 0xbb
/* 801FB508  90 01 00 0C */	stw r0, 0xc(r1)
/* 801FB50C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801FB510  38 81 00 0C */	addi r4, r1, 0xc
/* 801FB514  38 A0 00 00 */	li r5, 0
/* 801FB518  38 C0 00 00 */	li r6, 0
/* 801FB51C  38 E0 00 00 */	li r7, 0
/* 801FB520  C0 22 AA C4 */	lfs f1, lit_4386(r2)
/* 801FB524  FC 40 08 90 */	fmr f2, f1
/* 801FB528  C0 62 AA C8 */	lfs f3, lit_4387(r2)
/* 801FB52C  FC 80 18 90 */	fmr f4, f3
/* 801FB530  39 00 00 00 */	li r8, 0
/* 801FB534  48 0B 04 51 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801FB538  48 00 00 90 */	b lbl_801FB5C8
lbl_801FB53C:
/* 801FB53C  28 00 00 03 */	cmplwi r0, 3
/* 801FB540  40 82 00 80 */	bne lbl_801FB5C0
/* 801FB544  48 01 21 0D */	bl isEnableDispMapAndMapDispSizeTypeNo__11dMeterMap_cFv
/* 801FB548  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FB54C  41 82 00 18 */	beq lbl_801FB564
/* 801FB550  38 00 00 01 */	li r0, 1
/* 801FB554  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801FB558  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801FB55C  98 03 00 BF */	stb r0, 0xbf(r3)
/* 801FB560  48 00 00 14 */	b lbl_801FB574
lbl_801FB564:
/* 801FB564  38 00 00 00 */	li r0, 0
/* 801FB568  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801FB56C  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801FB570  98 03 00 BF */	stb r0, 0xbf(r3)
lbl_801FB574:
/* 801FB574  38 00 00 0C */	li r0, 0xc
/* 801FB578  98 1F 01 46 */	stb r0, 0x146(r31)
/* 801FB57C  38 00 00 02 */	li r0, 2
/* 801FB580  80 7F 01 18 */	lwz r3, 0x118(r31)
/* 801FB584  98 03 01 7A */	stb r0, 0x17a(r3)
/* 801FB588  38 00 00 BB */	li r0, 0xbb
/* 801FB58C  90 01 00 08 */	stw r0, 8(r1)
/* 801FB590  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801FB594  38 81 00 08 */	addi r4, r1, 8
/* 801FB598  38 A0 00 00 */	li r5, 0
/* 801FB59C  38 C0 00 00 */	li r6, 0
/* 801FB5A0  38 E0 00 00 */	li r7, 0
/* 801FB5A4  C0 22 AA C4 */	lfs f1, lit_4386(r2)
/* 801FB5A8  FC 40 08 90 */	fmr f2, f1
/* 801FB5AC  C0 62 AA C8 */	lfs f3, lit_4387(r2)
/* 801FB5B0  FC 80 18 90 */	fmr f4, f3
/* 801FB5B4  39 00 00 00 */	li r8, 0
/* 801FB5B8  48 0B 03 CD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801FB5BC  48 00 00 0C */	b lbl_801FB5C8
lbl_801FB5C0:
/* 801FB5C0  80 7F 01 18 */	lwz r3, 0x118(r31)
/* 801FB5C4  4B FC 27 E1 */	bl _move__12dMenu_Dmap_cFv
lbl_801FB5C8:
/* 801FB5C8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801FB5CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801FB5D0  7C 08 03 A6 */	mtlr r0
/* 801FB5D4  38 21 00 20 */	addi r1, r1, 0x20
/* 801FB5D8  4E 80 00 20 */	blr 
