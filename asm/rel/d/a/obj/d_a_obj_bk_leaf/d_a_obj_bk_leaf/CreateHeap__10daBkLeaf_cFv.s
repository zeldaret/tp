lbl_80BB629C:
/* 80BB629C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BB62A0  7C 08 02 A6 */	mflr r0
/* 80BB62A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BB62A8  39 61 00 20 */	addi r11, r1, 0x20
/* 80BB62AC  4B 7A BF 30 */	b _savegpr_29
/* 80BB62B0  7C 7D 1B 78 */	mr r29, r3
/* 80BB62B4  3C 60 80 BB */	lis r3, cNullVec__6Z2Calc@ha
/* 80BB62B8  3B E3 67 38 */	addi r31, r3, cNullVec__6Z2Calc@l
/* 80BB62BC  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80BB62C0  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 80BB62C4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80BB62C8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80BB62CC  3F C5 00 02 */	addis r30, r5, 2
/* 80BB62D0  3B DE C2 F8 */	addi r30, r30, -15624
/* 80BB62D4  7F C5 F3 78 */	mr r5, r30
/* 80BB62D8  38 C0 00 80 */	li r6, 0x80
/* 80BB62DC  4B 48 60 A0 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80BB62E0  3C 80 00 08 */	lis r4, 8
/* 80BB62E4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BB62E8  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BB62EC  4B 45 E9 68 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BB62F0  90 7D 05 70 */	stw r3, 0x570(r29)
/* 80BB62F4  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 80BB62F8  28 00 00 00 */	cmplwi r0, 0
/* 80BB62FC  40 82 00 0C */	bne lbl_80BB6308
/* 80BB6300  38 60 00 00 */	li r3, 0
/* 80BB6304  48 00 00 90 */	b lbl_80BB6394
lbl_80BB6308:
/* 80BB6308  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80BB630C  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 80BB6310  7F C5 F3 78 */	mr r5, r30
/* 80BB6314  38 C0 00 80 */	li r6, 0x80
/* 80BB6318  4B 48 60 64 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80BB631C  7C 7E 1B 78 */	mr r30, r3
/* 80BB6320  38 60 00 1C */	li r3, 0x1c
/* 80BB6324  4B 71 89 28 */	b __nw__FUl
/* 80BB6328  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BB632C  41 82 00 20 */	beq lbl_80BB634C
/* 80BB6330  3C 80 80 BB */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80BB6334  38 04 67 B4 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80BB6338  90 1F 00 00 */	stw r0, 0(r31)
/* 80BB633C  38 80 00 00 */	li r4, 0
/* 80BB6340  4B 77 20 BC */	b init__12J3DFrameCtrlFs
/* 80BB6344  38 00 00 00 */	li r0, 0
/* 80BB6348  90 1F 00 18 */	stw r0, 0x18(r31)
lbl_80BB634C:
/* 80BB634C  93 FD 05 74 */	stw r31, 0x574(r29)
/* 80BB6350  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 80BB6354  28 03 00 00 */	cmplwi r3, 0
/* 80BB6358  41 82 00 30 */	beq lbl_80BB6388
/* 80BB635C  7F C4 F3 78 */	mr r4, r30
/* 80BB6360  38 A0 00 01 */	li r5, 1
/* 80BB6364  38 C0 00 00 */	li r6, 0
/* 80BB6368  3C E0 80 BB */	lis r7, lit_3742@ha
/* 80BB636C  C0 27 67 10 */	lfs f1, lit_3742@l(r7)
/* 80BB6370  38 E0 00 00 */	li r7, 0
/* 80BB6374  39 00 FF FF */	li r8, -1
/* 80BB6378  39 20 00 00 */	li r9, 0
/* 80BB637C  4B 45 74 60 */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80BB6380  2C 03 00 00 */	cmpwi r3, 0
/* 80BB6384  40 82 00 0C */	bne lbl_80BB6390
lbl_80BB6388:
/* 80BB6388  38 60 00 00 */	li r3, 0
/* 80BB638C  48 00 00 08 */	b lbl_80BB6394
lbl_80BB6390:
/* 80BB6390  38 60 00 01 */	li r3, 1
lbl_80BB6394:
/* 80BB6394  39 61 00 20 */	addi r11, r1, 0x20
/* 80BB6398  4B 7A BE 90 */	b _restgpr_29
/* 80BB639C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BB63A0  7C 08 03 A6 */	mtlr r0
/* 80BB63A4  38 21 00 20 */	addi r1, r1, 0x20
/* 80BB63A8  4E 80 00 20 */	blr 
