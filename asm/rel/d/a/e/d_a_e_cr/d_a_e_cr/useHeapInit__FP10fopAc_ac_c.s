lbl_8069922C:
/* 8069922C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80699230  7C 08 02 A6 */	mflr r0
/* 80699234  90 01 00 34 */	stw r0, 0x34(r1)
/* 80699238  39 61 00 30 */	addi r11, r1, 0x30
/* 8069923C  4B CC 8F 9C */	b _savegpr_28
/* 80699240  7C 7F 1B 78 */	mr r31, r3
/* 80699244  38 60 00 58 */	li r3, 0x58
/* 80699248  4B C3 5A 04 */	b __nw__FUl
/* 8069924C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80699250  41 82 00 94 */	beq lbl_806992E4
/* 80699254  3C 60 80 6A */	lis r3, stringBase0@ha
/* 80699258  38 63 9D 40 */	addi r3, r3, stringBase0@l
/* 8069925C  38 80 00 09 */	li r4, 9
/* 80699260  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80699264  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80699268  3F 85 00 02 */	addis r28, r5, 2
/* 8069926C  3B 9C C2 F8 */	addi r28, r28, -15624
/* 80699270  7F 85 E3 78 */	mr r5, r28
/* 80699274  38 C0 00 80 */	li r6, 0x80
/* 80699278  4B 9A 30 74 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8069927C  7C 7D 1B 78 */	mr r29, r3
/* 80699280  3C 60 80 6A */	lis r3, stringBase0@ha
/* 80699284  38 63 9D 40 */	addi r3, r3, stringBase0@l
/* 80699288  38 80 00 0D */	li r4, 0xd
/* 8069928C  7F 85 E3 78 */	mr r5, r28
/* 80699290  38 C0 00 80 */	li r6, 0x80
/* 80699294  4B 9A 30 58 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80699298  7C 64 1B 78 */	mr r4, r3
/* 8069929C  38 1F 05 BC */	addi r0, r31, 0x5bc
/* 806992A0  90 01 00 08 */	stw r0, 8(r1)
/* 806992A4  3C 00 00 08 */	lis r0, 8
/* 806992A8  90 01 00 0C */	stw r0, 0xc(r1)
/* 806992AC  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 806992B0  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 806992B4  90 01 00 10 */	stw r0, 0x10(r1)
/* 806992B8  7F C3 F3 78 */	mr r3, r30
/* 806992BC  38 A0 00 00 */	li r5, 0
/* 806992C0  38 C0 00 00 */	li r6, 0
/* 806992C4  7F A7 EB 78 */	mr r7, r29
/* 806992C8  39 00 00 02 */	li r8, 2
/* 806992CC  3D 20 80 6A */	lis r9, lit_3790@ha
/* 806992D0  C0 29 9C B8 */	lfs f1, lit_3790@l(r9)
/* 806992D4  39 20 00 00 */	li r9, 0
/* 806992D8  39 40 FF FF */	li r10, -1
/* 806992DC  4B 97 74 F4 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 806992E0  7C 7E 1B 78 */	mr r30, r3
lbl_806992E4:
/* 806992E4  93 DF 05 B8 */	stw r30, 0x5b8(r31)
/* 806992E8  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 806992EC  28 03 00 00 */	cmplwi r3, 0
/* 806992F0  41 82 00 10 */	beq lbl_80699300
/* 806992F4  80 A3 00 04 */	lwz r5, 4(r3)
/* 806992F8  28 05 00 00 */	cmplwi r5, 0
/* 806992FC  40 82 00 0C */	bne lbl_80699308
lbl_80699300:
/* 80699300  38 60 00 00 */	li r3, 0
/* 80699304  48 00 00 50 */	b lbl_80699354
lbl_80699308:
/* 80699308  93 E5 00 14 */	stw r31, 0x14(r5)
/* 8069930C  38 E0 00 00 */	li r7, 0
/* 80699310  3C 60 80 6A */	lis r3, nodeCallBack__FP8J3DJointi@ha
/* 80699314  38 83 80 F0 */	addi r4, r3, nodeCallBack__FP8J3DJointi@l
/* 80699318  48 00 00 24 */	b lbl_8069933C
lbl_8069931C:
/* 8069931C  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 80699320  28 00 00 02 */	cmplwi r0, 2
/* 80699324  40 82 00 14 */	bne lbl_80699338
/* 80699328  80 66 00 28 */	lwz r3, 0x28(r6)
/* 8069932C  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 80699330  7C 63 00 2E */	lwzx r3, r3, r0
/* 80699334  90 83 00 04 */	stw r4, 4(r3)
lbl_80699338:
/* 80699338  38 E7 00 01 */	addi r7, r7, 1
lbl_8069933C:
/* 8069933C  80 C5 00 04 */	lwz r6, 4(r5)
/* 80699340  A0 66 00 2C */	lhz r3, 0x2c(r6)
/* 80699344  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 80699348  7C 00 18 40 */	cmplw r0, r3
/* 8069934C  41 80 FF D0 */	blt lbl_8069931C
/* 80699350  38 60 00 01 */	li r3, 1
lbl_80699354:
/* 80699354  39 61 00 30 */	addi r11, r1, 0x30
/* 80699358  4B CC 8E CC */	b _restgpr_28
/* 8069935C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80699360  7C 08 03 A6 */	mtlr r0
/* 80699364  38 21 00 30 */	addi r1, r1, 0x30
/* 80699368  4E 80 00 20 */	blr 
