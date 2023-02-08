lbl_8062B344:
/* 8062B344  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8062B348  7C 08 02 A6 */	mflr r0
/* 8062B34C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8062B350  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8062B354  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8062B358  7C 7E 1B 78 */	mr r30, r3
/* 8062B35C  3C 80 80 63 */	lis r4, lit_3920@ha /* 0x8062E634@ha */
/* 8062B360  3B E4 E6 34 */	addi r31, r4, lit_3920@l /* 0x8062E634@l */
/* 8062B364  80 03 06 F4 */	lwz r0, 0x6f4(r3)
/* 8062B368  2C 00 00 02 */	cmpwi r0, 2
/* 8062B36C  41 82 02 28 */	beq lbl_8062B594
/* 8062B370  40 80 00 14 */	bge lbl_8062B384
/* 8062B374  2C 00 00 00 */	cmpwi r0, 0
/* 8062B378  41 82 00 18 */	beq lbl_8062B390
/* 8062B37C  40 80 00 90 */	bge lbl_8062B40C
/* 8062B380  48 00 03 10 */	b lbl_8062B690
lbl_8062B384:
/* 8062B384  2C 00 00 04 */	cmpwi r0, 4
/* 8062B388  40 80 03 08 */	bge lbl_8062B690
/* 8062B38C  48 00 02 D0 */	b lbl_8062B65C
lbl_8062B390:
/* 8062B390  38 00 00 00 */	li r0, 0
/* 8062B394  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 8062B398  38 80 00 04 */	li r4, 4
/* 8062B39C  38 A0 00 00 */	li r5, 0
/* 8062B3A0  C0 3F 01 28 */	lfs f1, 0x128(r31)
/* 8062B3A4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8062B3A8  4B FF 55 21 */	bl setBck__8daB_TN_cFiUcff
/* 8062B3AC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A5@ha */
/* 8062B3B0  38 03 03 A5 */	addi r0, r3, 0x03A5 /* 0x000703A5@l */
/* 8062B3B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062B3B8  38 7E 06 4C */	addi r3, r30, 0x64c
/* 8062B3BC  38 81 00 14 */	addi r4, r1, 0x14
/* 8062B3C0  38 A0 FF FF */	li r5, -1
/* 8062B3C4  81 9E 06 4C */	lwz r12, 0x64c(r30)
/* 8062B3C8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8062B3CC  7D 89 03 A6 */	mtctr r12
/* 8062B3D0  4E 80 04 21 */	bctrl 
/* 8062B3D4  38 00 00 01 */	li r0, 1
/* 8062B3D8  90 1E 06 F4 */	stw r0, 0x6f4(r30)
/* 8062B3DC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8062B3E0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8062B3E4  38 00 00 00 */	li r0, 0
/* 8062B3E8  98 1E 0A 93 */	stb r0, 0xa93(r30)
/* 8062B3EC  88 1E 0A AD */	lbz r0, 0xaad(r30)
/* 8062B3F0  28 00 00 00 */	cmplwi r0, 0
/* 8062B3F4  41 82 00 18 */	beq lbl_8062B40C
/* 8062B3F8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8062B3FC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8062B400  80 63 00 00 */	lwz r3, 0(r3)
/* 8062B404  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8062B408  4B C8 44 7D */	bl subBgmStop__8Z2SeqMgrFv
lbl_8062B40C:
/* 8062B40C  80 7E 06 00 */	lwz r3, 0x600(r30)
/* 8062B410  38 63 00 0C */	addi r3, r3, 0xc
/* 8062B414  C0 3F 01 28 */	lfs f1, 0x128(r31)
/* 8062B418  4B CF D0 15 */	bl checkPass__12J3DFrameCtrlFf
/* 8062B41C  2C 03 00 00 */	cmpwi r3, 0
/* 8062B420  41 82 00 38 */	beq lbl_8062B458
/* 8062B424  38 00 00 02 */	li r0, 2
/* 8062B428  B0 1E 0A 1A */	sth r0, 0xa1a(r30)
/* 8062B42C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A6@ha */
/* 8062B430  38 03 03 A6 */	addi r0, r3, 0x03A6 /* 0x000703A6@l */
/* 8062B434  90 01 00 10 */	stw r0, 0x10(r1)
/* 8062B438  38 7E 06 4C */	addi r3, r30, 0x64c
/* 8062B43C  38 81 00 10 */	addi r4, r1, 0x10
/* 8062B440  38 A0 00 00 */	li r5, 0
/* 8062B444  38 C0 FF FF */	li r6, -1
/* 8062B448  81 9E 06 4C */	lwz r12, 0x64c(r30)
/* 8062B44C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8062B450  7D 89 03 A6 */	mtctr r12
/* 8062B454  4E 80 04 21 */	bctrl 
lbl_8062B458:
/* 8062B458  80 7E 06 00 */	lwz r3, 0x600(r30)
/* 8062B45C  38 63 00 0C */	addi r3, r3, 0xc
/* 8062B460  C0 3F 01 5C */	lfs f1, 0x15c(r31)
/* 8062B464  4B CF CF C9 */	bl checkPass__12J3DFrameCtrlFf
/* 8062B468  2C 03 00 00 */	cmpwi r3, 0
/* 8062B46C  41 82 00 60 */	beq lbl_8062B4CC
/* 8062B470  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8062B474  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8062B478  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8062B47C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8062B480  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8062B484  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8062B488  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8062B48C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8062B490  38 80 00 02 */	li r4, 2
/* 8062B494  38 A0 00 1F */	li r5, 0x1f
/* 8062B498  38 C1 00 24 */	addi r6, r1, 0x24
/* 8062B49C  4B A4 45 89 */	bl StartShock__12dVibration_cFii4cXyz
/* 8062B4A0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703AF@ha */
/* 8062B4A4  38 03 03 AF */	addi r0, r3, 0x03AF /* 0x000703AF@l */
/* 8062B4A8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8062B4AC  38 7E 06 4C */	addi r3, r30, 0x64c
/* 8062B4B0  38 81 00 0C */	addi r4, r1, 0xc
/* 8062B4B4  38 A0 00 00 */	li r5, 0
/* 8062B4B8  38 C0 FF FF */	li r6, -1
/* 8062B4BC  81 9E 06 4C */	lwz r12, 0x64c(r30)
/* 8062B4C0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8062B4C4  7D 89 03 A6 */	mtctr r12
/* 8062B4C8  4E 80 04 21 */	bctrl 
lbl_8062B4CC:
/* 8062B4CC  80 7E 06 00 */	lwz r3, 0x600(r30)
/* 8062B4D0  38 63 00 0C */	addi r3, r3, 0xc
/* 8062B4D4  C0 3F 02 68 */	lfs f1, 0x268(r31)
/* 8062B4D8  4B CF CF 55 */	bl checkPass__12J3DFrameCtrlFf
/* 8062B4DC  2C 03 00 00 */	cmpwi r3, 0
/* 8062B4E0  41 82 00 60 */	beq lbl_8062B540
/* 8062B4E4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8062B4E8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8062B4EC  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8062B4F0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8062B4F4  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8062B4F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8062B4FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8062B500  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8062B504  38 80 00 04 */	li r4, 4
/* 8062B508  38 A0 00 1F */	li r5, 0x1f
/* 8062B50C  38 C1 00 18 */	addi r6, r1, 0x18
/* 8062B510  4B A4 45 15 */	bl StartShock__12dVibration_cFii4cXyz
/* 8062B514  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002C@ha */
/* 8062B518  38 03 00 2C */	addi r0, r3, 0x002C /* 0x0006002C@l */
/* 8062B51C  90 01 00 08 */	stw r0, 8(r1)
/* 8062B520  38 7E 06 4C */	addi r3, r30, 0x64c
/* 8062B524  38 81 00 08 */	addi r4, r1, 8
/* 8062B528  38 A0 00 00 */	li r5, 0
/* 8062B52C  38 C0 FF FF */	li r6, -1
/* 8062B530  81 9E 06 4C */	lwz r12, 0x64c(r30)
/* 8062B534  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8062B538  7D 89 03 A6 */	mtctr r12
/* 8062B53C  4E 80 04 21 */	bctrl 
lbl_8062B540:
/* 8062B540  38 7E 07 28 */	addi r3, r30, 0x728
/* 8062B544  C0 3F 02 64 */	lfs f1, 0x264(r31)
/* 8062B548  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 8062B54C  4B C4 51 F5 */	bl cLib_chaseF__FPfff
/* 8062B550  80 7E 06 00 */	lwz r3, 0x600(r30)
/* 8062B554  38 80 00 01 */	li r4, 1
/* 8062B558  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8062B55C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8062B560  40 82 00 18 */	bne lbl_8062B578
/* 8062B564  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8062B568  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8062B56C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8062B570  41 82 00 08 */	beq lbl_8062B578
/* 8062B574  38 80 00 00 */	li r4, 0
lbl_8062B578:
/* 8062B578  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8062B57C  41 82 01 14 */	beq lbl_8062B690
/* 8062B580  38 00 00 02 */	li r0, 2
/* 8062B584  90 1E 06 F4 */	stw r0, 0x6f4(r30)
/* 8062B588  38 00 00 0A */	li r0, 0xa
/* 8062B58C  90 1E 0A 6C */	stw r0, 0xa6c(r30)
/* 8062B590  48 00 01 00 */	b lbl_8062B690
lbl_8062B594:
/* 8062B594  38 7E 07 28 */	addi r3, r30, 0x728
/* 8062B598  C0 3F 02 64 */	lfs f1, 0x264(r31)
/* 8062B59C  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 8062B5A0  4B C4 51 A1 */	bl cLib_chaseF__FPfff
/* 8062B5A4  80 1E 0A 6C */	lwz r0, 0xa6c(r30)
/* 8062B5A8  2C 00 00 00 */	cmpwi r0, 0
/* 8062B5AC  40 82 00 E4 */	bne lbl_8062B690
/* 8062B5B0  80 7E 06 00 */	lwz r3, 0x600(r30)
/* 8062B5B4  80 63 00 04 */	lwz r3, 4(r3)
/* 8062B5B8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8062B5BC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8062B5C0  38 63 00 60 */	addi r3, r3, 0x60
/* 8062B5C4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8062B5C8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8062B5CC  4B D1 AE E5 */	bl PSMTXCopy
/* 8062B5D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8062B5D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8062B5D8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8062B5DC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8062B5E0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8062B5E4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8062B5E8  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8062B5EC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8062B5F0  7F C3 F3 78 */	mr r3, r30
/* 8062B5F4  38 81 00 30 */	addi r4, r1, 0x30
/* 8062B5F8  38 A0 00 0A */	li r5, 0xa
/* 8062B5FC  38 C0 00 00 */	li r6, 0
/* 8062B600  38 E0 00 1D */	li r7, 0x1d
/* 8062B604  4B 9F 14 D5 */	bl fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 8062B608  88 1E 0A AD */	lbz r0, 0xaad(r30)
/* 8062B60C  28 00 00 00 */	cmplwi r0, 0
/* 8062B610  41 82 00 20 */	beq lbl_8062B630
/* 8062B614  38 00 00 3C */	li r0, 0x3c
/* 8062B618  90 1E 0A 6C */	stw r0, 0xa6c(r30)
/* 8062B61C  38 00 00 01 */	li r0, 1
/* 8062B620  98 1E 0A AC */	stb r0, 0xaac(r30)
/* 8062B624  38 00 00 03 */	li r0, 3
/* 8062B628  90 1E 06 F4 */	stw r0, 0x6f4(r30)
/* 8062B62C  48 00 00 64 */	b lbl_8062B690
lbl_8062B630:
/* 8062B630  88 9E 0A A4 */	lbz r4, 0xaa4(r30)
/* 8062B634  28 04 00 FF */	cmplwi r4, 0xff
/* 8062B638  41 82 00 18 */	beq lbl_8062B650
/* 8062B63C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8062B640  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8062B644  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8062B648  7C 05 07 74 */	extsb r5, r0
/* 8062B64C  4B A0 9B B5 */	bl onSwitch__10dSv_info_cFii
lbl_8062B650:
/* 8062B650  7F C3 F3 78 */	mr r3, r30
/* 8062B654  4B 9E E6 29 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 8062B658  48 00 00 38 */	b lbl_8062B690
lbl_8062B65C:
/* 8062B65C  80 1E 0A 6C */	lwz r0, 0xa6c(r30)
/* 8062B660  2C 00 00 00 */	cmpwi r0, 0
/* 8062B664  40 82 00 2C */	bne lbl_8062B690
/* 8062B668  88 9E 0A A4 */	lbz r4, 0xaa4(r30)
/* 8062B66C  28 04 00 FF */	cmplwi r4, 0xff
/* 8062B670  41 82 00 18 */	beq lbl_8062B688
/* 8062B674  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8062B678  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8062B67C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8062B680  7C 05 07 74 */	extsb r5, r0
/* 8062B684  4B A0 9B 7D */	bl onSwitch__10dSv_info_cFii
lbl_8062B688:
/* 8062B688  7F C3 F3 78 */	mr r3, r30
/* 8062B68C  4B 9E E5 F1 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_8062B690:
/* 8062B690  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8062B694  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8062B698  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8062B69C  7C 08 03 A6 */	mtlr r0
/* 8062B6A0  38 21 00 50 */	addi r1, r1, 0x50
/* 8062B6A4  4E 80 00 20 */	blr 
