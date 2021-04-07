lbl_80CC7608:
/* 80CC7608  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CC760C  7C 08 02 A6 */	mflr r0
/* 80CC7610  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CC7614  39 61 00 30 */	addi r11, r1, 0x30
/* 80CC7618  4B 69 AB B1 */	bl _savegpr_24
/* 80CC761C  7C 7F 1B 78 */	mr r31, r3
/* 80CC7620  3C 60 80 CD */	lis r3, cNullVec__6Z2Calc@ha /* 0x80CC9304@ha */
/* 80CC7624  3B 83 93 04 */	addi r28, r3, cNullVec__6Z2Calc@l /* 0x80CC9304@l */
/* 80CC7628  83 5F 06 0C */	lwz r26, 0x60c(r31)
/* 80CC762C  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 80CC7630  3B 03 00 84 */	addi r24, r3, 0x0084 /* 0x11000084@l */
/* 80CC7634  2C 1A 00 03 */	cmpwi r26, 3
/* 80CC7638  41 82 00 0C */	beq lbl_80CC7644
/* 80CC763C  2C 1A 00 0A */	cmpwi r26, 0xa
/* 80CC7640  40 82 00 1C */	bne lbl_80CC765C
lbl_80CC7644:
/* 80CC7644  83 DC 00 20 */	lwz r30, 0x20(r28)
/* 80CC7648  38 80 00 08 */	li r4, 8
/* 80CC764C  3B A0 00 0B */	li r29, 0xb
/* 80CC7650  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 80CC7654  3B 03 00 84 */	addi r24, r3, 0x0084 /* 0x11000084@l */
/* 80CC7658  48 00 00 1C */	b lbl_80CC7674
lbl_80CC765C:
/* 80CC765C  2C 1A 00 01 */	cmpwi r26, 1
/* 80CC7660  40 82 00 14 */	bne lbl_80CC7674
/* 80CC7664  83 DC 00 24 */	lwz r30, 0x24(r28)
/* 80CC7668  38 80 00 05 */	li r4, 5
/* 80CC766C  3B A0 00 0C */	li r29, 0xc
/* 80CC7670  3B 03 02 84 */	addi r24, r3, 0x284
lbl_80CC7674:
/* 80CC7674  7F C3 F3 78 */	mr r3, r30
/* 80CC7678  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC767C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC7680  3F 65 00 02 */	addis r27, r5, 2
/* 80CC7684  3B 7B C2 F8 */	addi r27, r27, -15624
/* 80CC7688  7F 65 DB 78 */	mr r5, r27
/* 80CC768C  38 C0 00 80 */	li r6, 0x80
/* 80CC7690  4B 37 4C 5D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CC7694  7C 79 1B 78 */	mr r25, r3
/* 80CC7698  3C 80 00 08 */	lis r4, 8
/* 80CC769C  7F 05 C3 78 */	mr r5, r24
/* 80CC76A0  4B 34 D5 B5 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CC76A4  90 7F 05 E4 */	stw r3, 0x5e4(r31)
/* 80CC76A8  80 1F 05 E4 */	lwz r0, 0x5e4(r31)
/* 80CC76AC  28 00 00 00 */	cmplwi r0, 0
/* 80CC76B0  40 82 00 0C */	bne lbl_80CC76BC
/* 80CC76B4  38 60 00 00 */	li r3, 0
/* 80CC76B8  48 00 02 A0 */	b lbl_80CC7958
lbl_80CC76BC:
/* 80CC76BC  2C 1A 00 03 */	cmpwi r26, 3
/* 80CC76C0  41 82 00 0C */	beq lbl_80CC76CC
/* 80CC76C4  2C 1A 00 0A */	cmpwi r26, 0xa
/* 80CC76C8  40 82 00 50 */	bne lbl_80CC7718
lbl_80CC76CC:
/* 80CC76CC  80 7C 00 20 */	lwz r3, 0x20(r28)
/* 80CC76D0  38 80 00 05 */	li r4, 5
/* 80CC76D4  7F 65 DB 78 */	mr r5, r27
/* 80CC76D8  38 C0 00 80 */	li r6, 0x80
/* 80CC76DC  4B 37 4C 11 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CC76E0  7C 64 1B 78 */	mr r4, r3
/* 80CC76E4  38 7F 05 84 */	addi r3, r31, 0x584
/* 80CC76E8  38 A0 00 01 */	li r5, 1
/* 80CC76EC  38 C0 00 00 */	li r6, 0
/* 80CC76F0  3C E0 80 CD */	lis r7, lit_3994@ha /* 0x80CC91AC@ha */
/* 80CC76F4  C0 27 91 AC */	lfs f1, lit_3994@l(r7)  /* 0x80CC91AC@l */
/* 80CC76F8  38 E0 00 00 */	li r7, 0
/* 80CC76FC  39 00 FF FF */	li r8, -1
/* 80CC7700  39 20 00 00 */	li r9, 0
/* 80CC7704  4B 34 60 D9 */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80CC7708  2C 03 00 00 */	cmpwi r3, 0
/* 80CC770C  40 82 01 AC */	bne lbl_80CC78B8
/* 80CC7710  38 60 00 00 */	li r3, 0
/* 80CC7714  48 00 02 44 */	b lbl_80CC7958
lbl_80CC7718:
/* 80CC7718  2C 1A 00 01 */	cmpwi r26, 1
/* 80CC771C  40 82 01 9C */	bne lbl_80CC78B8
/* 80CC7720  80 7C 00 24 */	lwz r3, 0x24(r28)
/* 80CC7724  38 80 00 06 */	li r4, 6
/* 80CC7728  7F 65 DB 78 */	mr r5, r27
/* 80CC772C  38 C0 00 80 */	li r6, 0x80
/* 80CC7730  4B 37 4B BD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CC7734  3C 80 00 08 */	lis r4, 8
/* 80CC7738  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80CC773C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80CC7740  4B 34 D5 15 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CC7744  90 7F 05 E8 */	stw r3, 0x5e8(r31)
/* 80CC7748  80 1F 05 E8 */	lwz r0, 0x5e8(r31)
/* 80CC774C  28 00 00 00 */	cmplwi r0, 0
/* 80CC7750  40 82 00 0C */	bne lbl_80CC775C
/* 80CC7754  38 60 00 00 */	li r3, 0
/* 80CC7758  48 00 02 00 */	b lbl_80CC7958
lbl_80CC775C:
/* 80CC775C  88 1F 06 1A */	lbz r0, 0x61a(r31)
/* 80CC7760  28 00 00 00 */	cmplwi r0, 0
/* 80CC7764  41 82 01 54 */	beq lbl_80CC78B8
/* 80CC7768  80 7C 00 24 */	lwz r3, 0x24(r28)
/* 80CC776C  38 80 00 09 */	li r4, 9
/* 80CC7770  7F 65 DB 78 */	mr r5, r27
/* 80CC7774  38 C0 00 80 */	li r6, 0x80
/* 80CC7778  4B 37 4B 75 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CC777C  7C 78 1B 78 */	mr r24, r3
/* 80CC7780  38 60 00 18 */	li r3, 0x18
/* 80CC7784  4B 60 74 C9 */	bl __nw__FUl
/* 80CC7788  7C 7A 1B 79 */	or. r26, r3, r3
/* 80CC778C  41 82 00 20 */	beq lbl_80CC77AC
/* 80CC7790  3C 80 80 CD */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80CC95F4@ha */
/* 80CC7794  38 04 95 F4 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80CC95F4@l */
/* 80CC7798  90 1A 00 00 */	stw r0, 0(r26)
/* 80CC779C  38 80 00 00 */	li r4, 0
/* 80CC77A0  4B 66 0C 5D */	bl init__12J3DFrameCtrlFs
/* 80CC77A4  38 00 00 00 */	li r0, 0
/* 80CC77A8  90 1A 00 14 */	stw r0, 0x14(r26)
lbl_80CC77AC:
/* 80CC77AC  93 5F 05 F0 */	stw r26, 0x5f0(r31)
/* 80CC77B0  80 7F 05 F0 */	lwz r3, 0x5f0(r31)
/* 80CC77B4  28 03 00 00 */	cmplwi r3, 0
/* 80CC77B8  41 82 00 30 */	beq lbl_80CC77E8
/* 80CC77BC  38 99 00 58 */	addi r4, r25, 0x58
/* 80CC77C0  7F 05 C3 78 */	mr r5, r24
/* 80CC77C4  38 C0 00 01 */	li r6, 1
/* 80CC77C8  38 E0 00 00 */	li r7, 0
/* 80CC77CC  3D 00 80 CD */	lis r8, lit_3994@ha /* 0x80CC91AC@ha */
/* 80CC77D0  C0 28 91 AC */	lfs f1, lit_3994@l(r8)  /* 0x80CC91AC@l */
/* 80CC77D4  39 00 00 00 */	li r8, 0
/* 80CC77D8  39 20 FF FF */	li r9, -1
/* 80CC77DC  4B 34 5E 61 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80CC77E0  2C 03 00 00 */	cmpwi r3, 0
/* 80CC77E4  40 82 00 0C */	bne lbl_80CC77F0
lbl_80CC77E8:
/* 80CC77E8  38 60 00 00 */	li r3, 0
/* 80CC77EC  48 00 01 6C */	b lbl_80CC7958
lbl_80CC77F0:
/* 80CC77F0  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 80CC77F4  38 80 00 05 */	li r4, 5
/* 80CC77F8  7F 65 DB 78 */	mr r5, r27
/* 80CC77FC  38 C0 00 80 */	li r6, 0x80
/* 80CC7800  4B 37 4A ED */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CC7804  7C 7A 1B 78 */	mr r26, r3
/* 80CC7808  3C 80 00 08 */	lis r4, 8
/* 80CC780C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 80CC7810  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80CC7814  4B 34 D4 41 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CC7818  90 7F 05 EC */	stw r3, 0x5ec(r31)
/* 80CC781C  80 1F 05 EC */	lwz r0, 0x5ec(r31)
/* 80CC7820  28 00 00 00 */	cmplwi r0, 0
/* 80CC7824  40 82 00 0C */	bne lbl_80CC7830
/* 80CC7828  38 60 00 00 */	li r3, 0
/* 80CC782C  48 00 01 2C */	b lbl_80CC7958
lbl_80CC7830:
/* 80CC7830  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 80CC7834  38 80 00 0C */	li r4, 0xc
/* 80CC7838  7F 65 DB 78 */	mr r5, r27
/* 80CC783C  38 C0 00 80 */	li r6, 0x80
/* 80CC7840  4B 37 4A AD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CC7844  7C 79 1B 78 */	mr r25, r3
/* 80CC7848  38 60 00 18 */	li r3, 0x18
/* 80CC784C  4B 60 74 01 */	bl __nw__FUl
/* 80CC7850  7C 7C 1B 79 */	or. r28, r3, r3
/* 80CC7854  41 82 00 20 */	beq lbl_80CC7874
/* 80CC7858  3C 80 80 CD */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80CC95F4@ha */
/* 80CC785C  38 04 95 F4 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80CC95F4@l */
/* 80CC7860  90 1C 00 00 */	stw r0, 0(r28)
/* 80CC7864  38 80 00 00 */	li r4, 0
/* 80CC7868  4B 66 0B 95 */	bl init__12J3DFrameCtrlFs
/* 80CC786C  38 00 00 00 */	li r0, 0
/* 80CC7870  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_80CC7874:
/* 80CC7874  93 9F 05 F4 */	stw r28, 0x5f4(r31)
/* 80CC7878  80 7F 05 F4 */	lwz r3, 0x5f4(r31)
/* 80CC787C  28 03 00 00 */	cmplwi r3, 0
/* 80CC7880  41 82 00 30 */	beq lbl_80CC78B0
/* 80CC7884  38 9A 00 58 */	addi r4, r26, 0x58
/* 80CC7888  7F 25 CB 78 */	mr r5, r25
/* 80CC788C  38 C0 00 01 */	li r6, 1
/* 80CC7890  38 E0 00 02 */	li r7, 2
/* 80CC7894  3D 00 80 CD */	lis r8, lit_3994@ha /* 0x80CC91AC@ha */
/* 80CC7898  C0 28 91 AC */	lfs f1, lit_3994@l(r8)  /* 0x80CC91AC@l */
/* 80CC789C  39 00 00 00 */	li r8, 0
/* 80CC78A0  39 20 FF FF */	li r9, -1
/* 80CC78A4  4B 34 5D 99 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80CC78A8  2C 03 00 00 */	cmpwi r3, 0
/* 80CC78AC  40 82 00 0C */	bne lbl_80CC78B8
lbl_80CC78B0:
/* 80CC78B0  38 60 00 00 */	li r3, 0
/* 80CC78B4  48 00 00 A4 */	b lbl_80CC7958
lbl_80CC78B8:
/* 80CC78B8  38 60 00 C0 */	li r3, 0xc0
/* 80CC78BC  4B 60 73 91 */	bl __nw__FUl
/* 80CC78C0  7C 60 1B 79 */	or. r0, r3, r3
/* 80CC78C4  41 82 00 0C */	beq lbl_80CC78D0
/* 80CC78C8  4B 3B 40 A9 */	bl __ct__4dBgWFv
/* 80CC78CC  7C 60 1B 78 */	mr r0, r3
lbl_80CC78D0:
/* 80CC78D0  90 1F 05 E0 */	stw r0, 0x5e0(r31)
/* 80CC78D4  80 1F 05 E0 */	lwz r0, 0x5e0(r31)
/* 80CC78D8  28 00 00 00 */	cmplwi r0, 0
/* 80CC78DC  40 82 00 0C */	bne lbl_80CC78E8
/* 80CC78E0  38 60 00 00 */	li r3, 0
/* 80CC78E4  48 00 00 74 */	b lbl_80CC7958
lbl_80CC78E8:
/* 80CC78E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CC78EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CC78F0  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80CC78F4  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80CC78F8  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80CC78FC  4B 67 EF ED */	bl PSMTXTrans
/* 80CC7900  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CC7904  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CC7908  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80CC790C  4B 34 4B 29 */	bl mDoMtx_YrotM__FPA4_fs
/* 80CC7910  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CC7914  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CC7918  38 9F 05 B0 */	addi r4, r31, 0x5b0
/* 80CC791C  4B 67 EB 95 */	bl PSMTXCopy
/* 80CC7920  7F C3 F3 78 */	mr r3, r30
/* 80CC7924  7F A4 EB 78 */	mr r4, r29
/* 80CC7928  7F 65 DB 78 */	mr r5, r27
/* 80CC792C  38 C0 00 80 */	li r6, 0x80
/* 80CC7930  4B 37 49 BD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CC7934  7C 64 1B 78 */	mr r4, r3
/* 80CC7938  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 80CC793C  38 A0 00 01 */	li r5, 1
/* 80CC7940  38 DF 05 B0 */	addi r6, r31, 0x5b0
/* 80CC7944  4B 3B 25 F5 */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80CC7948  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80CC794C  20 60 00 01 */	subfic r3, r0, 1
/* 80CC7950  30 03 FF FF */	addic r0, r3, -1
/* 80CC7954  7C 60 19 10 */	subfe r3, r0, r3
lbl_80CC7958:
/* 80CC7958  39 61 00 30 */	addi r11, r1, 0x30
/* 80CC795C  4B 69 A8 B9 */	bl _restgpr_24
/* 80CC7960  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CC7964  7C 08 03 A6 */	mtlr r0
/* 80CC7968  38 21 00 30 */	addi r1, r1, 0x30
/* 80CC796C  4E 80 00 20 */	blr 
