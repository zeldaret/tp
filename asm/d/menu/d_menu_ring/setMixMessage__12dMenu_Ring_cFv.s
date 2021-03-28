lbl_801EED84:
/* 801EED84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801EED88  7C 08 02 A6 */	mflr r0
/* 801EED8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801EED90  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801EED94  7C 7F 1B 78 */	mr r31, r3
/* 801EED98  80 03 00 34 */	lwz r0, 0x34(r3)
/* 801EED9C  28 00 00 00 */	cmplwi r0, 0
/* 801EEDA0  41 82 01 60 */	beq lbl_801EEF00
/* 801EEDA4  4B FF FE F5 */	bl isMixItemOff__12dMenu_Ring_cFv
/* 801EEDA8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801EEDAC  41 82 00 9C */	beq lbl_801EEE48
/* 801EEDB0  38 60 00 00 */	li r3, 0
/* 801EEDB4  7C 66 1B 78 */	mr r6, r3
/* 801EEDB8  38 A0 00 01 */	li r5, 1
/* 801EEDBC  38 00 00 05 */	li r0, 5
/* 801EEDC0  7C 09 03 A6 */	mtctr r0
lbl_801EEDC4:
/* 801EEDC4  7C FF 1A 14 */	add r7, r31, r3
/* 801EEDC8  80 87 01 C8 */	lwz r4, 0x1c8(r7)
/* 801EEDCC  98 C4 00 B0 */	stb r6, 0xb0(r4)
/* 801EEDD0  80 87 01 DC */	lwz r4, 0x1dc(r7)
/* 801EEDD4  98 A4 00 B0 */	stb r5, 0xb0(r4)
/* 801EEDD8  38 63 00 04 */	addi r3, r3, 4
/* 801EEDDC  42 00 FF E8 */	bdnz lbl_801EEDC4
/* 801EEDE0  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 801EEDE4  48 06 68 69 */	bl isVisible__13CPaneMgrAlphaFv
/* 801EEDE8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801EEDEC  40 82 00 50 */	bne lbl_801EEE3C
/* 801EEDF0  C0 22 AA 1C */	lfs f1, lit_6308(r2)
/* 801EEDF4  3C 60 80 43 */	lis r3, g_ringHIO@ha
/* 801EEDF8  38 63 FA FC */	addi r3, r3, g_ringHIO@l
/* 801EEDFC  C0 03 00 E0 */	lfs f0, 0xe0(r3)
/* 801EEE00  EC 01 00 28 */	fsubs f0, f1, f0
/* 801EEE04  D0 1F 05 70 */	stfs f0, 0x570(r31)
/* 801EEE08  38 00 00 B7 */	li r0, 0xb7
/* 801EEE0C  90 01 00 0C */	stw r0, 0xc(r1)
/* 801EEE10  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801EEE14  38 81 00 0C */	addi r4, r1, 0xc
/* 801EEE18  38 A0 00 00 */	li r5, 0
/* 801EEE1C  38 C0 00 00 */	li r6, 0
/* 801EEE20  38 E0 00 00 */	li r7, 0
/* 801EEE24  C0 22 A9 9C */	lfs f1, lit_4305(r2)
/* 801EEE28  FC 40 08 90 */	fmr f2, f1
/* 801EEE2C  C0 62 A9 C0 */	lfs f3, lit_4465(r2)
/* 801EEE30  FC 80 18 90 */	fmr f4, f3
/* 801EEE34  39 00 00 00 */	li r8, 0
/* 801EEE38  48 0B CB 4D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_801EEE3C:
/* 801EEE3C  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 801EEE40  48 06 67 89 */	bl show__13CPaneMgrAlphaFv
/* 801EEE44  48 00 00 BC */	b lbl_801EEF00
lbl_801EEE48:
/* 801EEE48  7F E3 FB 78 */	mr r3, r31
/* 801EEE4C  4B FF FD 0D */	bl isMixItemOn__12dMenu_Ring_cFv
/* 801EEE50  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801EEE54  41 82 00 9C */	beq lbl_801EEEF0
/* 801EEE58  38 60 00 00 */	li r3, 0
/* 801EEE5C  38 C0 00 01 */	li r6, 1
/* 801EEE60  38 A0 00 00 */	li r5, 0
/* 801EEE64  38 00 00 05 */	li r0, 5
/* 801EEE68  7C 09 03 A6 */	mtctr r0
lbl_801EEE6C:
/* 801EEE6C  7C FF 1A 14 */	add r7, r31, r3
/* 801EEE70  80 87 01 C8 */	lwz r4, 0x1c8(r7)
/* 801EEE74  98 C4 00 B0 */	stb r6, 0xb0(r4)
/* 801EEE78  80 87 01 DC */	lwz r4, 0x1dc(r7)
/* 801EEE7C  98 A4 00 B0 */	stb r5, 0xb0(r4)
/* 801EEE80  38 63 00 04 */	addi r3, r3, 4
/* 801EEE84  42 00 FF E8 */	bdnz lbl_801EEE6C
/* 801EEE88  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 801EEE8C  48 06 67 C1 */	bl isVisible__13CPaneMgrAlphaFv
/* 801EEE90  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801EEE94  40 82 00 50 */	bne lbl_801EEEE4
/* 801EEE98  C0 22 AA 1C */	lfs f1, lit_6308(r2)
/* 801EEE9C  3C 60 80 43 */	lis r3, g_ringHIO@ha
/* 801EEEA0  38 63 FA FC */	addi r3, r3, g_ringHIO@l
/* 801EEEA4  C0 03 00 E0 */	lfs f0, 0xe0(r3)
/* 801EEEA8  EC 01 00 28 */	fsubs f0, f1, f0
/* 801EEEAC  D0 1F 05 70 */	stfs f0, 0x570(r31)
/* 801EEEB0  38 00 00 B7 */	li r0, 0xb7
/* 801EEEB4  90 01 00 08 */	stw r0, 8(r1)
/* 801EEEB8  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801EEEBC  38 81 00 08 */	addi r4, r1, 8
/* 801EEEC0  38 A0 00 00 */	li r5, 0
/* 801EEEC4  38 C0 00 00 */	li r6, 0
/* 801EEEC8  38 E0 00 00 */	li r7, 0
/* 801EEECC  C0 22 A9 9C */	lfs f1, lit_4305(r2)
/* 801EEED0  FC 40 08 90 */	fmr f2, f1
/* 801EEED4  C0 62 A9 C0 */	lfs f3, lit_4465(r2)
/* 801EEED8  FC 80 18 90 */	fmr f4, f3
/* 801EEEDC  39 00 00 00 */	li r8, 0
/* 801EEEE0  48 0B CA A5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_801EEEE4:
/* 801EEEE4  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 801EEEE8  48 06 66 E1 */	bl show__13CPaneMgrAlphaFv
/* 801EEEEC  48 00 00 14 */	b lbl_801EEF00
lbl_801EEEF0:
/* 801EEEF0  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 801EEEF4  48 06 67 15 */	bl hide__13CPaneMgrAlphaFv
/* 801EEEF8  C0 02 A9 88 */	lfs f0, lit_4300(r2)
/* 801EEEFC  D0 1F 05 70 */	stfs f0, 0x570(r31)
lbl_801EEF00:
/* 801EEF00  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801EEF04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801EEF08  7C 08 03 A6 */	mtlr r0
/* 801EEF0C  38 21 00 20 */	addi r1, r1, 0x20
/* 801EEF10  4E 80 00 20 */	blr 
