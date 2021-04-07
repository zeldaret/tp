lbl_80A2B278:
/* 80A2B278  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A2B27C  7C 08 02 A6 */	mflr r0
/* 80A2B280  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A2B284  39 61 00 30 */	addi r11, r1, 0x30
/* 80A2B288  4B 93 6F 51 */	bl _savegpr_28
/* 80A2B28C  7C 7C 1B 78 */	mr r28, r3
/* 80A2B290  3C 60 80 A4 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80A40D34@ha */
/* 80A2B294  3B E3 0D 34 */	addi r31, r3, cNullVec__6Z2Calc@l /* 0x80A40D34@l */
/* 80A2B298  38 7F 00 A4 */	addi r3, r31, 0xa4
/* 80A2B29C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80A2B2A0  80 83 00 08 */	lwz r4, 8(r3)
/* 80A2B2A4  54 00 10 3A */	slwi r0, r0, 2
/* 80A2B2A8  38 7F 01 8C */	addi r3, r31, 0x18c
/* 80A2B2AC  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A2B2B0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A2B2B4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A2B2B8  3F A5 00 02 */	addis r29, r5, 2
/* 80A2B2BC  3B BD C2 F8 */	addi r29, r29, -15624
/* 80A2B2C0  7F A5 EB 78 */	mr r5, r29
/* 80A2B2C4  38 C0 00 80 */	li r6, 0x80
/* 80A2B2C8  4B 61 10 25 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A2B2CC  7C 7E 1B 78 */	mr r30, r3
/* 80A2B2D0  38 60 00 58 */	li r3, 0x58
/* 80A2B2D4  4B 8A 39 79 */	bl __nw__FUl
/* 80A2B2D8  7C 60 1B 79 */	or. r0, r3, r3
/* 80A2B2DC  41 82 00 4C */	beq lbl_80A2B328
/* 80A2B2E0  38 1C 05 C4 */	addi r0, r28, 0x5c4
/* 80A2B2E4  90 01 00 08 */	stw r0, 8(r1)
/* 80A2B2E8  3C 00 00 08 */	lis r0, 8
/* 80A2B2EC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A2B2F0  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80A2B2F4  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80A2B2F8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A2B2FC  7F C4 F3 78 */	mr r4, r30
/* 80A2B300  38 A0 00 00 */	li r5, 0
/* 80A2B304  38 C0 00 00 */	li r6, 0
/* 80A2B308  38 E0 00 00 */	li r7, 0
/* 80A2B30C  39 00 FF FF */	li r8, -1
/* 80A2B310  3D 20 80 A4 */	lis r9, lit_4327@ha /* 0x80A4090C@ha */
/* 80A2B314  C0 29 09 0C */	lfs f1, lit_4327@l(r9)  /* 0x80A4090C@l */
/* 80A2B318  39 20 00 00 */	li r9, 0
/* 80A2B31C  39 40 FF FF */	li r10, -1
/* 80A2B320  4B 5E 54 B1 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80A2B324  7C 60 1B 78 */	mr r0, r3
lbl_80A2B328:
/* 80A2B328  90 1C 05 BC */	stw r0, 0x5bc(r28)
/* 80A2B32C  80 7C 05 BC */	lwz r3, 0x5bc(r28)
/* 80A2B330  28 03 00 00 */	cmplwi r3, 0
/* 80A2B334  41 82 00 1C */	beq lbl_80A2B350
/* 80A2B338  80 03 00 04 */	lwz r0, 4(r3)
/* 80A2B33C  28 00 00 00 */	cmplwi r0, 0
/* 80A2B340  40 82 00 10 */	bne lbl_80A2B350
/* 80A2B344  4B 5E 5F CD */	bl stopZelAnime__16mDoExt_McaMorfSOFv
/* 80A2B348  38 00 00 00 */	li r0, 0
/* 80A2B34C  90 1C 05 BC */	stw r0, 0x5bc(r28)
lbl_80A2B350:
/* 80A2B350  80 7C 05 BC */	lwz r3, 0x5bc(r28)
/* 80A2B354  28 03 00 00 */	cmplwi r3, 0
/* 80A2B358  40 82 00 0C */	bne lbl_80A2B364
/* 80A2B35C  38 60 00 00 */	li r3, 0
/* 80A2B360  48 00 02 A8 */	b lbl_80A2B608
lbl_80A2B364:
/* 80A2B364  80 A3 00 04 */	lwz r5, 4(r3)
/* 80A2B368  38 C0 00 00 */	li r6, 0
/* 80A2B36C  3C 60 80 A3 */	lis r3, ctrlJointCallBack__10daNpc_Kn_cFP8J3DJointi@ha /* 0x80A2B784@ha */
/* 80A2B370  38 83 B7 84 */	addi r4, r3, ctrlJointCallBack__10daNpc_Kn_cFP8J3DJointi@l /* 0x80A2B784@l */
/* 80A2B374  48 00 00 18 */	b lbl_80A2B38C
lbl_80A2B378:
/* 80A2B378  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80A2B37C  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80A2B380  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A2B384  90 83 00 04 */	stw r4, 4(r3)
/* 80A2B388  38 C6 00 01 */	addi r6, r6, 1
lbl_80A2B38C:
/* 80A2B38C  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80A2B390  A0 1E 00 2C */	lhz r0, 0x2c(r30)
/* 80A2B394  7C 03 00 40 */	cmplw r3, r0
/* 80A2B398  41 80 FF E0 */	blt lbl_80A2B378
/* 80A2B39C  93 85 00 14 */	stw r28, 0x14(r5)
/* 80A2B3A0  80 7C 05 BC */	lwz r3, 0x5bc(r28)
/* 80A2B3A4  80 83 00 04 */	lwz r4, 4(r3)
/* 80A2B3A8  38 7C 0E 48 */	addi r3, r28, 0xe48
/* 80A2B3AC  38 A0 00 01 */	li r5, 1
/* 80A2B3B0  4B 5E 31 8D */	bl create__21mDoExt_invisibleModelFP8J3DModelUc
/* 80A2B3B4  2C 03 00 00 */	cmpwi r3, 0
/* 80A2B3B8  40 82 00 0C */	bne lbl_80A2B3C4
/* 80A2B3BC  38 60 00 00 */	li r3, 0
/* 80A2B3C0  48 00 02 48 */	b lbl_80A2B608
lbl_80A2B3C4:
/* 80A2B3C4  38 7F 00 A4 */	addi r3, r31, 0xa4
/* 80A2B3C8  80 03 00 04 */	lwz r0, 4(r3)
/* 80A2B3CC  80 9F 00 A4 */	lwz r4, 0xa4(r31)
/* 80A2B3D0  54 00 10 3A */	slwi r0, r0, 2
/* 80A2B3D4  38 7F 01 8C */	addi r3, r31, 0x18c
/* 80A2B3D8  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A2B3DC  7F A5 EB 78 */	mr r5, r29
/* 80A2B3E0  38 C0 00 80 */	li r6, 0x80
/* 80A2B3E4  4B 61 0F 09 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A2B3E8  7C 7E 1B 78 */	mr r30, r3
/* 80A2B3EC  38 60 00 58 */	li r3, 0x58
/* 80A2B3F0  4B 8A 38 5D */	bl __nw__FUl
/* 80A2B3F4  7C 60 1B 79 */	or. r0, r3, r3
/* 80A2B3F8  41 82 00 4C */	beq lbl_80A2B444
/* 80A2B3FC  38 1C 05 C4 */	addi r0, r28, 0x5c4
/* 80A2B400  90 01 00 08 */	stw r0, 8(r1)
/* 80A2B404  3C 00 00 08 */	lis r0, 8
/* 80A2B408  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A2B40C  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80A2B410  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80A2B414  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A2B418  7F C4 F3 78 */	mr r4, r30
/* 80A2B41C  38 A0 00 00 */	li r5, 0
/* 80A2B420  38 C0 00 00 */	li r6, 0
/* 80A2B424  38 E0 00 00 */	li r7, 0
/* 80A2B428  39 00 FF FF */	li r8, -1
/* 80A2B42C  3D 20 80 A4 */	lis r9, lit_4327@ha /* 0x80A4090C@ha */
/* 80A2B430  C0 29 09 0C */	lfs f1, lit_4327@l(r9)  /* 0x80A4090C@l */
/* 80A2B434  39 20 00 00 */	li r9, 0
/* 80A2B438  39 40 FF FF */	li r10, -1
/* 80A2B43C  4B 5E 53 95 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80A2B440  7C 60 1B 78 */	mr r0, r3
lbl_80A2B444:
/* 80A2B444  90 1C 05 C0 */	stw r0, 0x5c0(r28)
/* 80A2B448  80 7C 05 C0 */	lwz r3, 0x5c0(r28)
/* 80A2B44C  28 03 00 00 */	cmplwi r3, 0
/* 80A2B450  41 82 00 18 */	beq lbl_80A2B468
/* 80A2B454  80 03 00 04 */	lwz r0, 4(r3)
/* 80A2B458  28 00 00 00 */	cmplwi r0, 0
/* 80A2B45C  40 82 00 0C */	bne lbl_80A2B468
/* 80A2B460  38 00 00 00 */	li r0, 0
/* 80A2B464  90 1C 05 C0 */	stw r0, 0x5c0(r28)
lbl_80A2B468:
/* 80A2B468  80 7C 05 C0 */	lwz r3, 0x5c0(r28)
/* 80A2B46C  28 03 00 00 */	cmplwi r3, 0
/* 80A2B470  40 82 00 1C */	bne lbl_80A2B48C
/* 80A2B474  80 7C 05 BC */	lwz r3, 0x5bc(r28)
/* 80A2B478  28 03 00 00 */	cmplwi r3, 0
/* 80A2B47C  41 82 00 08 */	beq lbl_80A2B484
/* 80A2B480  4B 5E 5E 91 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80A2B484:
/* 80A2B484  38 60 00 00 */	li r3, 0
/* 80A2B488  48 00 01 80 */	b lbl_80A2B608
lbl_80A2B48C:
/* 80A2B48C  80 A3 00 04 */	lwz r5, 4(r3)
/* 80A2B490  38 C0 00 00 */	li r6, 0
/* 80A2B494  3C 60 80 A3 */	lis r3, ctrlJointCallBack__10daNpc_Kn_cFP8J3DJointi@ha /* 0x80A2B784@ha */
/* 80A2B498  38 83 B7 84 */	addi r4, r3, ctrlJointCallBack__10daNpc_Kn_cFP8J3DJointi@l /* 0x80A2B784@l */
/* 80A2B49C  48 00 00 18 */	b lbl_80A2B4B4
lbl_80A2B4A0:
/* 80A2B4A0  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80A2B4A4  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80A2B4A8  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A2B4AC  90 83 00 04 */	stw r4, 4(r3)
/* 80A2B4B0  38 C6 00 01 */	addi r6, r6, 1
lbl_80A2B4B4:
/* 80A2B4B4  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80A2B4B8  A0 1E 00 2C */	lhz r0, 0x2c(r30)
/* 80A2B4BC  7C 03 00 40 */	cmplw r3, r0
/* 80A2B4C0  41 80 FF E0 */	blt lbl_80A2B4A0
/* 80A2B4C4  93 85 00 14 */	stw r28, 0x14(r5)
/* 80A2B4C8  88 1C 15 AC */	lbz r0, 0x15ac(r28)
/* 80A2B4CC  28 00 00 04 */	cmplwi r0, 4
/* 80A2B4D0  40 82 00 60 */	bne lbl_80A2B530
/* 80A2B4D4  38 7F 00 A4 */	addi r3, r31, 0xa4
/* 80A2B4D8  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80A2B4DC  80 83 00 10 */	lwz r4, 0x10(r3)
/* 80A2B4E0  54 00 10 3A */	slwi r0, r0, 2
/* 80A2B4E4  38 7F 01 8C */	addi r3, r31, 0x18c
/* 80A2B4E8  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A2B4EC  7F A5 EB 78 */	mr r5, r29
/* 80A2B4F0  38 C0 00 80 */	li r6, 0x80
/* 80A2B4F4  4B 61 0D F9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A2B4F8  28 03 00 00 */	cmplwi r3, 0
/* 80A2B4FC  41 82 00 2C */	beq lbl_80A2B528
/* 80A2B500  3C 80 00 08 */	lis r4, 8
/* 80A2B504  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80A2B508  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80A2B50C  4B 5E 97 49 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80A2B510  90 7C 0E 44 */	stw r3, 0xe44(r28)
/* 80A2B514  80 1C 0E 44 */	lwz r0, 0xe44(r28)
/* 80A2B518  28 00 00 00 */	cmplwi r0, 0
/* 80A2B51C  40 82 00 14 */	bne lbl_80A2B530
/* 80A2B520  38 60 00 00 */	li r3, 0
/* 80A2B524  48 00 00 E4 */	b lbl_80A2B608
lbl_80A2B528:
/* 80A2B528  38 60 00 00 */	li r3, 0
/* 80A2B52C  48 00 00 DC */	b lbl_80A2B608
lbl_80A2B530:
/* 80A2B530  7F 83 E3 78 */	mr r3, r28
/* 80A2B534  38 80 00 01 */	li r4, 1
/* 80A2B538  38 A0 00 00 */	li r5, 0
/* 80A2B53C  48 00 F0 2D */	bl setFaceMotionAnm__10daNpc_Kn_cFib
/* 80A2B540  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A2B544  41 82 00 C0 */	beq lbl_80A2B604
/* 80A2B548  88 1C 15 AC */	lbz r0, 0x15ac(r28)
/* 80A2B54C  28 00 00 04 */	cmplwi r0, 4
/* 80A2B550  40 82 00 8C */	bne lbl_80A2B5DC
/* 80A2B554  7F 83 E3 78 */	mr r3, r28
/* 80A2B558  3B BF 05 FC */	addi r29, r31, 0x5fc
/* 80A2B55C  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 80A2B560  54 00 10 3A */	slwi r0, r0, 2
/* 80A2B564  38 9F 01 8C */	addi r4, r31, 0x18c
/* 80A2B568  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A2B56C  80 BD 00 08 */	lwz r5, 8(r29)
/* 80A2B570  48 00 D0 1D */	bl getTrnsfrmKeyAnmP__10daNpc_Kn_cFPCci
/* 80A2B574  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A2B578  41 82 00 48 */	beq lbl_80A2B5C0
/* 80A2B57C  38 7C 15 88 */	addi r3, r28, 0x1588
/* 80A2B580  7F C4 F3 78 */	mr r4, r30
/* 80A2B584  38 A0 00 01 */	li r5, 1
/* 80A2B588  38 C0 00 02 */	li r6, 2
/* 80A2B58C  3C E0 80 A4 */	lis r7, lit_4327@ha /* 0x80A4090C@ha */
/* 80A2B590  C0 27 09 0C */	lfs f1, lit_4327@l(r7)  /* 0x80A4090C@l */
/* 80A2B594  38 E0 00 00 */	li r7, 0
/* 80A2B598  39 00 FF FF */	li r8, -1
/* 80A2B59C  39 20 00 00 */	li r9, 0
/* 80A2B5A0  4B 5E 22 3D */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80A2B5A4  2C 03 00 00 */	cmpwi r3, 0
/* 80A2B5A8  41 82 00 18 */	beq lbl_80A2B5C0
/* 80A2B5AC  80 1C 15 A4 */	lwz r0, 0x15a4(r28)
/* 80A2B5B0  60 00 00 41 */	ori r0, r0, 0x41
/* 80A2B5B4  90 1C 15 A4 */	stw r0, 0x15a4(r28)
/* 80A2B5B8  38 60 00 01 */	li r3, 1
/* 80A2B5BC  48 00 00 4C */	b lbl_80A2B608
lbl_80A2B5C0:
/* 80A2B5C0  28 1E 00 00 */	cmplwi r30, 0
/* 80A2B5C4  40 82 00 18 */	bne lbl_80A2B5DC
/* 80A2B5C8  80 1D 00 08 */	lwz r0, 8(r29)
/* 80A2B5CC  2C 00 FF FF */	cmpwi r0, -1
/* 80A2B5D0  41 82 00 0C */	beq lbl_80A2B5DC
/* 80A2B5D4  38 60 00 00 */	li r3, 0
/* 80A2B5D8  48 00 00 30 */	b lbl_80A2B608
lbl_80A2B5DC:
/* 80A2B5DC  7F 83 E3 78 */	mr r3, r28
/* 80A2B5E0  38 80 00 00 */	li r4, 0
/* 80A2B5E4  3C A0 80 A4 */	lis r5, lit_4204@ha /* 0x80A40900@ha */
/* 80A2B5E8  C0 25 09 00 */	lfs f1, lit_4204@l(r5)  /* 0x80A40900@l */
/* 80A2B5EC  38 A0 00 00 */	li r5, 0
/* 80A2B5F0  48 00 F1 D1 */	bl setMotionAnm__10daNpc_Kn_cFifi
/* 80A2B5F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A2B5F8  41 82 00 0C */	beq lbl_80A2B604
/* 80A2B5FC  38 60 00 01 */	li r3, 1
/* 80A2B600  48 00 00 08 */	b lbl_80A2B608
lbl_80A2B604:
/* 80A2B604  38 60 00 00 */	li r3, 0
lbl_80A2B608:
/* 80A2B608  39 61 00 30 */	addi r11, r1, 0x30
/* 80A2B60C  4B 93 6C 19 */	bl _restgpr_28
/* 80A2B610  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A2B614  7C 08 03 A6 */	mtlr r0
/* 80A2B618  38 21 00 30 */	addi r1, r1, 0x30
/* 80A2B61C  4E 80 00 20 */	blr 
