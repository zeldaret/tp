lbl_8018AAC4:
/* 8018AAC4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8018AAC8  7C 08 02 A6 */	mflr r0
/* 8018AACC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8018AAD0  39 61 00 30 */	addi r11, r1, 0x30
/* 8018AAD4  48 1D 76 F9 */	bl _savegpr_25
/* 8018AAD8  7C 7F 1B 78 */	mr r31, r3
/* 8018AADC  48 00 27 81 */	bl headerTxtChangeAnm__14dFile_select_cFv
/* 8018AAE0  54 7E 06 3E */	clrlwi r30, r3, 0x18
/* 8018AAE4  7F E3 FB 78 */	mr r3, r31
/* 8018AAE8  4B FF C1 C5 */	bl menuMoveAnm__14dFile_select_cFv
/* 8018AAEC  54 7D 06 3E */	clrlwi r29, r3, 0x18
/* 8018AAF0  7F E3 FB 78 */	mr r3, r31
/* 8018AAF4  4B FF AF B9 */	bl selectDataMoveAnm__14dFile_select_cFv
/* 8018AAF8  54 7C 06 3E */	clrlwi r28, r3, 0x18
/* 8018AAFC  7F E3 FB 78 */	mr r3, r31
/* 8018AB00  88 9F 02 65 */	lbz r4, 0x265(r31)
/* 8018AB04  48 00 2B 89 */	bl selectWakuAlpahAnm__14dFile_select_cFUc
/* 8018AB08  54 7B 06 3E */	clrlwi r27, r3, 0x18
/* 8018AB0C  7F E3 FB 78 */	mr r3, r31
/* 8018AB10  88 9F 02 6D */	lbz r4, 0x26d(r31)
/* 8018AB14  48 00 2B 79 */	bl selectWakuAlpahAnm__14dFile_select_cFUc
/* 8018AB18  54 7A 06 3E */	clrlwi r26, r3, 0x18
/* 8018AB1C  7F E3 FB 78 */	mr r3, r31
/* 8018AB20  48 00 28 FD */	bl modoruTxtDispAnm__14dFile_select_cFv
/* 8018AB24  54 79 06 3E */	clrlwi r25, r3, 0x18
/* 8018AB28  7F E3 FB 78 */	mr r3, r31
/* 8018AB2C  48 00 2A 49 */	bl ketteiTxtDispAnm__14dFile_select_cFv
/* 8018AB30  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8018AB34  2C 1E 00 01 */	cmpwi r30, 1
/* 8018AB38  40 82 00 EC */	bne lbl_8018AC24
/* 8018AB3C  2C 1D 00 01 */	cmpwi r29, 1
/* 8018AB40  40 82 00 E4 */	bne lbl_8018AC24
/* 8018AB44  2C 1C 00 01 */	cmpwi r28, 1
/* 8018AB48  40 82 00 DC */	bne lbl_8018AC24
/* 8018AB4C  2C 1B 00 01 */	cmpwi r27, 1
/* 8018AB50  40 82 00 D4 */	bne lbl_8018AC24
/* 8018AB54  2C 1A 00 01 */	cmpwi r26, 1
/* 8018AB58  40 82 00 CC */	bne lbl_8018AC24
/* 8018AB5C  2C 19 00 01 */	cmpwi r25, 1
/* 8018AB60  40 82 00 C4 */	bne lbl_8018AC24
/* 8018AB64  2C 00 00 01 */	cmpwi r0, 1
/* 8018AB68  40 82 00 BC */	bne lbl_8018AC24
/* 8018AB6C  88 1F 02 67 */	lbz r0, 0x267(r31)
/* 8018AB70  28 00 00 FF */	cmplwi r0, 0xff
/* 8018AB74  41 82 00 A8 */	beq lbl_8018AC1C
/* 8018AB78  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 8018AB7C  7C 7F 02 14 */	add r3, r31, r0
/* 8018AB80  80 63 03 40 */	lwz r3, 0x340(r3)
/* 8018AB84  80 63 00 04 */	lwz r3, 4(r3)
/* 8018AB88  80 9F 03 28 */	lwz r4, 0x328(r31)
/* 8018AB8C  81 83 00 00 */	lwz r12, 0(r3)
/* 8018AB90  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8018AB94  7D 89 03 A6 */	mtctr r12
/* 8018AB98  4E 80 04 21 */	bctrl 
/* 8018AB9C  88 1F 02 67 */	lbz r0, 0x267(r31)
/* 8018ABA0  54 00 10 3A */	slwi r0, r0, 2
/* 8018ABA4  3C 60 80 3C */	lis r3, MenuSelStartFrameTbl@ha
/* 8018ABA8  38 63 A8 84 */	addi r3, r3, MenuSelStartFrameTbl@l
/* 8018ABAC  7C 03 00 2E */	lwzx r0, r3, r0
/* 8018ABB0  C8 22 9F 38 */	lfd f1, lit_4342(r2)
/* 8018ABB4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8018ABB8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8018ABBC  3C 00 43 30 */	lis r0, 0x4330
/* 8018ABC0  90 01 00 08 */	stw r0, 8(r1)
/* 8018ABC4  C8 01 00 08 */	lfd f0, 8(r1)
/* 8018ABC8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8018ABCC  80 7F 03 28 */	lwz r3, 0x328(r31)
/* 8018ABD0  D0 03 00 08 */	stfs f0, 8(r3)
/* 8018ABD4  88 1F 02 67 */	lbz r0, 0x267(r31)
/* 8018ABD8  54 00 10 3A */	slwi r0, r0, 2
/* 8018ABDC  7C 7F 02 14 */	add r3, r31, r0
/* 8018ABE0  80 63 03 40 */	lwz r3, 0x340(r3)
/* 8018ABE4  80 63 00 04 */	lwz r3, 4(r3)
/* 8018ABE8  48 16 D3 E5 */	bl animationTransform__7J2DPaneFv
/* 8018ABEC  88 1F 02 67 */	lbz r0, 0x267(r31)
/* 8018ABF0  54 00 10 3A */	slwi r0, r0, 2
/* 8018ABF4  7C 7F 02 14 */	add r3, r31, r0
/* 8018ABF8  80 63 03 40 */	lwz r3, 0x340(r3)
/* 8018ABFC  80 63 00 04 */	lwz r3, 4(r3)
/* 8018AC00  38 80 00 00 */	li r4, 0
/* 8018AC04  81 83 00 00 */	lwz r12, 0(r3)
/* 8018AC08  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8018AC0C  7D 89 03 A6 */	mtctr r12
/* 8018AC10  4E 80 04 21 */	bctrl 
/* 8018AC14  7F E3 FB 78 */	mr r3, r31
/* 8018AC18  48 00 2D F9 */	bl menuCursorShow__14dFile_select_cFv
lbl_8018AC1C:
/* 8018AC1C  38 00 00 08 */	li r0, 8
/* 8018AC20  98 1F 02 6F */	stb r0, 0x26f(r31)
lbl_8018AC24:
/* 8018AC24  39 61 00 30 */	addi r11, r1, 0x30
/* 8018AC28  48 1D 75 F1 */	bl _restgpr_25
/* 8018AC2C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8018AC30  7C 08 03 A6 */	mtlr r0
/* 8018AC34  38 21 00 30 */	addi r1, r1, 0x30
/* 8018AC38  4E 80 00 20 */	blr 
