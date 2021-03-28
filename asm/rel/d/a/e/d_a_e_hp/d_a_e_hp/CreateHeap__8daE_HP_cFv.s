lbl_806E9240:
/* 806E9240  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806E9244  7C 08 02 A6 */	mflr r0
/* 806E9248  90 01 00 34 */	stw r0, 0x34(r1)
/* 806E924C  39 61 00 30 */	addi r11, r1, 0x30
/* 806E9250  4B C7 8F 88 */	b _savegpr_28
/* 806E9254  7C 7F 1B 78 */	mr r31, r3
/* 806E9258  3C 60 80 6F */	lis r3, stringBase0@ha
/* 806E925C  38 63 A2 CC */	addi r3, r3, stringBase0@l
/* 806E9260  38 80 00 13 */	li r4, 0x13
/* 806E9264  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806E9268  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806E926C  3F C5 00 02 */	addis r30, r5, 2
/* 806E9270  3B DE C2 F8 */	addi r30, r30, -15624
/* 806E9274  7F C5 F3 78 */	mr r5, r30
/* 806E9278  38 C0 00 80 */	li r6, 0x80
/* 806E927C  4B 95 30 70 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806E9280  7C 7C 1B 78 */	mr r28, r3
/* 806E9284  38 60 00 58 */	li r3, 0x58
/* 806E9288  4B BE 59 C4 */	b __nw__FUl
/* 806E928C  7C 7D 1B 79 */	or. r29, r3, r3
/* 806E9290  41 82 00 68 */	beq lbl_806E92F8
/* 806E9294  3C 60 80 6F */	lis r3, stringBase0@ha
/* 806E9298  38 63 A2 CC */	addi r3, r3, stringBase0@l
/* 806E929C  38 80 00 0D */	li r4, 0xd
/* 806E92A0  7F C5 F3 78 */	mr r5, r30
/* 806E92A4  38 C0 00 80 */	li r6, 0x80
/* 806E92A8  4B 95 30 44 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806E92AC  7C 67 1B 78 */	mr r7, r3
/* 806E92B0  38 1F 05 C8 */	addi r0, r31, 0x5c8
/* 806E92B4  90 01 00 08 */	stw r0, 8(r1)
/* 806E92B8  3C 00 00 08 */	lis r0, 8
/* 806E92BC  90 01 00 0C */	stw r0, 0xc(r1)
/* 806E92C0  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 806E92C4  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 806E92C8  90 01 00 10 */	stw r0, 0x10(r1)
/* 806E92CC  7F A3 EB 78 */	mr r3, r29
/* 806E92D0  7F 84 E3 78 */	mr r4, r28
/* 806E92D4  38 A0 00 00 */	li r5, 0
/* 806E92D8  38 C0 00 00 */	li r6, 0
/* 806E92DC  39 00 00 02 */	li r8, 2
/* 806E92E0  3D 20 80 6F */	lis r9, lit_3907@ha
/* 806E92E4  C0 29 A1 FC */	lfs f1, lit_3907@l(r9)
/* 806E92E8  39 20 00 00 */	li r9, 0
/* 806E92EC  39 40 FF FF */	li r10, -1
/* 806E92F0  4B 92 74 E0 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 806E92F4  7C 7D 1B 78 */	mr r29, r3
lbl_806E92F8:
/* 806E92F8  93 BF 05 B4 */	stw r29, 0x5b4(r31)
/* 806E92FC  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806E9300  28 03 00 00 */	cmplwi r3, 0
/* 806E9304  41 82 00 10 */	beq lbl_806E9314
/* 806E9308  80 83 00 04 */	lwz r4, 4(r3)
/* 806E930C  28 04 00 00 */	cmplwi r4, 0
/* 806E9310  40 82 00 0C */	bne lbl_806E931C
lbl_806E9314:
/* 806E9314  38 60 00 00 */	li r3, 0
/* 806E9318  48 00 01 CC */	b lbl_806E94E4
lbl_806E931C:
/* 806E931C  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 806E9320  38 A0 00 01 */	li r5, 1
/* 806E9324  4B 92 52 18 */	b create__21mDoExt_invisibleModelFP8J3DModelUc
/* 806E9328  2C 03 00 00 */	cmpwi r3, 0
/* 806E932C  40 82 00 0C */	bne lbl_806E9338
/* 806E9330  38 60 00 00 */	li r3, 0
/* 806E9334  48 00 01 B0 */	b lbl_806E94E4
lbl_806E9338:
/* 806E9338  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806E933C  80 03 00 04 */	lwz r0, 4(r3)
/* 806E9340  90 1F 05 24 */	stw r0, 0x524(r31)
/* 806E9344  80 7F 05 24 */	lwz r3, 0x524(r31)
/* 806E9348  93 E3 00 14 */	stw r31, 0x14(r3)
/* 806E934C  38 C0 00 00 */	li r6, 0
/* 806E9350  3C 60 80 6E */	lis r3, JointCallBack__8daE_HP_cFP8J3DJointi@ha
/* 806E9354  38 83 5E D0 */	addi r4, r3, JointCallBack__8daE_HP_cFP8J3DJointi@l
/* 806E9358  48 00 00 20 */	b lbl_806E9378
lbl_806E935C:
/* 806E935C  54 C0 04 3F */	clrlwi. r0, r6, 0x10
/* 806E9360  41 82 00 14 */	beq lbl_806E9374
/* 806E9364  80 65 00 28 */	lwz r3, 0x28(r5)
/* 806E9368  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 806E936C  7C 63 00 2E */	lwzx r3, r3, r0
/* 806E9370  90 83 00 04 */	stw r4, 4(r3)
lbl_806E9374:
/* 806E9374  38 C6 00 01 */	addi r6, r6, 1
lbl_806E9378:
/* 806E9378  80 7F 05 24 */	lwz r3, 0x524(r31)
/* 806E937C  80 A3 00 04 */	lwz r5, 4(r3)
/* 806E9380  A0 65 00 2C */	lhz r3, 0x2c(r5)
/* 806E9384  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 806E9388  7C 00 18 40 */	cmplw r0, r3
/* 806E938C  41 80 FF D0 */	blt lbl_806E935C
/* 806E9390  3C 60 80 6F */	lis r3, stringBase0@ha
/* 806E9394  38 63 A2 CC */	addi r3, r3, stringBase0@l
/* 806E9398  38 80 00 14 */	li r4, 0x14
/* 806E939C  7F C5 F3 78 */	mr r5, r30
/* 806E93A0  38 C0 00 80 */	li r6, 0x80
/* 806E93A4  4B 95 2F 48 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806E93A8  3C 80 00 08 */	lis r4, 8
/* 806E93AC  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 806E93B0  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 806E93B4  4B 92 B8 A0 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 806E93B8  90 7F 05 C0 */	stw r3, 0x5c0(r31)
/* 806E93BC  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 806E93C0  28 03 00 00 */	cmplwi r3, 0
/* 806E93C4  40 82 00 0C */	bne lbl_806E93D0
/* 806E93C8  38 60 00 00 */	li r3, 0
/* 806E93CC  48 00 01 18 */	b lbl_806E94E4
lbl_806E93D0:
/* 806E93D0  93 E3 00 14 */	stw r31, 0x14(r3)
/* 806E93D4  38 C0 00 00 */	li r6, 0
/* 806E93D8  3C 60 80 6E */	lis r3, LampJointCallBack__8daE_HP_cFP8J3DJointi@ha
/* 806E93DC  38 83 5F CC */	addi r4, r3, LampJointCallBack__8daE_HP_cFP8J3DJointi@l
/* 806E93E0  48 00 00 20 */	b lbl_806E9400
lbl_806E93E4:
/* 806E93E4  54 C0 04 3F */	clrlwi. r0, r6, 0x10
/* 806E93E8  41 82 00 14 */	beq lbl_806E93FC
/* 806E93EC  80 65 00 28 */	lwz r3, 0x28(r5)
/* 806E93F0  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 806E93F4  7C 63 00 2E */	lwzx r3, r3, r0
/* 806E93F8  90 83 00 04 */	stw r4, 4(r3)
lbl_806E93FC:
/* 806E93FC  38 C6 00 01 */	addi r6, r6, 1
lbl_806E9400:
/* 806E9400  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 806E9404  80 A3 00 04 */	lwz r5, 4(r3)
/* 806E9408  A0 65 00 2C */	lhz r3, 0x2c(r5)
/* 806E940C  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 806E9410  7C 00 18 40 */	cmplw r0, r3
/* 806E9414  41 80 FF D0 */	blt lbl_806E93E4
/* 806E9418  3C 60 80 6F */	lis r3, stringBase0@ha
/* 806E941C  38 63 A2 CC */	addi r3, r3, stringBase0@l
/* 806E9420  38 80 00 12 */	li r4, 0x12
/* 806E9424  7F C5 F3 78 */	mr r5, r30
/* 806E9428  38 C0 00 80 */	li r6, 0x80
/* 806E942C  4B 95 2E C0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806E9430  7C 7C 1B 78 */	mr r28, r3
/* 806E9434  38 60 00 54 */	li r3, 0x54
/* 806E9438  4B BE 58 14 */	b __nw__FUl
/* 806E943C  7C 7D 1B 79 */	or. r29, r3, r3
/* 806E9440  41 82 00 70 */	beq lbl_806E94B0
/* 806E9444  3C 60 80 6F */	lis r3, stringBase0@ha
/* 806E9448  38 63 A2 CC */	addi r3, r3, stringBase0@l
/* 806E944C  38 80 00 04 */	li r4, 4
/* 806E9450  7F C5 F3 78 */	mr r5, r30
/* 806E9454  38 C0 00 80 */	li r6, 0x80
/* 806E9458  4B 95 2E 94 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806E945C  7C 67 1B 78 */	mr r7, r3
/* 806E9460  38 00 00 01 */	li r0, 1
/* 806E9464  90 01 00 08 */	stw r0, 8(r1)
/* 806E9468  38 00 00 00 */	li r0, 0
/* 806E946C  90 01 00 0C */	stw r0, 0xc(r1)
/* 806E9470  3C 00 00 08 */	lis r0, 8
/* 806E9474  90 01 00 10 */	stw r0, 0x10(r1)
/* 806E9478  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 806E947C  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 806E9480  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E9484  7F A3 EB 78 */	mr r3, r29
/* 806E9488  7F 84 E3 78 */	mr r4, r28
/* 806E948C  38 A0 00 00 */	li r5, 0
/* 806E9490  38 C0 00 00 */	li r6, 0
/* 806E9494  39 00 00 02 */	li r8, 2
/* 806E9498  3D 20 80 6F */	lis r9, lit_3907@ha
/* 806E949C  C0 29 A1 FC */	lfs f1, lit_3907@l(r9)
/* 806E94A0  39 20 00 00 */	li r9, 0
/* 806E94A4  39 40 FF FF */	li r10, -1
/* 806E94A8  4B 92 67 A4 */	b __ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl
/* 806E94AC  7C 7D 1B 78 */	mr r29, r3
lbl_806E94B0:
/* 806E94B0  93 BF 05 C4 */	stw r29, 0x5c4(r31)
/* 806E94B4  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 806E94B8  28 03 00 00 */	cmplwi r3, 0
/* 806E94BC  41 82 00 10 */	beq lbl_806E94CC
/* 806E94C0  80 03 00 04 */	lwz r0, 4(r3)
/* 806E94C4  28 00 00 00 */	cmplwi r0, 0
/* 806E94C8  40 82 00 0C */	bne lbl_806E94D4
lbl_806E94CC:
/* 806E94CC  38 60 00 00 */	li r3, 0
/* 806E94D0  48 00 00 14 */	b lbl_806E94E4
lbl_806E94D4:
/* 806E94D4  7F E3 FB 78 */	mr r3, r31
/* 806E94D8  4B 92 FF 2C */	b initBallModel__13fopEn_enemy_cFv
/* 806E94DC  30 03 FF FF */	addic r0, r3, -1
/* 806E94E0  7C 60 19 10 */	subfe r3, r0, r3
lbl_806E94E4:
/* 806E94E4  39 61 00 30 */	addi r11, r1, 0x30
/* 806E94E8  4B C7 8D 3C */	b _restgpr_28
/* 806E94EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806E94F0  7C 08 03 A6 */	mtlr r0
/* 806E94F4  38 21 00 30 */	addi r1, r1, 0x30
/* 806E94F8  4E 80 00 20 */	blr 
