lbl_80AF33A0:
/* 80AF33A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AF33A4  7C 08 02 A6 */	mflr r0
/* 80AF33A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AF33AC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AF33B0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80AF33B4  7C 7E 1B 78 */	mr r30, r3
/* 80AF33B8  3B E0 00 00 */	li r31, 0
/* 80AF33BC  3C 60 80 AF */	lis r3, l_bmdGetParamList@ha
/* 80AF33C0  84 83 5C 30 */	lwzu r4, l_bmdGetParamList@l(r3)
/* 80AF33C4  2C 04 00 00 */	cmpwi r4, 0
/* 80AF33C8  41 80 00 34 */	blt lbl_80AF33FC
/* 80AF33CC  80 03 00 04 */	lwz r0, 4(r3)
/* 80AF33D0  54 00 10 3A */	slwi r0, r0, 2
/* 80AF33D4  3C 60 80 AF */	lis r3, l_resNames@ha
/* 80AF33D8  38 63 5C 8C */	addi r3, r3, l_resNames@l
/* 80AF33DC  7C 63 00 2E */	lwzx r3, r3, r0
/* 80AF33E0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80AF33E4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80AF33E8  3C A5 00 02 */	addis r5, r5, 2
/* 80AF33EC  38 C0 00 80 */	li r6, 0x80
/* 80AF33F0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80AF33F4  4B 54 8E F8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80AF33F8  7C 7F 1B 78 */	mr r31, r3
lbl_80AF33FC:
/* 80AF33FC  38 60 00 58 */	li r3, 0x58
/* 80AF3400  4B 7D B8 4C */	b __nw__FUl
/* 80AF3404  7C 60 1B 79 */	or. r0, r3, r3
/* 80AF3408  41 82 00 4C */	beq lbl_80AF3454
/* 80AF340C  38 1E 0B 48 */	addi r0, r30, 0xb48
/* 80AF3410  90 01 00 08 */	stw r0, 8(r1)
/* 80AF3414  3C 00 00 08 */	lis r0, 8
/* 80AF3418  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AF341C  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80AF3420  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80AF3424  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AF3428  7F E4 FB 78 */	mr r4, r31
/* 80AF342C  38 A0 00 00 */	li r5, 0
/* 80AF3430  38 C0 00 00 */	li r6, 0
/* 80AF3434  38 E0 00 00 */	li r7, 0
/* 80AF3438  39 00 FF FF */	li r8, -1
/* 80AF343C  3D 20 80 AF */	lis r9, lit_4453@ha
/* 80AF3440  C0 29 5B 50 */	lfs f1, lit_4453@l(r9)
/* 80AF3444  39 20 00 00 */	li r9, 0
/* 80AF3448  39 40 FF FF */	li r10, -1
/* 80AF344C  4B 51 D3 84 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80AF3450  7C 60 1B 78 */	mr r0, r3
lbl_80AF3454:
/* 80AF3454  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80AF3458  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80AF345C  28 03 00 00 */	cmplwi r3, 0
/* 80AF3460  41 82 00 1C */	beq lbl_80AF347C
/* 80AF3464  80 03 00 04 */	lwz r0, 4(r3)
/* 80AF3468  28 00 00 00 */	cmplwi r0, 0
/* 80AF346C  40 82 00 10 */	bne lbl_80AF347C
/* 80AF3470  4B 51 DE A0 */	b stopZelAnime__16mDoExt_McaMorfSOFv
/* 80AF3474  38 00 00 00 */	li r0, 0
/* 80AF3478  90 1E 05 68 */	stw r0, 0x568(r30)
lbl_80AF347C:
/* 80AF347C  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80AF3480  28 03 00 00 */	cmplwi r3, 0
/* 80AF3484  40 82 00 0C */	bne lbl_80AF3490
/* 80AF3488  38 60 00 00 */	li r3, 0
/* 80AF348C  48 00 00 C8 */	b lbl_80AF3554
lbl_80AF3490:
/* 80AF3490  80 A3 00 04 */	lwz r5, 4(r3)
/* 80AF3494  38 C0 00 00 */	li r6, 0
/* 80AF3498  3C 60 80 AF */	lis r3, ctrlJointCallBack__16daNpc_SoldierB_cFP8J3DJointi@ha
/* 80AF349C  38 83 38 50 */	addi r4, r3, ctrlJointCallBack__16daNpc_SoldierB_cFP8J3DJointi@l
/* 80AF34A0  48 00 00 18 */	b lbl_80AF34B8
lbl_80AF34A4:
/* 80AF34A4  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80AF34A8  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80AF34AC  7C 63 00 2E */	lwzx r3, r3, r0
/* 80AF34B0  90 83 00 04 */	stw r4, 4(r3)
/* 80AF34B4  38 C6 00 01 */	addi r6, r6, 1
lbl_80AF34B8:
/* 80AF34B8  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80AF34BC  A0 1F 00 2C */	lhz r0, 0x2c(r31)
/* 80AF34C0  7C 03 00 40 */	cmplw r3, r0
/* 80AF34C4  41 80 FF E0 */	blt lbl_80AF34A4
/* 80AF34C8  93 C5 00 14 */	stw r30, 0x14(r5)
/* 80AF34CC  7F C3 F3 78 */	mr r3, r30
/* 80AF34D0  38 80 00 02 */	li r4, 2
/* 80AF34D4  3C A0 80 AF */	lis r5, lit_4454@ha
/* 80AF34D8  C0 25 5B 54 */	lfs f1, lit_4454@l(r5)
/* 80AF34DC  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80AF34E0  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80AF34E4  7D 89 03 A6 */	mtctr r12
/* 80AF34E8  4E 80 04 21 */	bctrl 
/* 80AF34EC  3C 60 80 AF */	lis r3, l_bmdGetParamList@ha
/* 80AF34F0  38 83 5C 30 */	addi r4, r3, l_bmdGetParamList@l
/* 80AF34F4  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80AF34F8  54 00 10 3A */	slwi r0, r0, 2
/* 80AF34FC  3C 60 80 AF */	lis r3, l_resNames@ha
/* 80AF3500  38 63 5C 8C */	addi r3, r3, l_resNames@l
/* 80AF3504  7C 63 00 2E */	lwzx r3, r3, r0
/* 80AF3508  80 84 00 08 */	lwz r4, 8(r4)
/* 80AF350C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80AF3510  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80AF3514  3C A5 00 02 */	addis r5, r5, 2
/* 80AF3518  38 C0 00 80 */	li r6, 0x80
/* 80AF351C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80AF3520  4B 54 8D CC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80AF3524  28 03 00 00 */	cmplwi r3, 0
/* 80AF3528  41 82 00 28 */	beq lbl_80AF3550
/* 80AF352C  3C 80 00 08 */	lis r4, 8
/* 80AF3530  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80AF3534  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80AF3538  4B 52 17 1C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80AF353C  90 7E 0B D8 */	stw r3, 0xbd8(r30)
/* 80AF3540  80 7E 0B D8 */	lwz r3, 0xbd8(r30)
/* 80AF3544  30 03 FF FF */	addic r0, r3, -1
/* 80AF3548  7C 60 19 10 */	subfe r3, r0, r3
/* 80AF354C  48 00 00 08 */	b lbl_80AF3554
lbl_80AF3550:
/* 80AF3550  38 60 00 00 */	li r3, 0
lbl_80AF3554:
/* 80AF3554  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AF3558  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80AF355C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AF3560  7C 08 03 A6 */	mtlr r0
/* 80AF3564  38 21 00 20 */	addi r1, r1, 0x20
/* 80AF3568  4E 80 00 20 */	blr 
