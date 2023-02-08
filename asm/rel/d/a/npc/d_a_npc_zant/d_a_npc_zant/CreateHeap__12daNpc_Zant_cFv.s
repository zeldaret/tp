lbl_80B6C574:
/* 80B6C574  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B6C578  7C 08 02 A6 */	mflr r0
/* 80B6C57C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B6C580  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B6C584  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80B6C588  7C 7E 1B 78 */	mr r30, r3
/* 80B6C58C  3C 60 80 B7 */	lis r3, l_bmdData@ha /* 0x80B6EAB4@ha */
/* 80B6C590  38 83 EA B4 */	addi r4, r3, l_bmdData@l /* 0x80B6EAB4@l */
/* 80B6C594  80 04 00 04 */	lwz r0, 4(r4)
/* 80B6C598  54 00 10 3A */	slwi r0, r0, 2
/* 80B6C59C  3C 60 80 B7 */	lis r3, l_resNameList@ha /* 0x80B6EACC@ha */
/* 80B6C5A0  38 63 EA CC */	addi r3, r3, l_resNameList@l /* 0x80B6EACC@l */
/* 80B6C5A4  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B6C5A8  80 84 00 00 */	lwz r4, 0(r4)
/* 80B6C5AC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B6C5B0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B6C5B4  3C A5 00 02 */	addis r5, r5, 2
/* 80B6C5B8  38 C0 00 80 */	li r6, 0x80
/* 80B6C5BC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80B6C5C0  4B 4C FD 2D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80B6C5C4  7C 7F 1B 78 */	mr r31, r3
/* 80B6C5C8  38 60 00 58 */	li r3, 0x58
/* 80B6C5CC  4B 76 26 81 */	bl __nw__FUl
/* 80B6C5D0  7C 60 1B 79 */	or. r0, r3, r3
/* 80B6C5D4  41 82 00 4C */	beq lbl_80B6C620
/* 80B6C5D8  38 1E 05 80 */	addi r0, r30, 0x580
/* 80B6C5DC  90 01 00 08 */	stw r0, 8(r1)
/* 80B6C5E0  3C 00 00 08 */	lis r0, 8
/* 80B6C5E4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B6C5E8  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80B6C5EC  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80B6C5F0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B6C5F4  7F E4 FB 78 */	mr r4, r31
/* 80B6C5F8  38 A0 00 00 */	li r5, 0
/* 80B6C5FC  38 C0 00 00 */	li r6, 0
/* 80B6C600  38 E0 00 00 */	li r7, 0
/* 80B6C604  39 00 FF FF */	li r8, -1
/* 80B6C608  3D 20 80 B7 */	lis r9, lit_4313@ha /* 0x80B6EA54@ha */
/* 80B6C60C  C0 29 EA 54 */	lfs f1, lit_4313@l(r9)  /* 0x80B6EA54@l */
/* 80B6C610  39 20 00 00 */	li r9, 0
/* 80B6C614  39 40 FF FF */	li r10, -1
/* 80B6C618  4B 4A 41 B9 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80B6C61C  7C 60 1B 78 */	mr r0, r3
lbl_80B6C620:
/* 80B6C620  90 1E 05 78 */	stw r0, 0x578(r30)
/* 80B6C624  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80B6C628  28 03 00 00 */	cmplwi r3, 0
/* 80B6C62C  41 82 00 1C */	beq lbl_80B6C648
/* 80B6C630  80 03 00 04 */	lwz r0, 4(r3)
/* 80B6C634  28 00 00 00 */	cmplwi r0, 0
/* 80B6C638  40 82 00 10 */	bne lbl_80B6C648
/* 80B6C63C  4B 4A 4C D5 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
/* 80B6C640  38 00 00 00 */	li r0, 0
/* 80B6C644  90 1E 05 78 */	stw r0, 0x578(r30)
lbl_80B6C648:
/* 80B6C648  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80B6C64C  28 03 00 00 */	cmplwi r3, 0
/* 80B6C650  40 82 00 0C */	bne lbl_80B6C65C
/* 80B6C654  38 60 00 00 */	li r3, 0
/* 80B6C658  48 00 00 90 */	b lbl_80B6C6E8
lbl_80B6C65C:
/* 80B6C65C  80 A3 00 04 */	lwz r5, 4(r3)
/* 80B6C660  38 C0 00 00 */	li r6, 0
/* 80B6C664  3C 60 80 B7 */	lis r3, ctrlJointCallBack__12daNpc_Zant_cFP8J3DJointi@ha /* 0x80B6C808@ha */
/* 80B6C668  38 83 C8 08 */	addi r4, r3, ctrlJointCallBack__12daNpc_Zant_cFP8J3DJointi@l /* 0x80B6C808@l */
/* 80B6C66C  48 00 00 18 */	b lbl_80B6C684
lbl_80B6C670:
/* 80B6C670  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 80B6C674  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80B6C678  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B6C67C  90 83 00 04 */	stw r4, 4(r3)
/* 80B6C680  38 C6 00 01 */	addi r6, r6, 1
lbl_80B6C684:
/* 80B6C684  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80B6C688  A0 1F 00 2C */	lhz r0, 0x2c(r31)
/* 80B6C68C  7C 03 00 40 */	cmplw r3, r0
/* 80B6C690  41 80 FF E0 */	blt lbl_80B6C670
/* 80B6C694  93 C5 00 14 */	stw r30, 0x14(r5)
/* 80B6C698  7F C3 F3 78 */	mr r3, r30
/* 80B6C69C  38 80 00 00 */	li r4, 0
/* 80B6C6A0  38 A0 00 00 */	li r5, 0
/* 80B6C6A4  4B 5D DC E5 */	bl setFaceMotionAnm__8daNpcT_cFib
/* 80B6C6A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B6C6AC  41 82 00 38 */	beq lbl_80B6C6E4
/* 80B6C6B0  7F C3 F3 78 */	mr r3, r30
/* 80B6C6B4  38 80 00 00 */	li r4, 0
/* 80B6C6B8  3C A0 80 B7 */	lis r5, lit_4176@ha /* 0x80B6EA48@ha */
/* 80B6C6BC  C0 25 EA 48 */	lfs f1, lit_4176@l(r5)  /* 0x80B6EA48@l */
/* 80B6C6C0  38 A0 00 00 */	li r5, 0
/* 80B6C6C4  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80B6C6C8  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80B6C6CC  7D 89 03 A6 */	mtctr r12
/* 80B6C6D0  4E 80 04 21 */	bctrl 
/* 80B6C6D4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B6C6D8  41 82 00 0C */	beq lbl_80B6C6E4
/* 80B6C6DC  38 60 00 01 */	li r3, 1
/* 80B6C6E0  48 00 00 08 */	b lbl_80B6C6E8
lbl_80B6C6E4:
/* 80B6C6E4  38 60 00 00 */	li r3, 0
lbl_80B6C6E8:
/* 80B6C6E8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B6C6EC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80B6C6F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B6C6F4  7C 08 03 A6 */	mtlr r0
/* 80B6C6F8  38 21 00 20 */	addi r1, r1, 0x20
/* 80B6C6FC  4E 80 00 20 */	blr 
