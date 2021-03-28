lbl_8067B6F0:
/* 8067B6F0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8067B6F4  7C 08 02 A6 */	mflr r0
/* 8067B6F8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8067B6FC  39 61 00 30 */	addi r11, r1, 0x30
/* 8067B700  4B CE 6A D8 */	b _savegpr_28
/* 8067B704  7C 7E 1B 78 */	mr r30, r3
/* 8067B708  3C 60 80 68 */	lis r3, stringBase0@ha
/* 8067B70C  38 63 C5 38 */	addi r3, r3, stringBase0@l
/* 8067B710  38 80 00 0D */	li r4, 0xd
/* 8067B714  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8067B718  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8067B71C  3F E5 00 02 */	addis r31, r5, 2
/* 8067B720  3B FF C2 F8 */	addi r31, r31, -15624
/* 8067B724  7F E5 FB 78 */	mr r5, r31
/* 8067B728  38 C0 00 80 */	li r6, 0x80
/* 8067B72C  4B 9C 0B C0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8067B730  7C 7C 1B 78 */	mr r28, r3
/* 8067B734  38 60 00 58 */	li r3, 0x58
/* 8067B738  4B C5 35 14 */	b __nw__FUl
/* 8067B73C  7C 7D 1B 79 */	or. r29, r3, r3
/* 8067B740  41 82 00 68 */	beq lbl_8067B7A8
/* 8067B744  3C 60 80 68 */	lis r3, stringBase0@ha
/* 8067B748  38 63 C5 38 */	addi r3, r3, stringBase0@l
/* 8067B74C  38 80 00 09 */	li r4, 9
/* 8067B750  7F E5 FB 78 */	mr r5, r31
/* 8067B754  38 C0 00 80 */	li r6, 0x80
/* 8067B758  4B 9C 0B 94 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8067B75C  7C 67 1B 78 */	mr r7, r3
/* 8067B760  38 1E 05 D4 */	addi r0, r30, 0x5d4
/* 8067B764  90 01 00 08 */	stw r0, 8(r1)
/* 8067B768  38 00 00 00 */	li r0, 0
/* 8067B76C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8067B770  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 8067B774  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 8067B778  90 01 00 10 */	stw r0, 0x10(r1)
/* 8067B77C  7F A3 EB 78 */	mr r3, r29
/* 8067B780  7F 84 E3 78 */	mr r4, r28
/* 8067B784  38 A0 00 00 */	li r5, 0
/* 8067B788  38 C0 00 00 */	li r6, 0
/* 8067B78C  39 00 00 02 */	li r8, 2
/* 8067B790  3D 20 80 68 */	lis r9, lit_3791@ha
/* 8067B794  C0 29 C4 04 */	lfs f1, lit_3791@l(r9)
/* 8067B798  39 20 00 00 */	li r9, 0
/* 8067B79C  39 40 FF FF */	li r10, -1
/* 8067B7A0  4B 99 50 30 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 8067B7A4  7C 7D 1B 78 */	mr r29, r3
lbl_8067B7A8:
/* 8067B7A8  93 BE 05 D0 */	stw r29, 0x5d0(r30)
/* 8067B7AC  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 8067B7B0  28 03 00 00 */	cmplwi r3, 0
/* 8067B7B4  41 82 00 10 */	beq lbl_8067B7C4
/* 8067B7B8  80 03 00 04 */	lwz r0, 4(r3)
/* 8067B7BC  28 00 00 00 */	cmplwi r0, 0
/* 8067B7C0  40 82 00 0C */	bne lbl_8067B7CC
lbl_8067B7C4:
/* 8067B7C4  38 60 00 00 */	li r3, 0
/* 8067B7C8  48 00 00 9C */	b lbl_8067B864
lbl_8067B7CC:
/* 8067B7CC  38 60 00 18 */	li r3, 0x18
/* 8067B7D0  4B C5 34 7C */	b __nw__FUl
/* 8067B7D4  7C 7D 1B 79 */	or. r29, r3, r3
/* 8067B7D8  41 82 00 20 */	beq lbl_8067B7F8
/* 8067B7DC  3C 80 80 68 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 8067B7E0  38 04 C6 78 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 8067B7E4  90 1D 00 00 */	stw r0, 0(r29)
/* 8067B7E8  38 80 00 00 */	li r4, 0
/* 8067B7EC  4B CA CC 10 */	b init__12J3DFrameCtrlFs
/* 8067B7F0  38 00 00 00 */	li r0, 0
/* 8067B7F4  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_8067B7F8:
/* 8067B7F8  93 BE 05 C8 */	stw r29, 0x5c8(r30)
/* 8067B7FC  80 1E 05 C8 */	lwz r0, 0x5c8(r30)
/* 8067B800  28 00 00 00 */	cmplwi r0, 0
/* 8067B804  40 82 00 0C */	bne lbl_8067B810
/* 8067B808  38 60 00 00 */	li r3, 0
/* 8067B80C  48 00 00 58 */	b lbl_8067B864
lbl_8067B810:
/* 8067B810  3C 60 80 68 */	lis r3, stringBase0@ha
/* 8067B814  38 63 C5 38 */	addi r3, r3, stringBase0@l
/* 8067B818  38 80 00 12 */	li r4, 0x12
/* 8067B81C  7F E5 FB 78 */	mr r5, r31
/* 8067B820  38 C0 00 80 */	li r6, 0x80
/* 8067B824  4B 9C 0A C8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8067B828  7C 65 1B 78 */	mr r5, r3
/* 8067B82C  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 8067B830  80 63 00 04 */	lwz r3, 4(r3)
/* 8067B834  80 83 00 04 */	lwz r4, 4(r3)
/* 8067B838  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 8067B83C  38 84 00 58 */	addi r4, r4, 0x58
/* 8067B840  38 C0 00 01 */	li r6, 1
/* 8067B844  38 E0 00 00 */	li r7, 0
/* 8067B848  3D 00 80 68 */	lis r8, lit_3790@ha
/* 8067B84C  C0 28 C4 00 */	lfs f1, lit_3790@l(r8)
/* 8067B850  39 00 00 00 */	li r8, 0
/* 8067B854  39 20 FF FF */	li r9, -1
/* 8067B858  4B 99 1E B4 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 8067B85C  30 03 FF FF */	addic r0, r3, -1
/* 8067B860  7C 60 19 10 */	subfe r3, r0, r3
lbl_8067B864:
/* 8067B864  39 61 00 30 */	addi r11, r1, 0x30
/* 8067B868  4B CE 69 BC */	b _restgpr_28
/* 8067B86C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8067B870  7C 08 03 A6 */	mtlr r0
/* 8067B874  38 21 00 30 */	addi r1, r1, 0x30
/* 8067B878  4E 80 00 20 */	blr 
