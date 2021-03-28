lbl_80BA5F88:
/* 80BA5F88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BA5F8C  7C 08 02 A6 */	mflr r0
/* 80BA5F90  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BA5F94  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BA5F98  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80BA5F9C  7C 7F 1B 78 */	mr r31, r3
/* 80BA5FA0  88 03 0B 30 */	lbz r0, 0xb30(r3)
/* 80BA5FA4  54 05 18 38 */	slwi r5, r0, 3
/* 80BA5FA8  3C 60 80 BA */	lis r3, l_bmdData@ha
/* 80BA5FAC  38 83 6C D0 */	addi r4, r3, l_bmdData@l
/* 80BA5FB0  7C 64 2A 14 */	add r3, r4, r5
/* 80BA5FB4  80 03 00 04 */	lwz r0, 4(r3)
/* 80BA5FB8  54 00 10 3A */	slwi r0, r0, 2
/* 80BA5FBC  3C 60 80 BA */	lis r3, l_resNameList@ha
/* 80BA5FC0  38 63 6C D8 */	addi r3, r3, l_resNameList@l
/* 80BA5FC4  7C 63 00 2E */	lwzx r3, r3, r0
/* 80BA5FC8  7C 84 28 2E */	lwzx r4, r4, r5
/* 80BA5FCC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80BA5FD0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80BA5FD4  3C A5 00 02 */	addis r5, r5, 2
/* 80BA5FD8  38 C0 00 80 */	li r6, 0x80
/* 80BA5FDC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BA5FE0  4B 49 63 0C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BA5FE4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BA5FE8  40 82 00 0C */	bne lbl_80BA5FF4
/* 80BA5FEC  38 60 00 00 */	li r3, 0
/* 80BA5FF0  48 00 00 98 */	b lbl_80BA6088
lbl_80BA5FF4:
/* 80BA5FF4  38 60 00 58 */	li r3, 0x58
/* 80BA5FF8  4B 72 8C 54 */	b __nw__FUl
/* 80BA5FFC  7C 60 1B 79 */	or. r0, r3, r3
/* 80BA6000  41 82 00 4C */	beq lbl_80BA604C
/* 80BA6004  38 1F 05 70 */	addi r0, r31, 0x570
/* 80BA6008  90 01 00 08 */	stw r0, 8(r1)
/* 80BA600C  3C 00 00 08 */	lis r0, 8
/* 80BA6010  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BA6014  3C 80 11 00 */	lis r4, 0x1100 /* 0x11000284@ha */
/* 80BA6018  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11000284@l */
/* 80BA601C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BA6020  7F C4 F3 78 */	mr r4, r30
/* 80BA6024  38 A0 00 00 */	li r5, 0
/* 80BA6028  38 C0 00 00 */	li r6, 0
/* 80BA602C  38 E0 00 00 */	li r7, 0
/* 80BA6030  39 00 FF FF */	li r8, -1
/* 80BA6034  3D 20 80 BA */	lis r9, lit_4108@ha
/* 80BA6038  C0 29 6C 60 */	lfs f1, lit_4108@l(r9)
/* 80BA603C  39 20 00 00 */	li r9, 0
/* 80BA6040  39 40 FF FF */	li r10, -1
/* 80BA6044  4B 46 A7 8C */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80BA6048  7C 60 1B 78 */	mr r0, r3
lbl_80BA604C:
/* 80BA604C  90 1F 05 6C */	stw r0, 0x56c(r31)
/* 80BA6050  80 7F 05 6C */	lwz r3, 0x56c(r31)
/* 80BA6054  28 03 00 00 */	cmplwi r3, 0
/* 80BA6058  41 82 00 10 */	beq lbl_80BA6068
/* 80BA605C  80 03 00 04 */	lwz r0, 4(r3)
/* 80BA6060  28 00 00 00 */	cmplwi r0, 0
/* 80BA6064  40 82 00 0C */	bne lbl_80BA6070
lbl_80BA6068:
/* 80BA6068  38 60 00 00 */	li r3, 0
/* 80BA606C  48 00 00 1C */	b lbl_80BA6088
lbl_80BA6070:
/* 80BA6070  7F E3 FB 78 */	mr r3, r31
/* 80BA6074  38 80 00 00 */	li r4, 0
/* 80BA6078  38 A0 00 00 */	li r5, 0
/* 80BA607C  48 00 04 85 */	bl setAnm__16daObj_AutoMata_cFib
/* 80BA6080  30 03 FF FF */	addic r0, r3, -1
/* 80BA6084  7C 60 19 10 */	subfe r3, r0, r3
lbl_80BA6088:
/* 80BA6088  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BA608C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80BA6090  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BA6094  7C 08 03 A6 */	mtlr r0
/* 80BA6098  38 21 00 20 */	addi r1, r1, 0x20
/* 80BA609C  4E 80 00 20 */	blr 
