lbl_80791030:
/* 80791030  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80791034  7C 08 02 A6 */	mflr r0
/* 80791038  90 01 00 34 */	stw r0, 0x34(r1)
/* 8079103C  39 61 00 30 */	addi r11, r1, 0x30
/* 80791040  4B BD 11 98 */	b _savegpr_28
/* 80791044  7C 7F 1B 78 */	mr r31, r3
/* 80791048  38 60 00 58 */	li r3, 0x58
/* 8079104C  4B B3 DC 00 */	b __nw__FUl
/* 80791050  7C 7E 1B 79 */	or. r30, r3, r3
/* 80791054  41 82 00 94 */	beq lbl_807910E8
/* 80791058  3C 60 80 79 */	lis r3, stringBase0@ha
/* 8079105C  38 63 1E C0 */	addi r3, r3, stringBase0@l
/* 80791060  38 80 00 0E */	li r4, 0xe
/* 80791064  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80791068  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8079106C  3F 85 00 02 */	addis r28, r5, 2
/* 80791070  3B 9C C2 F8 */	addi r28, r28, -15624
/* 80791074  7F 85 E3 78 */	mr r5, r28
/* 80791078  38 C0 00 80 */	li r6, 0x80
/* 8079107C  4B 8A B2 70 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80791080  7C 7D 1B 78 */	mr r29, r3
/* 80791084  3C 60 80 79 */	lis r3, stringBase0@ha
/* 80791088  38 63 1E C0 */	addi r3, r3, stringBase0@l
/* 8079108C  38 80 00 16 */	li r4, 0x16
/* 80791090  7F 85 E3 78 */	mr r5, r28
/* 80791094  38 C0 00 80 */	li r6, 0x80
/* 80791098  4B 8A B2 54 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8079109C  7C 64 1B 78 */	mr r4, r3
/* 807910A0  38 1F 05 BC */	addi r0, r31, 0x5bc
/* 807910A4  90 01 00 08 */	stw r0, 8(r1)
/* 807910A8  3C 00 00 08 */	lis r0, 8
/* 807910AC  90 01 00 0C */	stw r0, 0xc(r1)
/* 807910B0  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 807910B4  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 807910B8  90 01 00 10 */	stw r0, 0x10(r1)
/* 807910BC  7F C3 F3 78 */	mr r3, r30
/* 807910C0  38 A0 00 00 */	li r5, 0
/* 807910C4  38 C0 00 00 */	li r6, 0
/* 807910C8  7F A7 EB 78 */	mr r7, r29
/* 807910CC  39 00 00 02 */	li r8, 2
/* 807910D0  3D 20 80 79 */	lis r9, lit_3904@ha
/* 807910D4  C0 29 1D 78 */	lfs f1, lit_3904@l(r9)
/* 807910D8  39 20 00 00 */	li r9, 0
/* 807910DC  39 40 FF FF */	li r10, -1
/* 807910E0  4B 87 F6 F0 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 807910E4  7C 7E 1B 78 */	mr r30, r3
lbl_807910E8:
/* 807910E8  93 DF 05 B8 */	stw r30, 0x5b8(r31)
/* 807910EC  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 807910F0  28 03 00 00 */	cmplwi r3, 0
/* 807910F4  41 82 00 10 */	beq lbl_80791104
/* 807910F8  80 A3 00 04 */	lwz r5, 4(r3)
/* 807910FC  28 05 00 00 */	cmplwi r5, 0
/* 80791100  40 82 00 0C */	bne lbl_8079110C
lbl_80791104:
/* 80791104  38 60 00 00 */	li r3, 0
/* 80791108  48 00 00 B8 */	b lbl_807911C0
lbl_8079110C:
/* 8079110C  93 E5 00 14 */	stw r31, 0x14(r5)
/* 80791110  38 E0 00 00 */	li r7, 0
/* 80791114  3C 60 80 79 */	lis r3, nodeCallBack__FP8J3DJointi@ha
/* 80791118  38 83 E4 60 */	addi r4, r3, nodeCallBack__FP8J3DJointi@l
/* 8079111C  48 00 00 18 */	b lbl_80791134
lbl_80791120:
/* 80791120  80 66 00 28 */	lwz r3, 0x28(r6)
/* 80791124  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 80791128  7C 63 00 2E */	lwzx r3, r3, r0
/* 8079112C  90 83 00 04 */	stw r4, 4(r3)
/* 80791130  38 E7 00 01 */	addi r7, r7, 1
lbl_80791134:
/* 80791134  80 C5 00 04 */	lwz r6, 4(r5)
/* 80791138  A0 66 00 2C */	lhz r3, 0x2c(r6)
/* 8079113C  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 80791140  7C 00 18 40 */	cmplw r0, r3
/* 80791144  41 80 FF DC */	blt lbl_80791120
/* 80791148  3C 60 80 79 */	lis r3, stringBase0@ha
/* 8079114C  38 63 1E C0 */	addi r3, r3, stringBase0@l
/* 80791150  38 80 00 15 */	li r4, 0x15
/* 80791154  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80791158  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8079115C  3C A5 00 02 */	addis r5, r5, 2
/* 80791160  38 C0 00 80 */	li r6, 0x80
/* 80791164  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80791168  4B 8A B1 84 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8079116C  7C 7D 1B 78 */	mr r29, r3
/* 80791170  3B 80 00 00 */	li r28, 0
/* 80791174  3F C0 11 00 */	lis r30, 0x1100
/* 80791178  48 00 00 38 */	b lbl_807911B0
lbl_8079117C:
/* 8079117C  7F A3 EB 78 */	mr r3, r29
/* 80791180  3C 80 00 08 */	lis r4, 8
/* 80791184  38 BE 00 84 */	addi r5, r30, 0x84
/* 80791188  4B 88 3A CC */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8079118C  57 84 13 BA */	rlwinm r4, r28, 2, 0xe, 0x1d
/* 80791190  38 04 06 64 */	addi r0, r4, 0x664
/* 80791194  7C 7F 01 2E */	stwx r3, r31, r0
/* 80791198  7C 1F 00 2E */	lwzx r0, r31, r0
/* 8079119C  28 00 00 00 */	cmplwi r0, 0
/* 807911A0  40 82 00 0C */	bne lbl_807911AC
/* 807911A4  38 60 00 00 */	li r3, 0
/* 807911A8  48 00 00 18 */	b lbl_807911C0
lbl_807911AC:
/* 807911AC  3B 9C 00 01 */	addi r28, r28, 1
lbl_807911B0:
/* 807911B0  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 807911B4  28 00 00 02 */	cmplwi r0, 2
/* 807911B8  41 80 FF C4 */	blt lbl_8079117C
/* 807911BC  38 60 00 01 */	li r3, 1
lbl_807911C0:
/* 807911C0  39 61 00 30 */	addi r11, r1, 0x30
/* 807911C4  4B BD 10 60 */	b _restgpr_28
/* 807911C8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807911CC  7C 08 03 A6 */	mtlr r0
/* 807911D0  38 21 00 30 */	addi r1, r1, 0x30
/* 807911D4  4E 80 00 20 */	blr 
