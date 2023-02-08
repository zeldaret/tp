lbl_80AEFC80:
/* 80AEFC80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AEFC84  7C 08 02 A6 */	mflr r0
/* 80AEFC88  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AEFC8C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AEFC90  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80AEFC94  7C 7E 1B 78 */	mr r30, r3
/* 80AEFC98  3B E0 00 00 */	li r31, 0
/* 80AEFC9C  3C 60 80 AF */	lis r3, l_bmdGetParamList@ha /* 0x80AF28A8@ha */
/* 80AEFCA0  84 83 28 A8 */	lwzu r4, l_bmdGetParamList@l(r3)  /* 0x80AF28A8@l */
/* 80AEFCA4  2C 04 00 00 */	cmpwi r4, 0
/* 80AEFCA8  41 80 00 34 */	blt lbl_80AEFCDC
/* 80AEFCAC  80 03 00 04 */	lwz r0, 4(r3)
/* 80AEFCB0  54 00 10 3A */	slwi r0, r0, 2
/* 80AEFCB4  3C 60 80 AF */	lis r3, l_resNames@ha /* 0x80AF2930@ha */
/* 80AEFCB8  38 63 29 30 */	addi r3, r3, l_resNames@l /* 0x80AF2930@l */
/* 80AEFCBC  7C 63 00 2E */	lwzx r3, r3, r0
/* 80AEFCC0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AEFCC4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AEFCC8  3C A5 00 02 */	addis r5, r5, 2
/* 80AEFCCC  38 C0 00 80 */	li r6, 0x80
/* 80AEFCD0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80AEFCD4  4B 54 C6 19 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80AEFCD8  7C 7F 1B 78 */	mr r31, r3
lbl_80AEFCDC:
/* 80AEFCDC  38 60 00 58 */	li r3, 0x58
/* 80AEFCE0  4B 7D EF 6D */	bl __nw__FUl
/* 80AEFCE4  7C 60 1B 79 */	or. r0, r3, r3
/* 80AEFCE8  41 82 00 4C */	beq lbl_80AEFD34
/* 80AEFCEC  38 1E 0B 48 */	addi r0, r30, 0xb48
/* 80AEFCF0  90 01 00 08 */	stw r0, 8(r1)
/* 80AEFCF4  3C 00 00 08 */	lis r0, 8
/* 80AEFCF8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AEFCFC  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80AEFD00  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80AEFD04  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AEFD08  7F E4 FB 78 */	mr r4, r31
/* 80AEFD0C  38 A0 00 00 */	li r5, 0
/* 80AEFD10  38 C0 00 00 */	li r6, 0
/* 80AEFD14  38 E0 00 00 */	li r7, 0
/* 80AEFD18  39 00 FF FF */	li r8, -1
/* 80AEFD1C  3D 20 80 AF */	lis r9, lit_4448@ha /* 0x80AF2764@ha */
/* 80AEFD20  C0 29 27 64 */	lfs f1, lit_4448@l(r9)  /* 0x80AF2764@l */
/* 80AEFD24  39 20 00 00 */	li r9, 0
/* 80AEFD28  39 40 FF FF */	li r10, -1
/* 80AEFD2C  4B 52 0A A5 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80AEFD30  7C 60 1B 78 */	mr r0, r3
lbl_80AEFD34:
/* 80AEFD34  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80AEFD38  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80AEFD3C  28 03 00 00 */	cmplwi r3, 0
/* 80AEFD40  41 82 00 1C */	beq lbl_80AEFD5C
/* 80AEFD44  80 03 00 04 */	lwz r0, 4(r3)
/* 80AEFD48  28 00 00 00 */	cmplwi r0, 0
/* 80AEFD4C  40 82 00 10 */	bne lbl_80AEFD5C
/* 80AEFD50  4B 52 15 C1 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
/* 80AEFD54  38 00 00 00 */	li r0, 0
/* 80AEFD58  90 1E 05 68 */	stw r0, 0x568(r30)
lbl_80AEFD5C:
/* 80AEFD5C  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80AEFD60  28 03 00 00 */	cmplwi r3, 0
/* 80AEFD64  40 82 00 0C */	bne lbl_80AEFD70
/* 80AEFD68  38 60 00 00 */	li r3, 0
/* 80AEFD6C  48 00 00 C8 */	b lbl_80AEFE34
lbl_80AEFD70:
/* 80AEFD70  80 A3 00 04 */	lwz r5, 4(r3)
/* 80AEFD74  38 C0 00 00 */	li r6, 0
/* 80AEFD78  3C 60 80 AF */	lis r3, ctrlJointCallBack__16daNpc_SoldierA_cFP8J3DJointi@ha /* 0x80AF0130@ha */
/* 80AEFD7C  38 83 01 30 */	addi r4, r3, ctrlJointCallBack__16daNpc_SoldierA_cFP8J3DJointi@l /* 0x80AF0130@l */
/* 80AEFD80  48 00 00 18 */	b lbl_80AEFD98
lbl_80AEFD84:
/* 80AEFD84  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80AEFD88  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80AEFD8C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80AEFD90  90 83 00 04 */	stw r4, 4(r3)
/* 80AEFD94  38 C6 00 01 */	addi r6, r6, 1
lbl_80AEFD98:
/* 80AEFD98  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80AEFD9C  A0 1F 00 2C */	lhz r0, 0x2c(r31)
/* 80AEFDA0  7C 03 00 40 */	cmplw r3, r0
/* 80AEFDA4  41 80 FF E0 */	blt lbl_80AEFD84
/* 80AEFDA8  93 C5 00 14 */	stw r30, 0x14(r5)
/* 80AEFDAC  7F C3 F3 78 */	mr r3, r30
/* 80AEFDB0  38 80 00 04 */	li r4, 4
/* 80AEFDB4  3C A0 80 AF */	lis r5, lit_4449@ha /* 0x80AF2768@ha */
/* 80AEFDB8  C0 25 27 68 */	lfs f1, lit_4449@l(r5)  /* 0x80AF2768@l */
/* 80AEFDBC  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80AEFDC0  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80AEFDC4  7D 89 03 A6 */	mtctr r12
/* 80AEFDC8  4E 80 04 21 */	bctrl 
/* 80AEFDCC  3C 60 80 AF */	lis r3, l_bmdGetParamList@ha /* 0x80AF28A8@ha */
/* 80AEFDD0  38 83 28 A8 */	addi r4, r3, l_bmdGetParamList@l /* 0x80AF28A8@l */
/* 80AEFDD4  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80AEFDD8  54 00 10 3A */	slwi r0, r0, 2
/* 80AEFDDC  3C 60 80 AF */	lis r3, l_resNames@ha /* 0x80AF2930@ha */
/* 80AEFDE0  38 63 29 30 */	addi r3, r3, l_resNames@l /* 0x80AF2930@l */
/* 80AEFDE4  7C 63 00 2E */	lwzx r3, r3, r0
/* 80AEFDE8  80 84 00 08 */	lwz r4, 8(r4)
/* 80AEFDEC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AEFDF0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AEFDF4  3C A5 00 02 */	addis r5, r5, 2
/* 80AEFDF8  38 C0 00 80 */	li r6, 0x80
/* 80AEFDFC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80AEFE00  4B 54 C4 ED */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80AEFE04  28 03 00 00 */	cmplwi r3, 0
/* 80AEFE08  41 82 00 28 */	beq lbl_80AEFE30
/* 80AEFE0C  3C 80 00 08 */	lis r4, 8
/* 80AEFE10  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80AEFE14  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80AEFE18  4B 52 4E 3D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80AEFE1C  90 7E 0B D8 */	stw r3, 0xbd8(r30)
/* 80AEFE20  80 7E 0B D8 */	lwz r3, 0xbd8(r30)
/* 80AEFE24  30 03 FF FF */	addic r0, r3, -1
/* 80AEFE28  7C 60 19 10 */	subfe r3, r0, r3
/* 80AEFE2C  48 00 00 08 */	b lbl_80AEFE34
lbl_80AEFE30:
/* 80AEFE30  38 60 00 00 */	li r3, 0
lbl_80AEFE34:
/* 80AEFE34  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AEFE38  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80AEFE3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AEFE40  7C 08 03 A6 */	mtlr r0
/* 80AEFE44  38 21 00 20 */	addi r1, r1, 0x20
/* 80AEFE48  4E 80 00 20 */	blr 
