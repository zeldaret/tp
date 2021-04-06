lbl_8018FA2C:
/* 8018FA2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8018FA30  7C 08 02 A6 */	mflr r0
/* 8018FA34  90 01 00 24 */	stw r0, 0x24(r1)
/* 8018FA38  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8018FA3C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8018FA40  7C 7E 1B 78 */	mr r30, r3
/* 8018FA44  3B E0 00 00 */	li r31, 0
/* 8018FA48  80 63 02 54 */	lwz r3, 0x254(r3)
/* 8018FA4C  4B EA 27 51 */	bl checkTrigger__9STControlFv
/* 8018FA50  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 8018FA54  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 8018FA58  80 03 00 34 */	lwz r0, 0x34(r3)
/* 8018FA5C  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 8018FA60  41 82 00 90 */	beq lbl_8018FAF0
/* 8018FA64  88 1E 02 68 */	lbz r0, 0x268(r30)
/* 8018FA68  28 00 00 00 */	cmplwi r0, 0
/* 8018FA6C  41 82 00 3C */	beq lbl_8018FAA8
/* 8018FA70  38 00 00 6D */	li r0, 0x6d
/* 8018FA74  90 01 00 0C */	stw r0, 0xc(r1)
/* 8018FA78  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8018FA7C  38 81 00 0C */	addi r4, r1, 0xc
/* 8018FA80  38 A0 00 00 */	li r5, 0
/* 8018FA84  38 C0 00 00 */	li r6, 0
/* 8018FA88  38 E0 00 00 */	li r7, 0
/* 8018FA8C  C0 22 9F 40 */	lfs f1, lit_4611(r2)
/* 8018FA90  FC 40 08 90 */	fmr f2, f1
/* 8018FA94  C0 62 9F 44 */	lfs f3, lit_4612(r2)
/* 8018FA98  FC 80 18 90 */	fmr f4, f3
/* 8018FA9C  39 00 00 00 */	li r8, 0
/* 8018FAA0  48 11 BE E5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8018FAA4  48 00 00 38 */	b lbl_8018FADC
lbl_8018FAA8:
/* 8018FAA8  38 00 00 6E */	li r0, 0x6e
/* 8018FAAC  90 01 00 08 */	stw r0, 8(r1)
/* 8018FAB0  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8018FAB4  38 81 00 08 */	addi r4, r1, 8
/* 8018FAB8  38 A0 00 00 */	li r5, 0
/* 8018FABC  38 C0 00 00 */	li r6, 0
/* 8018FAC0  38 E0 00 00 */	li r7, 0
/* 8018FAC4  C0 22 9F 40 */	lfs f1, lit_4611(r2)
/* 8018FAC8  FC 40 08 90 */	fmr f2, f1
/* 8018FACC  C0 62 9F 44 */	lfs f3, lit_4612(r2)
/* 8018FAD0  FC 80 18 90 */	fmr f4, f3
/* 8018FAD4  39 00 00 00 */	li r8, 0
/* 8018FAD8  48 11 BE AD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_8018FADC:
/* 8018FADC  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 8018FAE0  C0 22 9F 48 */	lfs f1, lit_4778(r2)
/* 8018FAE4  48 00 57 BD */	bl setAlphaRate__16dSelect_cursor_cFf
/* 8018FAE8  3B E0 00 01 */	li r31, 1
/* 8018FAEC  48 00 00 78 */	b lbl_8018FB64
lbl_8018FAF0:
/* 8018FAF0  80 7E 02 54 */	lwz r3, 0x254(r30)
/* 8018FAF4  4B EA 29 B5 */	bl checkRightTrigger__9STControlFv
/* 8018FAF8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8018FAFC  41 82 00 30 */	beq lbl_8018FB2C
/* 8018FB00  88 1E 02 68 */	lbz r0, 0x268(r30)
/* 8018FB04  28 00 00 00 */	cmplwi r0, 0
/* 8018FB08  41 82 00 5C */	beq lbl_8018FB64
/* 8018FB0C  98 1E 02 69 */	stb r0, 0x269(r30)
/* 8018FB10  88 1E 02 68 */	lbz r0, 0x268(r30)
/* 8018FB14  68 00 00 01 */	xori r0, r0, 1
/* 8018FB18  98 1E 02 68 */	stb r0, 0x268(r30)
/* 8018FB1C  7F C3 F3 78 */	mr r3, r30
/* 8018FB20  38 80 00 00 */	li r4, 0
/* 8018FB24  48 00 00 5D */	bl errCurMove__14dFile_select_cFUc
/* 8018FB28  48 00 00 3C */	b lbl_8018FB64
lbl_8018FB2C:
/* 8018FB2C  80 7E 02 54 */	lwz r3, 0x254(r30)
/* 8018FB30  4B EA 28 FD */	bl checkLeftTrigger__9STControlFv
/* 8018FB34  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8018FB38  41 82 00 2C */	beq lbl_8018FB64
/* 8018FB3C  88 1E 02 68 */	lbz r0, 0x268(r30)
/* 8018FB40  28 00 00 01 */	cmplwi r0, 1
/* 8018FB44  41 82 00 20 */	beq lbl_8018FB64
/* 8018FB48  98 1E 02 69 */	stb r0, 0x269(r30)
/* 8018FB4C  88 1E 02 68 */	lbz r0, 0x268(r30)
/* 8018FB50  68 00 00 01 */	xori r0, r0, 1
/* 8018FB54  98 1E 02 68 */	stb r0, 0x268(r30)
/* 8018FB58  7F C3 F3 78 */	mr r3, r30
/* 8018FB5C  38 80 00 00 */	li r4, 0
/* 8018FB60  48 00 00 21 */	bl errCurMove__14dFile_select_cFUc
lbl_8018FB64:
/* 8018FB64  7F E3 FB 78 */	mr r3, r31
/* 8018FB68  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8018FB6C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8018FB70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8018FB74  7C 08 03 A6 */	mtlr r0
/* 8018FB78  38 21 00 20 */	addi r1, r1, 0x20
/* 8018FB7C  4E 80 00 20 */	blr 
