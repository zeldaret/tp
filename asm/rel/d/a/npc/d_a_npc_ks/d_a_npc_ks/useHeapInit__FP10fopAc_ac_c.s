lbl_80A5C450:
/* 80A5C450  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A5C454  7C 08 02 A6 */	mflr r0
/* 80A5C458  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A5C45C  39 61 00 30 */	addi r11, r1, 0x30
/* 80A5C460  4B 90 5D 78 */	b _savegpr_28
/* 80A5C464  7C 7E 1B 78 */	mr r30, r3
/* 80A5C468  38 60 00 58 */	li r3, 0x58
/* 80A5C46C  4B 87 27 E0 */	b __nw__FUl
/* 80A5C470  7C 7D 1B 79 */	or. r29, r3, r3
/* 80A5C474  41 82 00 8C */	beq lbl_80A5C500
/* 80A5C478  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 80A5C47C  38 80 00 33 */	li r4, 0x33
/* 80A5C480  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80A5C484  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80A5C488  3F 85 00 02 */	addis r28, r5, 2
/* 80A5C48C  3B 9C C2 F8 */	addi r28, r28, -15624
/* 80A5C490  7F 85 E3 78 */	mr r5, r28
/* 80A5C494  38 C0 00 80 */	li r6, 0x80
/* 80A5C498  4B 5D FE 54 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A5C49C  7C 7F 1B 78 */	mr r31, r3
/* 80A5C4A0  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 80A5C4A4  38 80 00 3B */	li r4, 0x3b
/* 80A5C4A8  7F 85 E3 78 */	mr r5, r28
/* 80A5C4AC  38 C0 00 80 */	li r6, 0x80
/* 80A5C4B0  4B 5D FE 3C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A5C4B4  7C 64 1B 78 */	mr r4, r3
/* 80A5C4B8  38 1E 08 60 */	addi r0, r30, 0x860
/* 80A5C4BC  90 01 00 08 */	stw r0, 8(r1)
/* 80A5C4C0  3C 00 00 08 */	lis r0, 8
/* 80A5C4C4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A5C4C8  3C 60 11 02 */	lis r3, 0x1102 /* 0x11020084@ha */
/* 80A5C4CC  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11020084@l */
/* 80A5C4D0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A5C4D4  7F A3 EB 78 */	mr r3, r29
/* 80A5C4D8  38 A0 00 00 */	li r5, 0
/* 80A5C4DC  38 C0 00 00 */	li r6, 0
/* 80A5C4E0  7F E7 FB 78 */	mr r7, r31
/* 80A5C4E4  39 00 00 00 */	li r8, 0
/* 80A5C4E8  3D 20 80 A6 */	lis r9, lit_4146@ha
/* 80A5C4EC  C0 29 DF 24 */	lfs f1, lit_4146@l(r9)
/* 80A5C4F0  39 20 00 00 */	li r9, 0
/* 80A5C4F4  39 40 FF FF */	li r10, -1
/* 80A5C4F8  4B 5B 42 D8 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80A5C4FC  7C 7D 1B 78 */	mr r29, r3
lbl_80A5C500:
/* 80A5C500  93 BE 05 CC */	stw r29, 0x5cc(r30)
/* 80A5C504  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A5C508  28 03 00 00 */	cmplwi r3, 0
/* 80A5C50C  41 82 00 10 */	beq lbl_80A5C51C
/* 80A5C510  80 A3 00 04 */	lwz r5, 4(r3)
/* 80A5C514  28 05 00 00 */	cmplwi r5, 0
/* 80A5C518  40 82 00 0C */	bne lbl_80A5C524
lbl_80A5C51C:
/* 80A5C51C  38 60 00 00 */	li r3, 0
/* 80A5C520  48 00 02 30 */	b lbl_80A5C750
lbl_80A5C524:
/* 80A5C524  93 C5 00 14 */	stw r30, 0x14(r5)
/* 80A5C528  38 E0 00 00 */	li r7, 0
/* 80A5C52C  3C 60 80 A5 */	lis r3, nodeCallBack__FP8J3DJointi@ha
/* 80A5C530  38 83 93 2C */	addi r4, r3, nodeCallBack__FP8J3DJointi@l
/* 80A5C534  48 00 00 18 */	b lbl_80A5C54C
lbl_80A5C538:
/* 80A5C538  80 66 00 28 */	lwz r3, 0x28(r6)
/* 80A5C53C  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 80A5C540  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A5C544  90 83 00 04 */	stw r4, 4(r3)
/* 80A5C548  38 E7 00 01 */	addi r7, r7, 1
lbl_80A5C54C:
/* 80A5C54C  80 C5 00 04 */	lwz r6, 4(r5)
/* 80A5C550  A0 66 00 2C */	lhz r3, 0x2c(r6)
/* 80A5C554  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 80A5C558  7C 00 18 40 */	cmplw r0, r3
/* 80A5C55C  41 80 FF DC */	blt lbl_80A5C538
/* 80A5C560  38 60 00 18 */	li r3, 0x18
/* 80A5C564  4B 87 26 E8 */	b __nw__FUl
/* 80A5C568  7C 7D 1B 79 */	or. r29, r3, r3
/* 80A5C56C  41 82 00 20 */	beq lbl_80A5C58C
/* 80A5C570  3C 80 80 A6 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80A5C574  38 04 FE 24 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80A5C578  90 1D 00 00 */	stw r0, 0(r29)
/* 80A5C57C  38 80 00 00 */	li r4, 0
/* 80A5C580  4B 8C BE 7C */	b init__12J3DFrameCtrlFs
/* 80A5C584  38 00 00 00 */	li r0, 0
/* 80A5C588  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_80A5C58C:
/* 80A5C58C  93 BE 05 D8 */	stw r29, 0x5d8(r30)
/* 80A5C590  80 1E 05 D8 */	lwz r0, 0x5d8(r30)
/* 80A5C594  28 00 00 00 */	cmplwi r0, 0
/* 80A5C598  40 82 00 0C */	bne lbl_80A5C5A4
/* 80A5C59C  38 60 00 00 */	li r3, 0
/* 80A5C5A0  48 00 01 B0 */	b lbl_80A5C750
lbl_80A5C5A4:
/* 80A5C5A4  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 80A5C5A8  38 80 00 40 */	li r4, 0x40
/* 80A5C5AC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80A5C5B0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80A5C5B4  3F E5 00 02 */	addis r31, r5, 2
/* 80A5C5B8  3B FF C2 F8 */	addi r31, r31, -15624
/* 80A5C5BC  7F E5 FB 78 */	mr r5, r31
/* 80A5C5C0  38 C0 00 80 */	li r6, 0x80
/* 80A5C5C4  4B 5D FD 28 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A5C5C8  7C 65 1B 78 */	mr r5, r3
/* 80A5C5CC  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A5C5D0  80 63 00 04 */	lwz r3, 4(r3)
/* 80A5C5D4  80 83 00 04 */	lwz r4, 4(r3)
/* 80A5C5D8  80 7E 05 D8 */	lwz r3, 0x5d8(r30)
/* 80A5C5DC  38 84 00 58 */	addi r4, r4, 0x58
/* 80A5C5E0  38 C0 00 01 */	li r6, 1
/* 80A5C5E4  38 E0 00 00 */	li r7, 0
/* 80A5C5E8  3D 00 80 A6 */	lis r8, lit_4146@ha
/* 80A5C5EC  C0 28 DF 24 */	lfs f1, lit_4146@l(r8)
/* 80A5C5F0  39 00 00 00 */	li r8, 0
/* 80A5C5F4  39 20 FF FF */	li r9, -1
/* 80A5C5F8  4B 5B 0F 54 */	b init__13mDoExt_btpAnmFP16J3DMaterialTableP16J3DAnmTexPatterniifss
/* 80A5C5FC  2C 03 00 00 */	cmpwi r3, 0
/* 80A5C600  40 82 00 0C */	bne lbl_80A5C60C
/* 80A5C604  38 60 00 00 */	li r3, 0
/* 80A5C608  48 00 01 48 */	b lbl_80A5C750
lbl_80A5C60C:
/* 80A5C60C  38 60 00 18 */	li r3, 0x18
/* 80A5C610  4B 87 26 3C */	b __nw__FUl
/* 80A5C614  7C 7D 1B 79 */	or. r29, r3, r3
/* 80A5C618  41 82 00 20 */	beq lbl_80A5C638
/* 80A5C61C  3C 80 80 A6 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80A5C620  38 04 FE 24 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80A5C624  90 1D 00 00 */	stw r0, 0(r29)
/* 80A5C628  38 80 00 00 */	li r4, 0
/* 80A5C62C  4B 8C BD D0 */	b init__12J3DFrameCtrlFs
/* 80A5C630  38 00 00 00 */	li r0, 0
/* 80A5C634  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_80A5C638:
/* 80A5C638  93 BE 05 DC */	stw r29, 0x5dc(r30)
/* 80A5C63C  80 1E 05 DC */	lwz r0, 0x5dc(r30)
/* 80A5C640  28 00 00 00 */	cmplwi r0, 0
/* 80A5C644  40 82 00 0C */	bne lbl_80A5C650
/* 80A5C648  38 60 00 00 */	li r3, 0
/* 80A5C64C  48 00 01 04 */	b lbl_80A5C750
lbl_80A5C650:
/* 80A5C650  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 80A5C654  38 80 00 41 */	li r4, 0x41
/* 80A5C658  7F E5 FB 78 */	mr r5, r31
/* 80A5C65C  38 C0 00 80 */	li r6, 0x80
/* 80A5C660  4B 5D FC 8C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A5C664  7C 65 1B 78 */	mr r5, r3
/* 80A5C668  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80A5C66C  80 63 00 04 */	lwz r3, 4(r3)
/* 80A5C670  80 83 00 04 */	lwz r4, 4(r3)
/* 80A5C674  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 80A5C678  38 84 00 58 */	addi r4, r4, 0x58
/* 80A5C67C  38 C0 00 01 */	li r6, 1
/* 80A5C680  38 E0 00 02 */	li r7, 2
/* 80A5C684  3D 00 80 A6 */	lis r8, lit_4146@ha
/* 80A5C688  C0 28 DF 24 */	lfs f1, lit_4146@l(r8)
/* 80A5C68C  39 00 00 00 */	li r8, 0
/* 80A5C690  39 20 FF FF */	li r9, -1
/* 80A5C694  4B 5B 0E B8 */	b init__13mDoExt_btpAnmFP16J3DMaterialTableP16J3DAnmTexPatterniifss
/* 80A5C698  2C 03 00 00 */	cmpwi r3, 0
/* 80A5C69C  40 82 00 0C */	bne lbl_80A5C6A8
/* 80A5C6A0  38 60 00 00 */	li r3, 0
/* 80A5C6A4  48 00 00 AC */	b lbl_80A5C750
lbl_80A5C6A8:
/* 80A5C6A8  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 80A5C6AC  38 80 00 3D */	li r4, 0x3d
/* 80A5C6B0  7F E5 FB 78 */	mr r5, r31
/* 80A5C6B4  38 C0 00 80 */	li r6, 0x80
/* 80A5C6B8  4B 5D FC 34 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A5C6BC  3C 80 00 08 */	lis r4, 8
/* 80A5C6C0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80A5C6C4  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80A5C6C8  4B 5B 85 8C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80A5C6CC  90 7E 0C 00 */	stw r3, 0xc00(r30)
/* 80A5C6D0  80 1E 0C 00 */	lwz r0, 0xc00(r30)
/* 80A5C6D4  28 00 00 00 */	cmplwi r0, 0
/* 80A5C6D8  40 82 00 0C */	bne lbl_80A5C6E4
/* 80A5C6DC  38 60 00 00 */	li r3, 0
/* 80A5C6E0  48 00 00 70 */	b lbl_80A5C750
lbl_80A5C6E4:
/* 80A5C6E4  88 1E 05 B4 */	lbz r0, 0x5b4(r30)
/* 80A5C6E8  28 00 00 00 */	cmplwi r0, 0
/* 80A5C6EC  41 82 00 24 */	beq lbl_80A5C710
/* 80A5C6F0  28 00 00 0A */	cmplwi r0, 0xa
/* 80A5C6F4  41 82 00 1C */	beq lbl_80A5C710
/* 80A5C6F8  28 00 00 14 */	cmplwi r0, 0x14
/* 80A5C6FC  41 82 00 14 */	beq lbl_80A5C710
/* 80A5C700  28 00 00 15 */	cmplwi r0, 0x15
/* 80A5C704  41 82 00 0C */	beq lbl_80A5C710
/* 80A5C708  28 00 00 16 */	cmplwi r0, 0x16
/* 80A5C70C  40 82 00 40 */	bne lbl_80A5C74C
lbl_80A5C710:
/* 80A5C710  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 80A5C714  38 80 00 3C */	li r4, 0x3c
/* 80A5C718  7F E5 FB 78 */	mr r5, r31
/* 80A5C71C  38 C0 00 80 */	li r6, 0x80
/* 80A5C720  4B 5D FB CC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A5C724  3C 80 00 08 */	lis r4, 8
/* 80A5C728  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80A5C72C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80A5C730  4B 5B 85 24 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80A5C734  90 7E 0B FC */	stw r3, 0xbfc(r30)
/* 80A5C738  80 1E 0B FC */	lwz r0, 0xbfc(r30)
/* 80A5C73C  28 00 00 00 */	cmplwi r0, 0
/* 80A5C740  40 82 00 0C */	bne lbl_80A5C74C
/* 80A5C744  38 60 00 00 */	li r3, 0
/* 80A5C748  48 00 00 08 */	b lbl_80A5C750
lbl_80A5C74C:
/* 80A5C74C  38 60 00 01 */	li r3, 1
lbl_80A5C750:
/* 80A5C750  39 61 00 30 */	addi r11, r1, 0x30
/* 80A5C754  4B 90 5A D0 */	b _restgpr_28
/* 80A5C758  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A5C75C  7C 08 03 A6 */	mtlr r0
/* 80A5C760  38 21 00 30 */	addi r1, r1, 0x30
/* 80A5C764  4E 80 00 20 */	blr 
