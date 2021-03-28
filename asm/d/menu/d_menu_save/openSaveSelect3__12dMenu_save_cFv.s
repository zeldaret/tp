lbl_801F37A0:
/* 801F37A0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801F37A4  7C 08 02 A6 */	mflr r0
/* 801F37A8  90 01 00 34 */	stw r0, 0x34(r1)
/* 801F37AC  39 61 00 30 */	addi r11, r1, 0x30
/* 801F37B0  48 16 EA 25 */	bl _savegpr_27
/* 801F37B4  7C 7B 1B 78 */	mr r27, r3
/* 801F37B8  48 00 29 69 */	bl modoruTxtDispAnm__12dMenu_save_cFv
/* 801F37BC  7C 7F 1B 78 */	mr r31, r3
/* 801F37C0  3B C0 00 01 */	li r30, 1
/* 801F37C4  3B A0 00 01 */	li r29, 1
/* 801F37C8  3B 80 00 01 */	li r28, 1
/* 801F37CC  88 1B 00 54 */	lbz r0, 0x54(r27)
/* 801F37D0  28 00 00 FF */	cmplwi r0, 0xff
/* 801F37D4  41 82 00 D8 */	beq lbl_801F38AC
/* 801F37D8  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 801F37DC  7C 7B 02 14 */	add r3, r27, r0
/* 801F37E0  80 63 00 F8 */	lwz r3, 0xf8(r3)
/* 801F37E4  3C 80 80 43 */	lis r4, g_msHIO@ha
/* 801F37E8  38 84 E8 4C */	addi r4, r4, g_msHIO@l
/* 801F37EC  88 84 00 07 */	lbz r4, 7(r4)
/* 801F37F0  38 A0 00 00 */	li r5, 0
/* 801F37F4  38 C0 00 FF */	li r6, 0xff
/* 801F37F8  38 E0 00 01 */	li r7, 1
/* 801F37FC  48 06 20 7D */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 801F3800  7C 7E 1B 78 */	mr r30, r3
/* 801F3804  7F 63 DB 78 */	mr r3, r27
/* 801F3808  48 00 2A 71 */	bl ketteiTxtDispAnm__12dMenu_save_cFv
/* 801F380C  7C 7D 1B 78 */	mr r29, r3
/* 801F3810  88 1B 00 54 */	lbz r0, 0x54(r27)
/* 801F3814  54 00 10 3A */	slwi r0, r0, 2
/* 801F3818  7C BB 02 14 */	add r5, r27, r0
/* 801F381C  80 85 00 74 */	lwz r4, 0x74(r5)
/* 801F3820  3C 60 80 3C */	lis r3, SelEndFrameTbl@ha
/* 801F3824  38 63 DF 90 */	addi r3, r3, SelEndFrameTbl@l
/* 801F3828  7C 03 00 2E */	lwzx r0, r3, r0
/* 801F382C  7C 04 00 00 */	cmpw r4, r0
/* 801F3830  41 82 00 7C */	beq lbl_801F38AC
/* 801F3834  38 04 00 02 */	addi r0, r4, 2
/* 801F3838  90 05 00 74 */	stw r0, 0x74(r5)
/* 801F383C  88 1B 00 54 */	lbz r0, 0x54(r27)
/* 801F3840  54 04 10 3A */	slwi r4, r0, 2
/* 801F3844  7C BB 22 14 */	add r5, r27, r4
/* 801F3848  80 05 00 74 */	lwz r0, 0x74(r5)
/* 801F384C  7C 63 20 2E */	lwzx r3, r3, r4
/* 801F3850  7C 00 18 00 */	cmpw r0, r3
/* 801F3854  40 81 00 08 */	ble lbl_801F385C
/* 801F3858  90 65 00 74 */	stw r3, 0x74(r5)
lbl_801F385C:
/* 801F385C  88 1B 00 54 */	lbz r0, 0x54(r27)
/* 801F3860  54 00 10 3A */	slwi r0, r0, 2
/* 801F3864  7C 7B 02 14 */	add r3, r27, r0
/* 801F3868  80 03 00 74 */	lwz r0, 0x74(r3)
/* 801F386C  C8 22 AA 70 */	lfd f1, lit_4185(r2)
/* 801F3870  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801F3874  90 01 00 0C */	stw r0, 0xc(r1)
/* 801F3878  3C 00 43 30 */	lis r0, 0x4330
/* 801F387C  90 01 00 08 */	stw r0, 8(r1)
/* 801F3880  C8 01 00 08 */	lfd f0, 8(r1)
/* 801F3884  EC 00 08 28 */	fsubs f0, f0, f1
/* 801F3888  80 7B 00 40 */	lwz r3, 0x40(r27)
/* 801F388C  D0 03 00 08 */	stfs f0, 8(r3)
/* 801F3890  88 1B 00 54 */	lbz r0, 0x54(r27)
/* 801F3894  54 00 10 3A */	slwi r0, r0, 2
/* 801F3898  7C 7B 02 14 */	add r3, r27, r0
/* 801F389C  80 63 00 68 */	lwz r3, 0x68(r3)
/* 801F38A0  80 63 00 04 */	lwz r3, 4(r3)
/* 801F38A4  48 10 47 29 */	bl animationTransform__7J2DPaneFv
/* 801F38A8  3B 80 00 00 */	li r28, 0
lbl_801F38AC:
/* 801F38AC  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 801F38B0  28 00 00 01 */	cmplwi r0, 1
/* 801F38B4  40 82 00 68 */	bne lbl_801F391C
/* 801F38B8  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 801F38BC  28 00 00 01 */	cmplwi r0, 1
/* 801F38C0  40 82 00 5C */	bne lbl_801F391C
/* 801F38C4  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 801F38C8  28 00 00 01 */	cmplwi r0, 1
/* 801F38CC  40 82 00 50 */	bne lbl_801F391C
/* 801F38D0  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 801F38D4  28 00 00 01 */	cmplwi r0, 1
/* 801F38D8  40 82 00 44 */	bne lbl_801F391C
/* 801F38DC  88 1B 00 54 */	lbz r0, 0x54(r27)
/* 801F38E0  28 00 00 FF */	cmplwi r0, 0xff
/* 801F38E4  41 82 00 30 */	beq lbl_801F3914
/* 801F38E8  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 801F38EC  7C 7B 02 14 */	add r3, r27, r0
/* 801F38F0  80 63 00 68 */	lwz r3, 0x68(r3)
/* 801F38F4  80 63 00 04 */	lwz r3, 4(r3)
/* 801F38F8  38 80 00 00 */	li r4, 0
/* 801F38FC  81 83 00 00 */	lwz r12, 0(r3)
/* 801F3900  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 801F3904  7D 89 03 A6 */	mtctr r12
/* 801F3908  4E 80 04 21 */	bctrl 
/* 801F390C  7F 63 DB 78 */	mr r3, r27
/* 801F3910  48 00 2B 49 */	bl selFileCursorShow__12dMenu_save_cFv
lbl_801F3914:
/* 801F3914  38 00 00 31 */	li r0, 0x31
/* 801F3918  98 1B 01 B2 */	stb r0, 0x1b2(r27)
lbl_801F391C:
/* 801F391C  39 61 00 30 */	addi r11, r1, 0x30
/* 801F3920  48 16 E9 01 */	bl _restgpr_27
/* 801F3924  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801F3928  7C 08 03 A6 */	mtlr r0
/* 801F392C  38 21 00 30 */	addi r1, r1, 0x30
/* 801F3930  4E 80 00 20 */	blr 
