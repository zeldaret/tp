lbl_801BEB44:
/* 801BEB44  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801BEB48  7C 08 02 A6 */	mflr r0
/* 801BEB4C  90 01 00 34 */	stw r0, 0x34(r1)
/* 801BEB50  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801BEB54  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801BEB58  7C 7F 1B 78 */	mr r31, r3
/* 801BEB5C  80 63 00 08 */	lwz r3, 8(r3)
/* 801BEB60  88 03 0D D4 */	lbz r0, 0xdd4(r3)
/* 801BEB64  7C 00 07 74 */	extsb r0, r0
/* 801BEB68  2C 00 FF 9D */	cmpwi r0, -99
/* 801BEB6C  40 82 00 18 */	bne lbl_801BEB84
/* 801BEB70  88 03 0D D5 */	lbz r0, 0xdd5(r3)
/* 801BEB74  28 00 00 FF */	cmplwi r0, 0xff
/* 801BEB78  40 82 00 0C */	bne lbl_801BEB84
/* 801BEB7C  80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 801BEB80  4B E7 36 1D */	bl checkTrigger__9STControlFv
lbl_801BEB84:
/* 801BEB84  88 1F 01 77 */	lbz r0, 0x177(r31)
/* 801BEB88  7C 7F 02 14 */	add r3, r31, r0
/* 801BEB8C  88 03 01 74 */	lbz r0, 0x174(r3)
/* 801BEB90  28 00 00 00 */	cmplwi r0, 0
/* 801BEB94  41 82 00 14 */	beq lbl_801BEBA8
/* 801BEB98  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BEB9C  38 80 00 5D */	li r4, 0x5d
/* 801BEBA0  4B FF A2 45 */	bl setAButtonString__14dMenu_DmapBg_cFUl
/* 801BEBA4  48 00 00 10 */	b lbl_801BEBB4
lbl_801BEBA8:
/* 801BEBA8  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BEBAC  38 80 00 00 */	li r4, 0
/* 801BEBB0  4B FF A2 35 */	bl setAButtonString__14dMenu_DmapBg_cFUl
lbl_801BEBB4:
/* 801BEBB4  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BEBB8  38 80 03 F9 */	li r4, 0x3f9
/* 801BEBBC  4B FF A3 01 */	bl setBButtonString__14dMenu_DmapBg_cFUl
/* 801BEBC0  80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 801BEBC4  4B E7 39 61 */	bl checkUpTrigger__9STControlFv
/* 801BEBC8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801BEBCC  41 82 00 74 */	beq lbl_801BEC40
/* 801BEBD0  7F E3 FB 78 */	mr r3, r31
/* 801BEBD4  38 80 FF FF */	li r4, -1
/* 801BEBD8  48 00 03 51 */	bl getNextItem__12dMenu_Dmap_cFi
/* 801BEBDC  7C 7E 1B 78 */	mr r30, r3
/* 801BEBE0  2C 1E FF FF */	cmpwi r30, -1
/* 801BEBE4  41 82 03 2C */	beq lbl_801BEF10
/* 801BEBE8  38 00 00 4D */	li r0, 0x4d
/* 801BEBEC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801BEBF0  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801BEBF4  38 81 00 1C */	addi r4, r1, 0x1c
/* 801BEBF8  38 A0 00 00 */	li r5, 0
/* 801BEBFC  38 C0 00 00 */	li r6, 0
/* 801BEC00  38 E0 00 00 */	li r7, 0
/* 801BEC04  C0 22 A5 EC */	lfs f1, lit_3963(r2)
/* 801BEC08  FC 40 08 90 */	fmr f2, f1
/* 801BEC0C  C0 62 A6 5C */	lfs f3, lit_6181(r2)
/* 801BEC10  FC 80 18 90 */	fmr f4, f3
/* 801BEC14  39 00 00 00 */	li r8, 0
/* 801BEC18  48 0E CD 6D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801BEC1C  88 1F 01 77 */	lbz r0, 0x177(r31)
/* 801BEC20  98 1F 01 78 */	stb r0, 0x178(r31)
/* 801BEC24  9B DF 01 77 */	stb r30, 0x177(r31)
/* 801BEC28  80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 801BEC2C  A8 03 00 1A */	lha r0, 0x1a(r3)
/* 801BEC30  98 1F 01 79 */	stb r0, 0x179(r31)
/* 801BEC34  7F E3 FB 78 */	mr r3, r31
/* 801BEC38  48 00 03 95 */	bl itemSelectAnmInit__12dMenu_Dmap_cFv
/* 801BEC3C  48 00 02 D4 */	b lbl_801BEF10
lbl_801BEC40:
/* 801BEC40  80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 801BEC44  4B E7 39 5D */	bl checkDownTrigger__9STControlFv
/* 801BEC48  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801BEC4C  41 82 00 74 */	beq lbl_801BECC0
/* 801BEC50  7F E3 FB 78 */	mr r3, r31
/* 801BEC54  38 80 00 01 */	li r4, 1
/* 801BEC58  48 00 02 D1 */	bl getNextItem__12dMenu_Dmap_cFi
/* 801BEC5C  7C 7E 1B 78 */	mr r30, r3
/* 801BEC60  2C 1E FF FF */	cmpwi r30, -1
/* 801BEC64  41 82 02 AC */	beq lbl_801BEF10
/* 801BEC68  38 00 00 4D */	li r0, 0x4d
/* 801BEC6C  90 01 00 18 */	stw r0, 0x18(r1)
/* 801BEC70  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801BEC74  38 81 00 18 */	addi r4, r1, 0x18
/* 801BEC78  38 A0 00 00 */	li r5, 0
/* 801BEC7C  38 C0 00 00 */	li r6, 0
/* 801BEC80  38 E0 00 00 */	li r7, 0
/* 801BEC84  C0 22 A5 EC */	lfs f1, lit_3963(r2)
/* 801BEC88  FC 40 08 90 */	fmr f2, f1
/* 801BEC8C  C0 62 A6 5C */	lfs f3, lit_6181(r2)
/* 801BEC90  FC 80 18 90 */	fmr f4, f3
/* 801BEC94  39 00 00 00 */	li r8, 0
/* 801BEC98  48 0E CC ED */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801BEC9C  88 1F 01 77 */	lbz r0, 0x177(r31)
/* 801BECA0  98 1F 01 78 */	stb r0, 0x178(r31)
/* 801BECA4  9B DF 01 77 */	stb r30, 0x177(r31)
/* 801BECA8  80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 801BECAC  A8 03 00 1A */	lha r0, 0x1a(r3)
/* 801BECB0  98 1F 01 79 */	stb r0, 0x179(r31)
/* 801BECB4  7F E3 FB 78 */	mr r3, r31
/* 801BECB8  48 00 03 15 */	bl itemSelectAnmInit__12dMenu_Dmap_cFv
/* 801BECBC  48 00 02 54 */	b lbl_801BEF10
lbl_801BECC0:
/* 801BECC0  80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 801BECC4  4B E7 37 E5 */	bl checkRightTrigger__9STControlFv
/* 801BECC8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801BECCC  41 82 00 90 */	beq lbl_801BED5C
/* 801BECD0  38 00 00 4E */	li r0, 0x4e
/* 801BECD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801BECD8  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801BECDC  38 81 00 14 */	addi r4, r1, 0x14
/* 801BECE0  38 A0 00 00 */	li r5, 0
/* 801BECE4  38 C0 00 00 */	li r6, 0
/* 801BECE8  38 E0 00 00 */	li r7, 0
/* 801BECEC  C0 22 A5 EC */	lfs f1, lit_3963(r2)
/* 801BECF0  FC 40 08 90 */	fmr f2, f1
/* 801BECF4  C0 62 A6 5C */	lfs f3, lit_6181(r2)
/* 801BECF8  FC 80 18 90 */	fmr f4, f3
/* 801BECFC  39 00 00 00 */	li r8, 0
/* 801BED00  48 0E CC 85 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801BED04  80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 801BED08  A8 03 00 18 */	lha r0, 0x18(r3)
/* 801BED0C  98 1F 01 79 */	stb r0, 0x179(r31)
/* 801BED10  38 00 00 03 */	li r0, 3
/* 801BED14  98 1F 01 7B */	stb r0, 0x17b(r31)
/* 801BED18  88 1F 01 7F */	lbz r0, 0x17f(r31)
/* 801BED1C  28 00 00 00 */	cmplwi r0, 0
/* 801BED20  41 82 00 20 */	beq lbl_801BED40
/* 801BED24  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BED28  38 80 00 00 */	li r4, 0
/* 801BED2C  4B FF A0 B9 */	bl setAButtonString__14dMenu_DmapBg_cFUl
/* 801BED30  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BED34  38 80 05 22 */	li r4, 0x522
/* 801BED38  4B FF A1 85 */	bl setBButtonString__14dMenu_DmapBg_cFUl
/* 801BED3C  48 00 01 D4 */	b lbl_801BEF10
lbl_801BED40:
/* 801BED40  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BED44  38 80 05 27 */	li r4, 0x527
/* 801BED48  4B FF A0 9D */	bl setAButtonString__14dMenu_DmapBg_cFUl
/* 801BED4C  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BED50  38 80 03 F9 */	li r4, 0x3f9
/* 801BED54  4B FF A1 69 */	bl setBButtonString__14dMenu_DmapBg_cFUl
/* 801BED58  48 00 01 B8 */	b lbl_801BEF10
lbl_801BED5C:
/* 801BED5C  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BED60  88 03 0D D4 */	lbz r0, 0xdd4(r3)
/* 801BED64  7C 00 07 74 */	extsb r0, r0
/* 801BED68  2C 00 FF 9D */	cmpwi r0, -99
/* 801BED6C  40 82 01 A4 */	bne lbl_801BEF10
/* 801BED70  88 63 0D D5 */	lbz r3, 0xdd5(r3)
/* 801BED74  28 03 00 FF */	cmplwi r3, 0xff
/* 801BED78  41 82 00 70 */	beq lbl_801BEDE8
/* 801BED7C  88 1F 01 77 */	lbz r0, 0x177(r31)
/* 801BED80  7C 00 18 40 */	cmplw r0, r3
/* 801BED84  41 82 00 64 */	beq lbl_801BEDE8
/* 801BED88  38 00 00 4D */	li r0, 0x4d
/* 801BED8C  90 01 00 10 */	stw r0, 0x10(r1)
/* 801BED90  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801BED94  38 81 00 10 */	addi r4, r1, 0x10
/* 801BED98  38 A0 00 00 */	li r5, 0
/* 801BED9C  38 C0 00 00 */	li r6, 0
/* 801BEDA0  38 E0 00 00 */	li r7, 0
/* 801BEDA4  C0 22 A5 EC */	lfs f1, lit_3963(r2)
/* 801BEDA8  FC 40 08 90 */	fmr f2, f1
/* 801BEDAC  C0 62 A6 5C */	lfs f3, lit_6181(r2)
/* 801BEDB0  FC 80 18 90 */	fmr f4, f3
/* 801BEDB4  39 00 00 00 */	li r8, 0
/* 801BEDB8  48 0E CB CD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801BEDBC  88 1F 01 77 */	lbz r0, 0x177(r31)
/* 801BEDC0  98 1F 01 78 */	stb r0, 0x178(r31)
/* 801BEDC4  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BEDC8  88 03 0D D5 */	lbz r0, 0xdd5(r3)
/* 801BEDCC  98 1F 01 77 */	stb r0, 0x177(r31)
/* 801BEDD0  80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 801BEDD4  A8 03 00 1A */	lha r0, 0x1a(r3)
/* 801BEDD8  98 1F 01 79 */	stb r0, 0x179(r31)
/* 801BEDDC  7F E3 FB 78 */	mr r3, r31
/* 801BEDE0  48 00 01 ED */	bl itemSelectAnmInit__12dMenu_Dmap_cFv
/* 801BEDE4  48 00 01 2C */	b lbl_801BEF10
lbl_801BEDE8:
/* 801BEDE8  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 801BEDEC  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 801BEDF0  80 03 00 34 */	lwz r0, 0x34(r3)
/* 801BEDF4  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 801BEDF8  41 82 01 18 */	beq lbl_801BEF10
/* 801BEDFC  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801BEE00  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801BEE04  A0 03 00 B2 */	lhz r0, 0xb2(r3)
/* 801BEE08  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 801BEE0C  40 82 01 04 */	bne lbl_801BEF10
/* 801BEE10  88 1F 01 77 */	lbz r0, 0x177(r31)
/* 801BEE14  7C 7F 02 14 */	add r3, r31, r0
/* 801BEE18  88 03 01 74 */	lbz r0, 0x174(r3)
/* 801BEE1C  28 00 00 00 */	cmplwi r0, 0
/* 801BEE20  41 82 00 BC */	beq lbl_801BEEDC
/* 801BEE24  38 00 00 01 */	li r0, 1
/* 801BEE28  98 1F 01 85 */	stb r0, 0x185(r31)
/* 801BEE2C  38 00 00 00 */	li r0, 0
/* 801BEE30  98 1F 01 83 */	stb r0, 0x183(r31)
/* 801BEE34  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BEE38  4B FF A2 A9 */	bl createExplain__14dMenu_DmapBg_cFv
/* 801BEE3C  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BEE40  80 63 0D 18 */	lwz r3, 0xd18(r3)
/* 801BEE44  88 1F 01 77 */	lbz r0, 0x177(r31)
/* 801BEE48  7C 9F 02 14 */	add r4, r31, r0
/* 801BEE4C  88 84 01 74 */	lbz r4, 0x174(r4)
/* 801BEE50  38 A0 00 00 */	li r5, 0
/* 801BEE54  38 C0 00 00 */	li r6, 0
/* 801BEE58  38 E0 00 00 */	li r7, 0
/* 801BEE5C  39 00 00 FF */	li r8, 0xff
/* 801BEE60  48 01 D5 69 */	bl openExplainDmap__19dMenu_ItemExplain_cFUcUcUcbUc
/* 801BEE64  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801BEE68  41 82 00 A8 */	beq lbl_801BEF10
/* 801BEE6C  38 00 00 01 */	li r0, 1
/* 801BEE70  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BEE74  98 03 0D D0 */	stb r0, 0xdd0(r3)
/* 801BEE78  38 00 00 02 */	li r0, 2
/* 801BEE7C  98 1F 01 7C */	stb r0, 0x17c(r31)
/* 801BEE80  38 00 00 51 */	li r0, 0x51
/* 801BEE84  90 01 00 0C */	stw r0, 0xc(r1)
/* 801BEE88  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801BEE8C  38 81 00 0C */	addi r4, r1, 0xc
/* 801BEE90  38 A0 00 00 */	li r5, 0
/* 801BEE94  38 C0 00 00 */	li r6, 0
/* 801BEE98  38 E0 00 00 */	li r7, 0
/* 801BEE9C  C0 22 A5 EC */	lfs f1, lit_3963(r2)
/* 801BEEA0  FC 40 08 90 */	fmr f2, f1
/* 801BEEA4  C0 62 A6 5C */	lfs f3, lit_6181(r2)
/* 801BEEA8  FC 80 18 90 */	fmr f4, f3
/* 801BEEAC  39 00 00 00 */	li r8, 0
/* 801BEEB0  48 0E CA D5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801BEEB4  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BEEB8  38 80 00 00 */	li r4, 0
/* 801BEEBC  4B FF 9F 29 */	bl setAButtonString__14dMenu_DmapBg_cFUl
/* 801BEEC0  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BEEC4  38 80 00 00 */	li r4, 0
/* 801BEEC8  4B FF 9F F5 */	bl setBButtonString__14dMenu_DmapBg_cFUl
/* 801BEECC  38 00 00 00 */	li r0, 0
/* 801BEED0  B0 1F 01 66 */	sth r0, 0x166(r31)
/* 801BEED4  B0 1F 01 68 */	sth r0, 0x168(r31)
/* 801BEED8  48 00 00 38 */	b lbl_801BEF10
lbl_801BEEDC:
/* 801BEEDC  38 00 00 4A */	li r0, 0x4a
/* 801BEEE0  90 01 00 08 */	stw r0, 8(r1)
/* 801BEEE4  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801BEEE8  38 81 00 08 */	addi r4, r1, 8
/* 801BEEEC  38 A0 00 00 */	li r5, 0
/* 801BEEF0  38 C0 00 00 */	li r6, 0
/* 801BEEF4  38 E0 00 00 */	li r7, 0
/* 801BEEF8  C0 22 A5 EC */	lfs f1, lit_3963(r2)
/* 801BEEFC  FC 40 08 90 */	fmr f2, f1
/* 801BEF00  C0 62 A6 5C */	lfs f3, lit_6181(r2)
/* 801BEF04  FC 80 18 90 */	fmr f4, f3
/* 801BEF08  39 00 00 00 */	li r8, 0
/* 801BEF0C  48 0E CA 79 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_801BEF10:
/* 801BEF10  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801BEF14  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801BEF18  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801BEF1C  7C 08 03 A6 */	mtlr r0
/* 801BEF20  38 21 00 30 */	addi r1, r1, 0x30
/* 801BEF24  4E 80 00 20 */	blr 
