lbl_80BEA034:
/* 80BEA034  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BEA038  7C 08 02 A6 */	mflr r0
/* 80BEA03C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BEA040  39 61 00 20 */	addi r11, r1, 0x20
/* 80BEA044  4B 77 81 90 */	b _savegpr_27
/* 80BEA048  7C 7F 1B 78 */	mr r31, r3
/* 80BEA04C  3C 60 80 BF */	lis r3, l_arcName@ha
/* 80BEA050  38 63 B5 48 */	addi r3, r3, l_arcName@l
/* 80BEA054  80 63 00 00 */	lwz r3, 0(r3)
/* 80BEA058  38 80 00 08 */	li r4, 8
/* 80BEA05C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80BEA060  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80BEA064  3F 85 00 02 */	addis r28, r5, 2
/* 80BEA068  3B 9C C2 F8 */	addi r28, r28, -15624
/* 80BEA06C  7F 85 E3 78 */	mr r5, r28
/* 80BEA070  38 C0 00 80 */	li r6, 0x80
/* 80BEA074  4B 45 22 78 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BEA078  7C 7D 1B 78 */	mr r29, r3
/* 80BEA07C  3C 80 00 08 */	lis r4, 8
/* 80BEA080  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 80BEA084  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80BEA088  4B 42 AB CC */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BEA08C  90 7F 05 70 */	stw r3, 0x570(r31)
/* 80BEA090  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 80BEA094  28 00 00 00 */	cmplwi r0, 0
/* 80BEA098  40 82 00 0C */	bne lbl_80BEA0A4
/* 80BEA09C  38 60 00 00 */	li r3, 0
/* 80BEA0A0  48 00 01 28 */	b lbl_80BEA1C8
lbl_80BEA0A4:
/* 80BEA0A4  3C 60 80 BF */	lis r3, l_arcName@ha
/* 80BEA0A8  38 63 B5 48 */	addi r3, r3, l_arcName@l
/* 80BEA0AC  80 63 00 00 */	lwz r3, 0(r3)
/* 80BEA0B0  38 80 00 0B */	li r4, 0xb
/* 80BEA0B4  7F 85 E3 78 */	mr r5, r28
/* 80BEA0B8  38 C0 00 80 */	li r6, 0x80
/* 80BEA0BC  4B 45 22 30 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BEA0C0  7C 7B 1B 78 */	mr r27, r3
/* 80BEA0C4  38 60 00 18 */	li r3, 0x18
/* 80BEA0C8  4B 6E 4B 84 */	b __nw__FUl
/* 80BEA0CC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BEA0D0  41 82 00 20 */	beq lbl_80BEA0F0
/* 80BEA0D4  3C 80 80 BF */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80BEA0D8  38 04 B6 D0 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80BEA0DC  90 1E 00 00 */	stw r0, 0(r30)
/* 80BEA0E0  38 80 00 00 */	li r4, 0
/* 80BEA0E4  4B 73 E3 18 */	b init__12J3DFrameCtrlFs
/* 80BEA0E8  38 00 00 00 */	li r0, 0
/* 80BEA0EC  90 1E 00 14 */	stw r0, 0x14(r30)
lbl_80BEA0F0:
/* 80BEA0F0  93 DF 05 78 */	stw r30, 0x578(r31)
/* 80BEA0F4  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80BEA0F8  28 03 00 00 */	cmplwi r3, 0
/* 80BEA0FC  41 82 00 30 */	beq lbl_80BEA12C
/* 80BEA100  38 9D 00 58 */	addi r4, r29, 0x58
/* 80BEA104  7F 65 DB 78 */	mr r5, r27
/* 80BEA108  38 C0 00 01 */	li r6, 1
/* 80BEA10C  38 E0 00 02 */	li r7, 2
/* 80BEA110  3D 00 80 BF */	lis r8, lit_3656@ha
/* 80BEA114  C0 28 B4 C4 */	lfs f1, lit_3656@l(r8)
/* 80BEA118  39 00 00 00 */	li r8, 0
/* 80BEA11C  39 20 FF FF */	li r9, -1
/* 80BEA120  4B 42 35 1C */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80BEA124  2C 03 00 00 */	cmpwi r3, 0
/* 80BEA128  40 82 00 0C */	bne lbl_80BEA134
lbl_80BEA12C:
/* 80BEA12C  38 60 00 00 */	li r3, 0
/* 80BEA130  48 00 00 98 */	b lbl_80BEA1C8
lbl_80BEA134:
/* 80BEA134  3C 60 80 BF */	lis r3, l_arcName@ha
/* 80BEA138  38 63 B5 48 */	addi r3, r3, l_arcName@l
/* 80BEA13C  80 63 00 00 */	lwz r3, 0(r3)
/* 80BEA140  38 80 00 05 */	li r4, 5
/* 80BEA144  7F 85 E3 78 */	mr r5, r28
/* 80BEA148  38 C0 00 80 */	li r6, 0x80
/* 80BEA14C  4B 45 21 A0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BEA150  7C 7B 1B 78 */	mr r27, r3
/* 80BEA154  38 60 00 1C */	li r3, 0x1c
/* 80BEA158  4B 6E 4A F4 */	b __nw__FUl
/* 80BEA15C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BEA160  41 82 00 20 */	beq lbl_80BEA180
/* 80BEA164  3C 80 80 BF */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80BEA168  38 04 B6 D0 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80BEA16C  90 1E 00 00 */	stw r0, 0(r30)
/* 80BEA170  38 80 00 00 */	li r4, 0
/* 80BEA174  4B 73 E2 88 */	b init__12J3DFrameCtrlFs
/* 80BEA178  38 00 00 00 */	li r0, 0
/* 80BEA17C  90 1E 00 18 */	stw r0, 0x18(r30)
lbl_80BEA180:
/* 80BEA180  93 DF 05 74 */	stw r30, 0x574(r31)
/* 80BEA184  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80BEA188  28 03 00 00 */	cmplwi r3, 0
/* 80BEA18C  41 82 00 30 */	beq lbl_80BEA1BC
/* 80BEA190  7F 64 DB 78 */	mr r4, r27
/* 80BEA194  38 A0 00 01 */	li r5, 1
/* 80BEA198  38 C0 00 00 */	li r6, 0
/* 80BEA19C  3C E0 80 BF */	lis r7, lit_3656@ha
/* 80BEA1A0  C0 27 B4 C4 */	lfs f1, lit_3656@l(r7)
/* 80BEA1A4  38 E0 00 00 */	li r7, 0
/* 80BEA1A8  39 00 FF FF */	li r8, -1
/* 80BEA1AC  39 20 00 00 */	li r9, 0
/* 80BEA1B0  4B 42 36 2C */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80BEA1B4  2C 03 00 00 */	cmpwi r3, 0
/* 80BEA1B8  40 82 00 0C */	bne lbl_80BEA1C4
lbl_80BEA1BC:
/* 80BEA1BC  38 60 00 00 */	li r3, 0
/* 80BEA1C0  48 00 00 08 */	b lbl_80BEA1C8
lbl_80BEA1C4:
/* 80BEA1C4  38 60 00 01 */	li r3, 1
lbl_80BEA1C8:
/* 80BEA1C8  39 61 00 20 */	addi r11, r1, 0x20
/* 80BEA1CC  4B 77 80 54 */	b _restgpr_27
/* 80BEA1D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BEA1D4  7C 08 03 A6 */	mtlr r0
/* 80BEA1D8  38 21 00 20 */	addi r1, r1, 0x20
/* 80BEA1DC  4E 80 00 20 */	blr 
