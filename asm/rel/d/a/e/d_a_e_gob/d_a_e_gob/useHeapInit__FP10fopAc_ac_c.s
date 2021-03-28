lbl_806DE528:
/* 806DE528  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806DE52C  7C 08 02 A6 */	mflr r0
/* 806DE530  90 01 00 34 */	stw r0, 0x34(r1)
/* 806DE534  39 61 00 30 */	addi r11, r1, 0x30
/* 806DE538  4B C8 3C A0 */	b _savegpr_28
/* 806DE53C  7C 7F 1B 78 */	mr r31, r3
/* 806DE540  38 60 00 58 */	li r3, 0x58
/* 806DE544  4B BF 07 08 */	b __nw__FUl
/* 806DE548  7C 7E 1B 79 */	or. r30, r3, r3
/* 806DE54C  41 82 00 94 */	beq lbl_806DE5E0
/* 806DE550  3C 60 80 6E */	lis r3, stringBase0@ha
/* 806DE554  38 63 F0 54 */	addi r3, r3, stringBase0@l
/* 806DE558  38 80 00 25 */	li r4, 0x25
/* 806DE55C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806DE560  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806DE564  3F 85 00 02 */	addis r28, r5, 2
/* 806DE568  3B 9C C2 F8 */	addi r28, r28, -15624
/* 806DE56C  7F 85 E3 78 */	mr r5, r28
/* 806DE570  38 C0 00 80 */	li r6, 0x80
/* 806DE574  4B 95 DD 78 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806DE578  7C 7D 1B 78 */	mr r29, r3
/* 806DE57C  3C 60 80 6E */	lis r3, stringBase0@ha
/* 806DE580  38 63 F0 54 */	addi r3, r3, stringBase0@l
/* 806DE584  38 80 00 29 */	li r4, 0x29
/* 806DE588  7F 85 E3 78 */	mr r5, r28
/* 806DE58C  38 C0 00 80 */	li r6, 0x80
/* 806DE590  4B 95 DD 5C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806DE594  7C 64 1B 78 */	mr r4, r3
/* 806DE598  38 1F 05 B8 */	addi r0, r31, 0x5b8
/* 806DE59C  90 01 00 08 */	stw r0, 8(r1)
/* 806DE5A0  3C 00 00 08 */	lis r0, 8
/* 806DE5A4  90 01 00 0C */	stw r0, 0xc(r1)
/* 806DE5A8  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 806DE5AC  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 806DE5B0  90 01 00 10 */	stw r0, 0x10(r1)
/* 806DE5B4  7F C3 F3 78 */	mr r3, r30
/* 806DE5B8  38 A0 00 00 */	li r5, 0
/* 806DE5BC  38 C0 00 00 */	li r6, 0
/* 806DE5C0  7F A7 EB 78 */	mr r7, r29
/* 806DE5C4  39 00 00 02 */	li r8, 2
/* 806DE5C8  3D 20 80 6E */	lis r9, lit_3911@ha
/* 806DE5CC  C0 29 EE 54 */	lfs f1, lit_3911@l(r9)
/* 806DE5D0  39 20 00 00 */	li r9, 0
/* 806DE5D4  39 40 FF FF */	li r10, -1
/* 806DE5D8  4B 93 21 F8 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 806DE5DC  7C 7E 1B 78 */	mr r30, r3
lbl_806DE5E0:
/* 806DE5E0  93 DF 05 B4 */	stw r30, 0x5b4(r31)
/* 806DE5E4  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806DE5E8  28 03 00 00 */	cmplwi r3, 0
/* 806DE5EC  41 82 00 10 */	beq lbl_806DE5FC
/* 806DE5F0  80 A3 00 04 */	lwz r5, 4(r3)
/* 806DE5F4  28 05 00 00 */	cmplwi r5, 0
/* 806DE5F8  40 82 00 0C */	bne lbl_806DE604
lbl_806DE5FC:
/* 806DE5FC  38 60 00 00 */	li r3, 0
/* 806DE600  48 00 00 84 */	b lbl_806DE684
lbl_806DE604:
/* 806DE604  93 E5 00 14 */	stw r31, 0x14(r5)
/* 806DE608  38 E0 00 00 */	li r7, 0
/* 806DE60C  3C 60 80 6E */	lis r3, nodeCallBack__FP8J3DJointi@ha
/* 806DE610  38 83 80 E0 */	addi r4, r3, nodeCallBack__FP8J3DJointi@l
/* 806DE614  48 00 00 18 */	b lbl_806DE62C
lbl_806DE618:
/* 806DE618  80 66 00 28 */	lwz r3, 0x28(r6)
/* 806DE61C  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 806DE620  7C 63 00 2E */	lwzx r3, r3, r0
/* 806DE624  90 83 00 04 */	stw r4, 4(r3)
/* 806DE628  38 E7 00 01 */	addi r7, r7, 1
lbl_806DE62C:
/* 806DE62C  80 C5 00 04 */	lwz r6, 4(r5)
/* 806DE630  A0 66 00 2C */	lhz r3, 0x2c(r6)
/* 806DE634  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 806DE638  7C 00 18 40 */	cmplw r0, r3
/* 806DE63C  41 80 FF DC */	blt lbl_806DE618
/* 806DE640  3C 60 80 6E */	lis r3, stringBase0@ha
/* 806DE644  38 63 F0 54 */	addi r3, r3, stringBase0@l
/* 806DE648  38 80 00 2A */	li r4, 0x2a
/* 806DE64C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806DE650  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806DE654  3C A5 00 02 */	addis r5, r5, 2
/* 806DE658  38 C0 00 80 */	li r6, 0x80
/* 806DE65C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806DE660  4B 95 DC 8C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806DE664  3C 80 00 08 */	lis r4, 8
/* 806DE668  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 806DE66C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 806DE670  4B 93 65 E4 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 806DE674  90 7F 06 4C */	stw r3, 0x64c(r31)
/* 806DE678  80 7F 06 4C */	lwz r3, 0x64c(r31)
/* 806DE67C  30 03 FF FF */	addic r0, r3, -1
/* 806DE680  7C 60 19 10 */	subfe r3, r0, r3
lbl_806DE684:
/* 806DE684  39 61 00 30 */	addi r11, r1, 0x30
/* 806DE688  4B C8 3B 9C */	b _restgpr_28
/* 806DE68C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806DE690  7C 08 03 A6 */	mtlr r0
/* 806DE694  38 21 00 30 */	addi r1, r1, 0x30
/* 806DE698  4E 80 00 20 */	blr 
