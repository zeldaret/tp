lbl_80CF37FC:
/* 80CF37FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CF3800  7C 08 02 A6 */	mflr r0
/* 80CF3804  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CF3808  39 61 00 20 */	addi r11, r1, 0x20
/* 80CF380C  4B 66 E9 CC */	b _savegpr_28
/* 80CF3810  7C 7F 1B 78 */	mr r31, r3
/* 80CF3814  3C 60 80 CF */	lis r3, l_arcName@ha
/* 80CF3818  38 63 44 38 */	addi r3, r3, l_arcName@l
/* 80CF381C  80 63 00 00 */	lwz r3, 0(r3)
/* 80CF3820  38 80 00 04 */	li r4, 4
/* 80CF3824  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80CF3828  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80CF382C  3F C5 00 02 */	addis r30, r5, 2
/* 80CF3830  3B DE C2 F8 */	addi r30, r30, -15624
/* 80CF3834  7F C5 F3 78 */	mr r5, r30
/* 80CF3838  38 C0 00 80 */	li r6, 0x80
/* 80CF383C  4B 34 8A B0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CF3840  7C 7D 1B 78 */	mr r29, r3
/* 80CF3844  3C 80 00 08 */	lis r4, 8
/* 80CF3848  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 80CF384C  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80CF3850  4B 32 14 04 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CF3854  90 7F 05 84 */	stw r3, 0x584(r31)
/* 80CF3858  80 1F 05 84 */	lwz r0, 0x584(r31)
/* 80CF385C  28 00 00 00 */	cmplwi r0, 0
/* 80CF3860  40 82 00 0C */	bne lbl_80CF386C
/* 80CF3864  38 60 00 00 */	li r3, 0
/* 80CF3868  48 00 00 A8 */	b lbl_80CF3910
lbl_80CF386C:
/* 80CF386C  3C 60 80 CF */	lis r3, l_arcName@ha
/* 80CF3870  38 63 44 38 */	addi r3, r3, l_arcName@l
/* 80CF3874  80 63 00 00 */	lwz r3, 0(r3)
/* 80CF3878  38 80 00 07 */	li r4, 7
/* 80CF387C  7F C5 F3 78 */	mr r5, r30
/* 80CF3880  38 C0 00 80 */	li r6, 0x80
/* 80CF3884  4B 34 8A 68 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CF3888  7C 7C 1B 78 */	mr r28, r3
/* 80CF388C  38 60 00 18 */	li r3, 0x18
/* 80CF3890  4B 5D B3 BC */	b __nw__FUl
/* 80CF3894  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CF3898  41 82 00 20 */	beq lbl_80CF38B8
/* 80CF389C  3C 80 80 CF */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80CF38A0  38 04 44 F8 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80CF38A4  90 1E 00 00 */	stw r0, 0(r30)
/* 80CF38A8  38 80 00 00 */	li r4, 0
/* 80CF38AC  4B 63 4B 50 */	b init__12J3DFrameCtrlFs
/* 80CF38B0  38 00 00 00 */	li r0, 0
/* 80CF38B4  90 1E 00 14 */	stw r0, 0x14(r30)
lbl_80CF38B8:
/* 80CF38B8  93 DF 05 88 */	stw r30, 0x588(r31)
/* 80CF38BC  80 7F 05 88 */	lwz r3, 0x588(r31)
/* 80CF38C0  28 03 00 00 */	cmplwi r3, 0
/* 80CF38C4  41 82 00 30 */	beq lbl_80CF38F4
/* 80CF38C8  38 9D 00 58 */	addi r4, r29, 0x58
/* 80CF38CC  7F 85 E3 78 */	mr r5, r28
/* 80CF38D0  38 C0 00 01 */	li r6, 1
/* 80CF38D4  38 E0 00 00 */	li r7, 0
/* 80CF38D8  3D 00 80 CF */	lis r8, lit_3918@ha
/* 80CF38DC  C0 28 44 04 */	lfs f1, lit_3918@l(r8)
/* 80CF38E0  39 00 00 00 */	li r8, 0
/* 80CF38E4  39 20 FF FF */	li r9, -1
/* 80CF38E8  4B 31 9D 54 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80CF38EC  2C 03 00 00 */	cmpwi r3, 0
/* 80CF38F0  40 82 00 0C */	bne lbl_80CF38FC
lbl_80CF38F4:
/* 80CF38F4  38 60 00 00 */	li r3, 0
/* 80CF38F8  48 00 00 18 */	b lbl_80CF3910
lbl_80CF38FC:
/* 80CF38FC  3C 60 80 CF */	lis r3, lit_3733@ha
/* 80CF3900  C0 03 43 F4 */	lfs f0, lit_3733@l(r3)
/* 80CF3904  80 7F 05 88 */	lwz r3, 0x588(r31)
/* 80CF3908  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80CF390C  38 60 00 01 */	li r3, 1
lbl_80CF3910:
/* 80CF3910  39 61 00 20 */	addi r11, r1, 0x20
/* 80CF3914  4B 66 E9 10 */	b _restgpr_28
/* 80CF3918  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CF391C  7C 08 03 A6 */	mtlr r0
/* 80CF3920  38 21 00 20 */	addi r1, r1, 0x20
/* 80CF3924  4E 80 00 20 */	blr 
