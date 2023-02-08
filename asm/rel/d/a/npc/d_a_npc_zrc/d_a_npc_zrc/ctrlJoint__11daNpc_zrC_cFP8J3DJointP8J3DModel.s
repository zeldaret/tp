lbl_80B8E914:
/* 80B8E914  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B8E918  7C 08 02 A6 */	mflr r0
/* 80B8E91C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B8E920  39 61 00 30 */	addi r11, r1, 0x30
/* 80B8E924  4B 7D 38 B5 */	bl _savegpr_28
/* 80B8E928  7C 7F 1B 78 */	mr r31, r3
/* 80B8E92C  7C BC 2B 78 */	mr r28, r5
/* 80B8E930  A0 A4 00 14 */	lhz r5, 0x14(r4)
/* 80B8E934  7C BD 2B 78 */	mr r29, r5
/* 80B8E938  3C 60 80 B9 */	lis r3, lit_4538@ha /* 0x80B9329C@ha */
/* 80B8E93C  38 83 32 9C */	addi r4, r3, lit_4538@l /* 0x80B9329C@l */
/* 80B8E940  80 64 00 00 */	lwz r3, 0(r4)
/* 80B8E944  80 04 00 04 */	lwz r0, 4(r4)
/* 80B8E948  90 61 00 08 */	stw r3, 8(r1)
/* 80B8E94C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B8E950  80 04 00 08 */	lwz r0, 8(r4)
/* 80B8E954  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B8E958  2C 05 00 00 */	cmpwi r5, 0
/* 80B8E95C  40 82 00 B0 */	bne lbl_80B8EA0C
/* 80B8E960  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B8E964  80 63 00 04 */	lwz r3, 4(r3)
/* 80B8E968  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B8E96C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B8E970  38 63 00 30 */	addi r3, r3, 0x30
/* 80B8E974  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B8E978  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B8E97C  4B 7B 7B 35 */	bl PSMTXCopy
/* 80B8E980  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B8E984  3B C3 D4 70 */	addi r30, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B8E988  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80B8E98C  D0 1F 08 54 */	stfs f0, 0x854(r31)
/* 80B8E990  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80B8E994  D0 1F 08 58 */	stfs f0, 0x858(r31)
/* 80B8E998  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80B8E99C  D0 1F 08 5C */	stfs f0, 0x85c(r31)
/* 80B8E9A0  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B8E9A4  80 63 00 04 */	lwz r3, 4(r3)
/* 80B8E9A8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B8E9AC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B8E9B0  38 63 00 90 */	addi r3, r3, 0x90
/* 80B8E9B4  7F C4 F3 78 */	mr r4, r30
/* 80B8E9B8  4B 7B 7A F9 */	bl PSMTXCopy
/* 80B8E9BC  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80B8E9C0  D0 1F 08 60 */	stfs f0, 0x860(r31)
/* 80B8E9C4  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80B8E9C8  D0 1F 08 64 */	stfs f0, 0x864(r31)
/* 80B8E9CC  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80B8E9D0  D0 1F 08 68 */	stfs f0, 0x868(r31)
/* 80B8E9D4  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B8E9D8  80 63 00 04 */	lwz r3, 4(r3)
/* 80B8E9DC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B8E9E0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B8E9E4  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80B8E9E8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B8E9EC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B8E9F0  4B 7B 7A C1 */	bl PSMTXCopy
/* 80B8E9F4  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80B8E9F8  D0 1F 08 6C */	stfs f0, 0x86c(r31)
/* 80B8E9FC  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80B8EA00  D0 1F 08 70 */	stfs f0, 0x870(r31)
/* 80B8EA04  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80B8EA08  D0 1F 08 74 */	stfs f0, 0x874(r31)
lbl_80B8EA0C:
/* 80B8EA0C  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 80B8EA10  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80B8EA14  1F DD 00 30 */	mulli r30, r29, 0x30
/* 80B8EA18  7C 60 F2 14 */	add r3, r0, r30
/* 80B8EA1C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B8EA20  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B8EA24  4B 7B 7A 8D */	bl PSMTXCopy
/* 80B8EA28  2C 1D 00 02 */	cmpwi r29, 2
/* 80B8EA2C  41 82 00 38 */	beq lbl_80B8EA64
/* 80B8EA30  40 80 00 10 */	bge lbl_80B8EA40
/* 80B8EA34  2C 1D 00 01 */	cmpwi r29, 1
/* 80B8EA38  40 80 00 10 */	bge lbl_80B8EA48
/* 80B8EA3C  48 00 00 28 */	b lbl_80B8EA64
lbl_80B8EA40:
/* 80B8EA40  2C 1D 00 05 */	cmpwi r29, 5
/* 80B8EA44  40 80 00 20 */	bge lbl_80B8EA64
lbl_80B8EA48:
/* 80B8EA48  7F E3 FB 78 */	mr r3, r31
/* 80B8EA4C  7F A4 EB 78 */	mr r4, r29
/* 80B8EA50  38 A1 00 08 */	addi r5, r1, 8
/* 80B8EA54  3C C0 80 B9 */	lis r6, m__17daNpc_zrC_Param_c@ha /* 0x80B931FC@ha */
/* 80B8EA58  38 C6 31 FC */	addi r6, r6, m__17daNpc_zrC_Param_c@l /* 0x80B931FC@l */
/* 80B8EA5C  C0 26 00 40 */	lfs f1, 0x40(r6)
/* 80B8EA60  4B 5C 49 1D */	bl setLookatMtx__8daNpcF_cFiPif
lbl_80B8EA64:
/* 80B8EA64  2C 1D 00 01 */	cmpwi r29, 1
/* 80B8EA68  40 82 00 30 */	bne lbl_80B8EA98
/* 80B8EA6C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B8EA70  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B8EA74  A8 1F 09 0C */	lha r0, 0x90c(r31)
/* 80B8EA78  7C 00 00 D0 */	neg r0, r0
/* 80B8EA7C  7C 04 07 34 */	extsh r4, r0
/* 80B8EA80  4B 47 D9 B5 */	bl mDoMtx_YrotM__FPA4_fs
/* 80B8EA84  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B8EA88  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B8EA8C  A8 9F 09 08 */	lha r4, 0x908(r31)
/* 80B8EA90  4B 47 DA 3D */	bl mDoMtx_ZrotM__FPA4_fs
/* 80B8EA94  48 00 00 34 */	b lbl_80B8EAC8
lbl_80B8EA98:
/* 80B8EA98  2C 1D 00 04 */	cmpwi r29, 4
/* 80B8EA9C  40 82 00 2C */	bne lbl_80B8EAC8
/* 80B8EAA0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B8EAA4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B8EAA8  A8 1F 09 18 */	lha r0, 0x918(r31)
/* 80B8EAAC  7C 00 00 D0 */	neg r0, r0
/* 80B8EAB0  7C 04 07 34 */	extsh r4, r0
/* 80B8EAB4  4B 47 D9 81 */	bl mDoMtx_YrotM__FPA4_fs
/* 80B8EAB8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B8EABC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B8EAC0  A8 9F 09 14 */	lha r4, 0x914(r31)
/* 80B8EAC4  4B 47 DA 09 */	bl mDoMtx_ZrotM__FPA4_fs
lbl_80B8EAC8:
/* 80B8EAC8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B8EACC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B8EAD0  80 9C 00 84 */	lwz r4, 0x84(r28)
/* 80B8EAD4  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80B8EAD8  7C 80 F2 14 */	add r4, r0, r30
/* 80B8EADC  4B 7B 79 D5 */	bl PSMTXCopy
/* 80B8EAE0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B8EAE4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B8EAE8  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 80B8EAEC  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 80B8EAF0  4B 7B 79 C1 */	bl PSMTXCopy
/* 80B8EAF4  2C 1D 00 04 */	cmpwi r29, 4
/* 80B8EAF8  41 82 00 0C */	beq lbl_80B8EB04
/* 80B8EAFC  2C 1D 00 0D */	cmpwi r29, 0xd
/* 80B8EB00  40 82 00 2C */	bne lbl_80B8EB2C
lbl_80B8EB04:
/* 80B8EB04  80 1F 09 9C */	lwz r0, 0x99c(r31)
/* 80B8EB08  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80B8EB0C  41 82 00 20 */	beq lbl_80B8EB2C
/* 80B8EB10  83 9F 05 80 */	lwz r28, 0x580(r31)
/* 80B8EB14  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B8EB18  80 83 00 08 */	lwz r4, 8(r3)
/* 80B8EB1C  38 7F 05 6C */	addi r3, r31, 0x56c
/* 80B8EB20  4B 47 EE 71 */	bl changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform
/* 80B8EB24  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B8EB28  93 83 00 08 */	stw r28, 8(r3)
lbl_80B8EB2C:
/* 80B8EB2C  38 60 00 01 */	li r3, 1
/* 80B8EB30  39 61 00 30 */	addi r11, r1, 0x30
/* 80B8EB34  4B 7D 36 F1 */	bl _restgpr_28
/* 80B8EB38  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B8EB3C  7C 08 03 A6 */	mtlr r0
/* 80B8EB40  38 21 00 30 */	addi r1, r1, 0x30
/* 80B8EB44  4E 80 00 20 */	blr 
