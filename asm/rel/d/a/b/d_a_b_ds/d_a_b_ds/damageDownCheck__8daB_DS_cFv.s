lbl_805D0584:
/* 805D0584  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805D0588  7C 08 02 A6 */	mflr r0
/* 805D058C  90 01 00 64 */	stw r0, 0x64(r1)
/* 805D0590  39 61 00 60 */	addi r11, r1, 0x60
/* 805D0594  4B D9 1C 35 */	bl _savegpr_24
/* 805D0598  7C 7E 1B 78 */	mr r30, r3
/* 805D059C  3C 60 80 5E */	lis r3, lit_3932@ha /* 0x805DCA54@ha */
/* 805D05A0  3B E3 CA 54 */	addi r31, r3, lit_3932@l /* 0x805DCA54@l */
/* 805D05A4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 805D05A8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805D05AC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805D05B0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805D05B4  80 1E 04 E4 */	lwz r0, 0x4e4(r30)
/* 805D05B8  90 01 00 20 */	stw r0, 0x20(r1)
/* 805D05BC  A0 1E 04 E8 */	lhz r0, 0x4e8(r30)
/* 805D05C0  B0 01 00 24 */	sth r0, 0x24(r1)
/* 805D05C4  80 1E 06 8C */	lwz r0, 0x68c(r30)
/* 805D05C8  2C 00 00 1E */	cmpwi r0, 0x1e
/* 805D05CC  41 82 00 0C */	beq lbl_805D05D8
/* 805D05D0  2C 00 00 20 */	cmpwi r0, 0x20
/* 805D05D4  40 82 01 60 */	bne lbl_805D0734
lbl_805D05D8:
/* 805D05D8  3B 20 00 12 */	li r25, 0x12
/* 805D05DC  80 1E 08 14 */	lwz r0, 0x814(r30)
/* 805D05E0  2C 00 00 00 */	cmpwi r0, 0
/* 805D05E4  40 82 00 54 */	bne lbl_805D0638
/* 805D05E8  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D05EC  38 63 00 0C */	addi r3, r3, 0xc
/* 805D05F0  C0 3F 02 BC */	lfs f1, 0x2bc(r31)
/* 805D05F4  4B D5 7E 39 */	bl checkPass__12J3DFrameCtrlFf
/* 805D05F8  2C 03 00 00 */	cmpwi r3, 0
/* 805D05FC  41 82 00 10 */	beq lbl_805D060C
/* 805D0600  7F C3 F3 78 */	mr r3, r30
/* 805D0604  38 80 00 01 */	li r4, 1
/* 805D0608  4B FF BB 51 */	bl hand_smokeSet__8daB_DS_cFUc
lbl_805D060C:
/* 805D060C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D0610  38 63 00 0C */	addi r3, r3, 0xc
/* 805D0614  C0 3F 02 F0 */	lfs f1, 0x2f0(r31)
/* 805D0618  4B D5 7E 15 */	bl checkPass__12J3DFrameCtrlFf
/* 805D061C  2C 03 00 00 */	cmpwi r3, 0
/* 805D0620  41 82 00 10 */	beq lbl_805D0630
/* 805D0624  7F C3 F3 78 */	mr r3, r30
/* 805D0628  38 80 00 02 */	li r4, 2
/* 805D062C  4B FF BB 2D */	bl hand_smokeSet__8daB_DS_cFUc
lbl_805D0630:
/* 805D0630  3B 20 00 23 */	li r25, 0x23
/* 805D0634  48 00 00 4C */	b lbl_805D0680
lbl_805D0638:
/* 805D0638  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D063C  38 63 00 0C */	addi r3, r3, 0xc
/* 805D0640  C0 3F 02 F4 */	lfs f1, 0x2f4(r31)
/* 805D0644  4B D5 7D E9 */	bl checkPass__12J3DFrameCtrlFf
/* 805D0648  2C 03 00 00 */	cmpwi r3, 0
/* 805D064C  41 82 00 10 */	beq lbl_805D065C
/* 805D0650  7F C3 F3 78 */	mr r3, r30
/* 805D0654  38 80 00 01 */	li r4, 1
/* 805D0658  4B FF BB 01 */	bl hand_smokeSet__8daB_DS_cFUc
lbl_805D065C:
/* 805D065C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D0660  38 63 00 0C */	addi r3, r3, 0xc
/* 805D0664  C0 3F 02 F8 */	lfs f1, 0x2f8(r31)
/* 805D0668  4B D5 7D C5 */	bl checkPass__12J3DFrameCtrlFf
/* 805D066C  2C 03 00 00 */	cmpwi r3, 0
/* 805D0670  41 82 00 10 */	beq lbl_805D0680
/* 805D0674  7F C3 F3 78 */	mr r3, r30
/* 805D0678  38 80 00 02 */	li r4, 2
/* 805D067C  4B FF BA DD */	bl hand_smokeSet__8daB_DS_cFUc
lbl_805D0680:
/* 805D0680  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D0684  38 63 00 0C */	addi r3, r3, 0xc
/* 805D0688  C8 3F 00 98 */	lfd f1, 0x98(r31)
/* 805D068C  6F 20 80 00 */	xoris r0, r25, 0x8000
/* 805D0690  90 01 00 3C */	stw r0, 0x3c(r1)
/* 805D0694  3C 00 43 30 */	lis r0, 0x4330
/* 805D0698  90 01 00 38 */	stw r0, 0x38(r1)
/* 805D069C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 805D06A0  EC 20 08 28 */	fsubs f1, f0, f1
/* 805D06A4  4B D5 7D 89 */	bl checkPass__12J3DFrameCtrlFf
/* 805D06A8  2C 03 00 00 */	cmpwi r3, 0
/* 805D06AC  41 82 00 88 */	beq lbl_805D0734
/* 805D06B0  3B 00 00 00 */	li r24, 0
/* 805D06B4  3B A0 00 00 */	li r29, 0
/* 805D06B8  3B 80 00 00 */	li r28, 0
/* 805D06BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805D06C0  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805D06C4  3C 60 80 5E */	lis r3, eff_smoke_id@ha /* 0x805DD470@ha */
/* 805D06C8  3B 63 D4 70 */	addi r27, r3, eff_smoke_id@l /* 0x805DD470@l */
lbl_805D06CC:
/* 805D06CC  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 805D06D0  38 00 00 FF */	li r0, 0xff
/* 805D06D4  90 01 00 08 */	stw r0, 8(r1)
/* 805D06D8  38 80 00 00 */	li r4, 0
/* 805D06DC  90 81 00 0C */	stw r4, 0xc(r1)
/* 805D06E0  38 00 FF FF */	li r0, -1
/* 805D06E4  90 01 00 10 */	stw r0, 0x10(r1)
/* 805D06E8  90 81 00 14 */	stw r4, 0x14(r1)
/* 805D06EC  90 81 00 18 */	stw r4, 0x18(r1)
/* 805D06F0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805D06F4  3B 3C 2D EC */	addi r25, r28, 0x2dec
/* 805D06F8  7C 9E C8 2E */	lwzx r4, r30, r25
/* 805D06FC  38 A0 00 00 */	li r5, 0
/* 805D0700  7C DB EA 2E */	lhzx r6, r27, r29
/* 805D0704  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 805D0708  39 00 00 00 */	li r8, 0
/* 805D070C  39 21 00 20 */	addi r9, r1, 0x20
/* 805D0710  39 41 00 28 */	addi r10, r1, 0x28
/* 805D0714  C0 3F 00 08 */	lfs f1, 8(r31)
/* 805D0718  4B A7 CD B5 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805D071C  7C 7E C9 2E */	stwx r3, r30, r25
/* 805D0720  3B 18 00 01 */	addi r24, r24, 1
/* 805D0724  2C 18 00 02 */	cmpwi r24, 2
/* 805D0728  3B BD 00 02 */	addi r29, r29, 2
/* 805D072C  3B 9C 00 04 */	addi r28, r28, 4
/* 805D0730  41 80 FF 9C */	blt lbl_805D06CC
lbl_805D0734:
/* 805D0734  39 61 00 60 */	addi r11, r1, 0x60
/* 805D0738  4B D9 1A DD */	bl _restgpr_24
/* 805D073C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805D0740  7C 08 03 A6 */	mtlr r0
/* 805D0744  38 21 00 60 */	addi r1, r1, 0x60
/* 805D0748  4E 80 00 20 */	blr 
