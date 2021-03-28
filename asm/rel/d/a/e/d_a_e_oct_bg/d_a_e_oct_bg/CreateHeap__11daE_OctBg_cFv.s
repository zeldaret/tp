lbl_8073921C:
/* 8073921C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80739220  7C 08 02 A6 */	mflr r0
/* 80739224  90 01 00 34 */	stw r0, 0x34(r1)
/* 80739228  39 61 00 30 */	addi r11, r1, 0x30
/* 8073922C  4B C2 8F AC */	b _savegpr_28
/* 80739230  7C 7D 1B 78 */	mr r29, r3
/* 80739234  3C 60 80 74 */	lis r3, stringBase0@ha
/* 80739238  38 63 9E 44 */	addi r3, r3, stringBase0@l
/* 8073923C  38 80 00 0A */	li r4, 0xa
/* 80739240  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80739244  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80739248  3F E5 00 02 */	addis r31, r5, 2
/* 8073924C  3B FF C2 F8 */	addi r31, r31, -15624
/* 80739250  7F E5 FB 78 */	mr r5, r31
/* 80739254  38 C0 00 80 */	li r6, 0x80
/* 80739258  4B 90 30 94 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8073925C  7C 7E 1B 78 */	mr r30, r3
/* 80739260  38 60 00 58 */	li r3, 0x58
/* 80739264  4B B9 59 E8 */	b __nw__FUl
/* 80739268  7C 7C 1B 79 */	or. r28, r3, r3
/* 8073926C  41 82 00 68 */	beq lbl_807392D4
/* 80739270  3C 60 80 74 */	lis r3, stringBase0@ha
/* 80739274  38 63 9E 44 */	addi r3, r3, stringBase0@l
/* 80739278  38 80 00 07 */	li r4, 7
/* 8073927C  7F E5 FB 78 */	mr r5, r31
/* 80739280  38 C0 00 80 */	li r6, 0x80
/* 80739284  4B 90 30 68 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80739288  7C 67 1B 78 */	mr r7, r3
/* 8073928C  38 1D 05 BC */	addi r0, r29, 0x5bc
/* 80739290  90 01 00 08 */	stw r0, 8(r1)
/* 80739294  3C 00 00 08 */	lis r0, 8
/* 80739298  90 01 00 0C */	stw r0, 0xc(r1)
/* 8073929C  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 807392A0  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 807392A4  90 01 00 10 */	stw r0, 0x10(r1)
/* 807392A8  7F 83 E3 78 */	mr r3, r28
/* 807392AC  7F C4 F3 78 */	mr r4, r30
/* 807392B0  38 A0 00 00 */	li r5, 0
/* 807392B4  38 C0 00 00 */	li r6, 0
/* 807392B8  39 00 00 00 */	li r8, 0
/* 807392BC  3D 20 80 74 */	lis r9, lit_3823@ha
/* 807392C0  C0 29 9D 78 */	lfs f1, lit_3823@l(r9)
/* 807392C4  39 20 00 00 */	li r9, 0
/* 807392C8  39 40 FF FF */	li r10, -1
/* 807392CC  4B 8D 75 04 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 807392D0  7C 7C 1B 78 */	mr r28, r3
lbl_807392D4:
/* 807392D4  93 9D 05 B4 */	stw r28, 0x5b4(r29)
/* 807392D8  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 807392DC  28 03 00 00 */	cmplwi r3, 0
/* 807392E0  41 82 00 10 */	beq lbl_807392F0
/* 807392E4  83 C3 00 04 */	lwz r30, 4(r3)
/* 807392E8  28 1E 00 00 */	cmplwi r30, 0
/* 807392EC  40 82 00 0C */	bne lbl_807392F8
lbl_807392F0:
/* 807392F0  38 60 00 00 */	li r3, 0
/* 807392F4  48 00 00 D0 */	b lbl_807393C4
lbl_807392F8:
/* 807392F8  93 BE 00 14 */	stw r29, 0x14(r30)
/* 807392FC  38 C0 00 01 */	li r6, 1
/* 80739300  3C 60 80 74 */	lis r3, JointCallBack__11daE_OctBg_cFP8J3DJointi@ha
/* 80739304  38 83 91 D0 */	addi r4, r3, JointCallBack__11daE_OctBg_cFP8J3DJointi@l
/* 80739308  48 00 00 18 */	b lbl_80739320
lbl_8073930C:
/* 8073930C  80 65 00 28 */	lwz r3, 0x28(r5)
/* 80739310  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80739314  7C 63 00 2E */	lwzx r3, r3, r0
/* 80739318  90 83 00 04 */	stw r4, 4(r3)
/* 8073931C  38 C6 00 01 */	addi r6, r6, 1
lbl_80739320:
/* 80739320  80 BE 00 04 */	lwz r5, 4(r30)
/* 80739324  A0 65 00 2C */	lhz r3, 0x2c(r5)
/* 80739328  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 8073932C  7C 00 18 40 */	cmplw r0, r3
/* 80739330  41 80 FF DC */	blt lbl_8073930C
/* 80739334  38 60 00 18 */	li r3, 0x18
/* 80739338  4B B9 59 14 */	b __nw__FUl
/* 8073933C  7C 7C 1B 79 */	or. r28, r3, r3
/* 80739340  41 82 00 20 */	beq lbl_80739360
/* 80739344  3C 80 80 74 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80739348  38 04 A0 DC */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 8073934C  90 1C 00 00 */	stw r0, 0(r28)
/* 80739350  38 80 00 00 */	li r4, 0
/* 80739354  4B BE F0 A8 */	b init__12J3DFrameCtrlFs
/* 80739358  38 00 00 00 */	li r0, 0
/* 8073935C  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_80739360:
/* 80739360  93 9D 05 B8 */	stw r28, 0x5b8(r29)
/* 80739364  80 1D 05 B8 */	lwz r0, 0x5b8(r29)
/* 80739368  28 00 00 00 */	cmplwi r0, 0
/* 8073936C  40 82 00 0C */	bne lbl_80739378
/* 80739370  38 60 00 00 */	li r3, 0
/* 80739374  48 00 00 50 */	b lbl_807393C4
lbl_80739378:
/* 80739378  3C 60 80 74 */	lis r3, stringBase0@ha
/* 8073937C  38 63 9E 44 */	addi r3, r3, stringBase0@l
/* 80739380  38 80 00 0D */	li r4, 0xd
/* 80739384  7F E5 FB 78 */	mr r5, r31
/* 80739388  38 C0 00 80 */	li r6, 0x80
/* 8073938C  4B 90 2F 60 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80739390  7C 65 1B 78 */	mr r5, r3
/* 80739394  80 9E 00 04 */	lwz r4, 4(r30)
/* 80739398  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 8073939C  38 84 00 58 */	addi r4, r4, 0x58
/* 807393A0  38 C0 00 01 */	li r6, 1
/* 807393A4  38 E0 00 00 */	li r7, 0
/* 807393A8  3D 00 80 74 */	lis r8, lit_3823@ha
/* 807393AC  C0 28 9D 78 */	lfs f1, lit_3823@l(r8)
/* 807393B0  39 00 00 00 */	li r8, 0
/* 807393B4  39 20 FF FF */	li r9, -1
/* 807393B8  4B 8D 43 54 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 807393BC  30 03 FF FF */	addic r0, r3, -1
/* 807393C0  7C 60 19 10 */	subfe r3, r0, r3
lbl_807393C4:
/* 807393C4  39 61 00 30 */	addi r11, r1, 0x30
/* 807393C8  4B C2 8E 5C */	b _restgpr_28
/* 807393CC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807393D0  7C 08 03 A6 */	mtlr r0
/* 807393D4  38 21 00 30 */	addi r1, r1, 0x30
/* 807393D8  4E 80 00 20 */	blr 
