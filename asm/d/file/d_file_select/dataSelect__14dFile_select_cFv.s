lbl_801853C4:
/* 801853C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801853C8  7C 08 02 A6 */	mflr r0
/* 801853CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801853D0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801853D4  7C 7F 1B 78 */	mr r31, r3
/* 801853D8  80 63 02 54 */	lwz r3, 0x254(r3)
/* 801853DC  4B EA CD C1 */	bl checkTrigger__9STControlFv
/* 801853E0  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha
/* 801853E4  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l
/* 801853E8  80 63 00 34 */	lwz r3, 0x34(r3)
/* 801853EC  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 801853F0  40 82 00 0C */	bne lbl_801853FC
/* 801853F4  54 60 04 E7 */	rlwinm. r0, r3, 0, 0x13, 0x13
/* 801853F8  41 82 00 10 */	beq lbl_80185408
lbl_801853FC:
/* 801853FC  7F E3 FB 78 */	mr r3, r31
/* 80185400  48 00 01 09 */	bl dataSelectStart__14dFile_select_cFv
/* 80185404  48 00 00 F0 */	b lbl_801854F4
lbl_80185408:
/* 80185408  80 7F 02 54 */	lwz r3, 0x254(r31)
/* 8018540C  4B EA D1 19 */	bl checkUpTrigger__9STControlFv
/* 80185410  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80185414  41 82 00 6C */	beq lbl_80185480
/* 80185418  88 1F 02 65 */	lbz r0, 0x265(r31)
/* 8018541C  28 00 00 00 */	cmplwi r0, 0
/* 80185420  41 82 00 D4 */	beq lbl_801854F4
/* 80185424  38 00 00 04 */	li r0, 4
/* 80185428  90 01 00 0C */	stw r0, 0xc(r1)
/* 8018542C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80185430  38 81 00 0C */	addi r4, r1, 0xc
/* 80185434  38 A0 00 00 */	li r5, 0
/* 80185438  38 C0 00 00 */	li r6, 0
/* 8018543C  38 E0 00 00 */	li r7, 0
/* 80185440  C0 22 9F 40 */	lfs f1, lit_4611(r2)
/* 80185444  FC 40 08 90 */	fmr f2, f1
/* 80185448  C0 62 9F 44 */	lfs f3, lit_4612(r2)
/* 8018544C  FC 80 18 90 */	fmr f4, f3
/* 80185450  39 00 00 00 */	li r8, 0
/* 80185454  48 12 65 31 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80185458  88 1F 02 65 */	lbz r0, 0x265(r31)
/* 8018545C  98 1F 02 64 */	stb r0, 0x264(r31)
/* 80185460  88 7F 02 65 */	lbz r3, 0x265(r31)
/* 80185464  38 03 FF FF */	addi r0, r3, -1
/* 80185468  98 1F 02 65 */	stb r0, 0x265(r31)
/* 8018546C  7F E3 FB 78 */	mr r3, r31
/* 80185470  48 00 07 BD */	bl dataSelectAnmSet__14dFile_select_cFv
/* 80185474  38 00 00 04 */	li r0, 4
/* 80185478  98 1F 02 6F */	stb r0, 0x26f(r31)
/* 8018547C  48 00 00 78 */	b lbl_801854F4
lbl_80185480:
/* 80185480  80 7F 02 54 */	lwz r3, 0x254(r31)
/* 80185484  4B EA D1 1D */	bl checkDownTrigger__9STControlFv
/* 80185488  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8018548C  41 82 00 68 */	beq lbl_801854F4
/* 80185490  88 1F 02 65 */	lbz r0, 0x265(r31)
/* 80185494  28 00 00 02 */	cmplwi r0, 2
/* 80185498  41 82 00 5C */	beq lbl_801854F4
/* 8018549C  38 00 00 04 */	li r0, 4
/* 801854A0  90 01 00 08 */	stw r0, 8(r1)
/* 801854A4  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801854A8  38 81 00 08 */	addi r4, r1, 8
/* 801854AC  38 A0 00 00 */	li r5, 0
/* 801854B0  38 C0 00 00 */	li r6, 0
/* 801854B4  38 E0 00 00 */	li r7, 0
/* 801854B8  C0 22 9F 40 */	lfs f1, lit_4611(r2)
/* 801854BC  FC 40 08 90 */	fmr f2, f1
/* 801854C0  C0 62 9F 44 */	lfs f3, lit_4612(r2)
/* 801854C4  FC 80 18 90 */	fmr f4, f3
/* 801854C8  39 00 00 00 */	li r8, 0
/* 801854CC  48 12 64 B9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801854D0  88 1F 02 65 */	lbz r0, 0x265(r31)
/* 801854D4  98 1F 02 64 */	stb r0, 0x264(r31)
/* 801854D8  88 7F 02 65 */	lbz r3, 0x265(r31)
/* 801854DC  38 03 00 01 */	addi r0, r3, 1
/* 801854E0  98 1F 02 65 */	stb r0, 0x265(r31)
/* 801854E4  7F E3 FB 78 */	mr r3, r31
/* 801854E8  48 00 07 45 */	bl dataSelectAnmSet__14dFile_select_cFv
/* 801854EC  38 00 00 04 */	li r0, 4
/* 801854F0  98 1F 02 6F */	stb r0, 0x26f(r31)
lbl_801854F4:
/* 801854F4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801854F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801854FC  7C 08 03 A6 */	mtlr r0
/* 80185500  38 21 00 20 */	addi r1, r1, 0x20
/* 80185504  4E 80 00 20 */	blr 
