lbl_807B9554:
/* 807B9554  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 807B9558  7C 08 02 A6 */	mflr r0
/* 807B955C  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 807B9560  39 61 00 E0 */	addi r11, r1, 0xe0
/* 807B9564  4B BA 8C 70 */	b _savegpr_27
/* 807B9568  7C 7C 1B 78 */	mr r28, r3
/* 807B956C  3C 60 80 7C */	lis r3, lit_3762@ha
/* 807B9570  3B C3 A2 6C */	addi r30, r3, lit_3762@l
/* 807B9574  A8 1C 06 9C */	lha r0, 0x69c(r28)
/* 807B9578  2C 00 00 00 */	cmpwi r0, 0
/* 807B957C  40 82 00 60 */	bne lbl_807B95DC
/* 807B9580  38 61 00 6C */	addi r3, r1, 0x6c
/* 807B9584  4B 8B E2 2C */	b __ct__18dBgS_ObjGndChk_SplFv
/* 807B9588  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 807B958C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 807B9590  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 807B9594  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 807B9598  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 807B959C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 807B95A0  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 807B95A4  EC 01 00 2A */	fadds f0, f1, f0
/* 807B95A8  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 807B95AC  38 61 00 6C */	addi r3, r1, 0x6c
/* 807B95B0  38 81 00 60 */	addi r4, r1, 0x60
/* 807B95B4  4B AA E7 74 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 807B95B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807B95BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807B95C0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 807B95C4  38 81 00 6C */	addi r4, r1, 0x6c
/* 807B95C8  4B 8B AE D8 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 807B95CC  D0 3C 04 D4 */	stfs f1, 0x4d4(r28)
/* 807B95D0  38 61 00 6C */	addi r3, r1, 0x6c
/* 807B95D4  38 80 FF FF */	li r4, -1
/* 807B95D8  4B 8B E2 70 */	b __dt__18dBgS_ObjGndChk_SplFv
lbl_807B95DC:
/* 807B95DC  A8 7C 06 74 */	lha r3, 0x674(r28)
/* 807B95E0  38 03 00 01 */	addi r0, r3, 1
/* 807B95E4  B0 1C 06 74 */	sth r0, 0x674(r28)
/* 807B95E8  38 80 00 00 */	li r4, 0
/* 807B95EC  98 9C 06 A0 */	stb r4, 0x6a0(r28)
/* 807B95F0  38 00 00 04 */	li r0, 4
/* 807B95F4  7C 09 03 A6 */	mtctr r0
lbl_807B95F8:
/* 807B95F8  38 A4 06 96 */	addi r5, r4, 0x696
/* 807B95FC  7C 7C 2A AE */	lhax r3, r28, r5
/* 807B9600  2C 03 00 00 */	cmpwi r3, 0
/* 807B9604  41 82 00 0C */	beq lbl_807B9610
/* 807B9608  38 03 FF FF */	addi r0, r3, -1
/* 807B960C  7C 1C 2B 2E */	sthx r0, r28, r5
lbl_807B9610:
/* 807B9610  38 84 00 02 */	addi r4, r4, 2
/* 807B9614  42 00 FF E4 */	bdnz lbl_807B95F8
/* 807B9618  A8 7C 06 9E */	lha r3, 0x69e(r28)
/* 807B961C  2C 03 00 00 */	cmpwi r3, 0
/* 807B9620  41 82 00 0C */	beq lbl_807B962C
/* 807B9624  38 03 FF FF */	addi r0, r3, -1
/* 807B9628  B0 1C 06 9E */	sth r0, 0x69e(r28)
lbl_807B962C:
/* 807B962C  7F 83 E3 78 */	mr r3, r28
/* 807B9630  4B FF FD ED */	bl action__FP10e_tk_class
/* 807B9634  38 7C 06 F0 */	addi r3, r28, 0x6f0
/* 807B9638  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 807B963C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 807B9640  38 84 0F 38 */	addi r4, r4, 0xf38
/* 807B9644  4B 8B D4 68 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 807B9648  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807B964C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807B9650  C0 3C 04 D0 */	lfs f1, 0x4d0(r28)
/* 807B9654  C0 5C 04 D4 */	lfs f2, 0x4d4(r28)
/* 807B9658  C0 7C 04 D8 */	lfs f3, 0x4d8(r28)
/* 807B965C  4B B8 D2 8C */	b PSMTXTrans
/* 807B9660  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807B9664  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807B9668  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 807B966C  4B 85 2D C8 */	b mDoMtx_YrotM__FPA4_fs
/* 807B9670  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807B9674  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807B9678  A8 9C 04 E4 */	lha r4, 0x4e4(r28)
/* 807B967C  4B 85 2D 20 */	b mDoMtx_XrotM__FPA4_fs
/* 807B9680  3C 60 80 7C */	lis r3, l_HIO@ha
/* 807B9684  3B E3 A4 48 */	addi r31, r3, l_HIO@l
/* 807B9688  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807B968C  FC 40 08 90 */	fmr f2, f1
/* 807B9690  FC 60 08 90 */	fmr f3, f1
/* 807B9694  4B 85 37 A4 */	b scaleM__14mDoMtx_stack_cFfff
/* 807B9698  80 7C 05 C4 */	lwz r3, 0x5c4(r28)
/* 807B969C  83 A3 00 04 */	lwz r29, 4(r3)
/* 807B96A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807B96A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807B96A8  38 9D 00 24 */	addi r4, r29, 0x24
/* 807B96AC  4B B8 CE 04 */	b PSMTXCopy
/* 807B96B0  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 807B96B4  7C 03 07 74 */	extsb r3, r0
/* 807B96B8  4B 87 39 B4 */	b dComIfGp_getReverb__Fi
/* 807B96BC  7C 65 1B 78 */	mr r5, r3
/* 807B96C0  80 7C 05 C4 */	lwz r3, 0x5c4(r28)
/* 807B96C4  38 80 00 00 */	li r4, 0
/* 807B96C8  4B 85 79 E8 */	b play__16mDoExt_McaMorfSOFUlSc
/* 807B96CC  80 7C 05 C4 */	lwz r3, 0x5c4(r28)
/* 807B96D0  38 63 00 0C */	addi r3, r3, 0xc
/* 807B96D4  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 807B96D8  4B B6 ED 54 */	b checkPass__12J3DFrameCtrlFf
/* 807B96DC  2C 03 00 00 */	cmpwi r3, 0
/* 807B96E0  41 82 00 28 */	beq lbl_807B9708
/* 807B96E4  80 1C 05 C8 */	lwz r0, 0x5c8(r28)
/* 807B96E8  2C 00 00 04 */	cmpwi r0, 4
/* 807B96EC  41 82 00 0C */	beq lbl_807B96F8
/* 807B96F0  2C 00 00 07 */	cmpwi r0, 7
/* 807B96F4  40 82 00 14 */	bne lbl_807B9708
lbl_807B96F8:
/* 807B96F8  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 807B96FC  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 807B9700  38 80 00 00 */	li r4, 0
/* 807B9704  4B 86 61 78 */	b fopKyM_createWpillar__FPC4cXyzfi
lbl_807B9708:
/* 807B9708  80 1C 05 C8 */	lwz r0, 0x5c8(r28)
/* 807B970C  2C 00 00 09 */	cmpwi r0, 9
/* 807B9710  40 82 00 AC */	bne lbl_807B97BC
/* 807B9714  80 7C 05 C4 */	lwz r3, 0x5c4(r28)
/* 807B9718  38 63 00 0C */	addi r3, r3, 0xc
/* 807B971C  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 807B9720  4B B6 ED 0C */	b checkPass__12J3DFrameCtrlFf
/* 807B9724  2C 03 00 00 */	cmpwi r3, 0
/* 807B9728  40 82 00 64 */	bne lbl_807B978C
/* 807B972C  80 7C 05 C4 */	lwz r3, 0x5c4(r28)
/* 807B9730  38 63 00 0C */	addi r3, r3, 0xc
/* 807B9734  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 807B9738  4B B6 EC F4 */	b checkPass__12J3DFrameCtrlFf
/* 807B973C  2C 03 00 00 */	cmpwi r3, 0
/* 807B9740  40 82 00 4C */	bne lbl_807B978C
/* 807B9744  80 7C 05 C4 */	lwz r3, 0x5c4(r28)
/* 807B9748  38 63 00 0C */	addi r3, r3, 0xc
/* 807B974C  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 807B9750  4B B6 EC DC */	b checkPass__12J3DFrameCtrlFf
/* 807B9754  2C 03 00 00 */	cmpwi r3, 0
/* 807B9758  40 82 00 34 */	bne lbl_807B978C
/* 807B975C  80 7C 05 C4 */	lwz r3, 0x5c4(r28)
/* 807B9760  38 63 00 0C */	addi r3, r3, 0xc
/* 807B9764  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 807B9768  4B B6 EC C4 */	b checkPass__12J3DFrameCtrlFf
/* 807B976C  2C 03 00 00 */	cmpwi r3, 0
/* 807B9770  40 82 00 1C */	bne lbl_807B978C
/* 807B9774  80 7C 05 C4 */	lwz r3, 0x5c4(r28)
/* 807B9778  38 63 00 0C */	addi r3, r3, 0xc
/* 807B977C  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 807B9780  4B B6 EC AC */	b checkPass__12J3DFrameCtrlFf
/* 807B9784  2C 03 00 00 */	cmpwi r3, 0
/* 807B9788  41 82 02 A8 */	beq lbl_807B9A30
lbl_807B978C:
/* 807B978C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070256@ha */
/* 807B9790  38 03 02 56 */	addi r0, r3, 0x0256 /* 0x00070256@l */
/* 807B9794  90 01 00 44 */	stw r0, 0x44(r1)
/* 807B9798  38 7C 05 CC */	addi r3, r28, 0x5cc
/* 807B979C  38 81 00 44 */	addi r4, r1, 0x44
/* 807B97A0  38 A0 00 00 */	li r5, 0
/* 807B97A4  38 C0 FF FF */	li r6, -1
/* 807B97A8  81 9C 05 CC */	lwz r12, 0x5cc(r28)
/* 807B97AC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807B97B0  7D 89 03 A6 */	mtctr r12
/* 807B97B4  4E 80 04 21 */	bctrl 
/* 807B97B8  48 00 02 78 */	b lbl_807B9A30
lbl_807B97BC:
/* 807B97BC  2C 00 00 04 */	cmpwi r0, 4
/* 807B97C0  40 82 00 94 */	bne lbl_807B9854
/* 807B97C4  80 7C 05 C4 */	lwz r3, 0x5c4(r28)
/* 807B97C8  38 63 00 0C */	addi r3, r3, 0xc
/* 807B97CC  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 807B97D0  4B B6 EC 5C */	b checkPass__12J3DFrameCtrlFf
/* 807B97D4  2C 03 00 00 */	cmpwi r3, 0
/* 807B97D8  41 82 00 34 */	beq lbl_807B980C
/* 807B97DC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070257@ha */
/* 807B97E0  38 03 02 57 */	addi r0, r3, 0x0257 /* 0x00070257@l */
/* 807B97E4  90 01 00 40 */	stw r0, 0x40(r1)
/* 807B97E8  38 7C 05 CC */	addi r3, r28, 0x5cc
/* 807B97EC  38 81 00 40 */	addi r4, r1, 0x40
/* 807B97F0  38 A0 00 00 */	li r5, 0
/* 807B97F4  38 C0 FF FF */	li r6, -1
/* 807B97F8  81 9C 05 CC */	lwz r12, 0x5cc(r28)
/* 807B97FC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807B9800  7D 89 03 A6 */	mtctr r12
/* 807B9804  4E 80 04 21 */	bctrl 
/* 807B9808  48 00 02 28 */	b lbl_807B9A30
lbl_807B980C:
/* 807B980C  80 7C 05 C4 */	lwz r3, 0x5c4(r28)
/* 807B9810  38 63 00 0C */	addi r3, r3, 0xc
/* 807B9814  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 807B9818  4B B6 EC 14 */	b checkPass__12J3DFrameCtrlFf
/* 807B981C  2C 03 00 00 */	cmpwi r3, 0
/* 807B9820  41 82 02 10 */	beq lbl_807B9A30
/* 807B9824  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070258@ha */
/* 807B9828  38 03 02 58 */	addi r0, r3, 0x0258 /* 0x00070258@l */
/* 807B982C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 807B9830  38 7C 05 CC */	addi r3, r28, 0x5cc
/* 807B9834  38 81 00 3C */	addi r4, r1, 0x3c
/* 807B9838  38 A0 00 00 */	li r5, 0
/* 807B983C  38 C0 FF FF */	li r6, -1
/* 807B9840  81 9C 05 CC */	lwz r12, 0x5cc(r28)
/* 807B9844  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807B9848  7D 89 03 A6 */	mtctr r12
/* 807B984C  4E 80 04 21 */	bctrl 
/* 807B9850  48 00 01 E0 */	b lbl_807B9A30
lbl_807B9854:
/* 807B9854  2C 00 00 07 */	cmpwi r0, 7
/* 807B9858  40 82 00 4C */	bne lbl_807B98A4
/* 807B985C  80 7C 05 C4 */	lwz r3, 0x5c4(r28)
/* 807B9860  38 63 00 0C */	addi r3, r3, 0xc
/* 807B9864  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 807B9868  4B B6 EB C4 */	b checkPass__12J3DFrameCtrlFf
/* 807B986C  2C 03 00 00 */	cmpwi r3, 0
/* 807B9870  41 82 01 C0 */	beq lbl_807B9A30
/* 807B9874  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070259@ha */
/* 807B9878  38 03 02 59 */	addi r0, r3, 0x0259 /* 0x00070259@l */
/* 807B987C  90 01 00 38 */	stw r0, 0x38(r1)
/* 807B9880  38 7C 05 CC */	addi r3, r28, 0x5cc
/* 807B9884  38 81 00 38 */	addi r4, r1, 0x38
/* 807B9888  38 A0 00 00 */	li r5, 0
/* 807B988C  38 C0 FF FF */	li r6, -1
/* 807B9890  81 9C 05 CC */	lwz r12, 0x5cc(r28)
/* 807B9894  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807B9898  7D 89 03 A6 */	mtctr r12
/* 807B989C  4E 80 04 21 */	bctrl 
/* 807B98A0  48 00 01 90 */	b lbl_807B9A30
lbl_807B98A4:
/* 807B98A4  2C 00 00 05 */	cmpwi r0, 5
/* 807B98A8  40 82 00 90 */	bne lbl_807B9938
/* 807B98AC  80 7C 05 C4 */	lwz r3, 0x5c4(r28)
/* 807B98B0  38 63 00 0C */	addi r3, r3, 0xc
/* 807B98B4  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 807B98B8  4B B6 EB 74 */	b checkPass__12J3DFrameCtrlFf
/* 807B98BC  2C 03 00 00 */	cmpwi r3, 0
/* 807B98C0  41 82 00 30 */	beq lbl_807B98F0
/* 807B98C4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007025A@ha */
/* 807B98C8  38 03 02 5A */	addi r0, r3, 0x025A /* 0x0007025A@l */
/* 807B98CC  90 01 00 34 */	stw r0, 0x34(r1)
/* 807B98D0  38 7C 05 CC */	addi r3, r28, 0x5cc
/* 807B98D4  38 81 00 34 */	addi r4, r1, 0x34
/* 807B98D8  38 A0 FF FF */	li r5, -1
/* 807B98DC  81 9C 05 CC */	lwz r12, 0x5cc(r28)
/* 807B98E0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807B98E4  7D 89 03 A6 */	mtctr r12
/* 807B98E8  4E 80 04 21 */	bctrl 
/* 807B98EC  48 00 01 44 */	b lbl_807B9A30
lbl_807B98F0:
/* 807B98F0  80 7C 05 C4 */	lwz r3, 0x5c4(r28)
/* 807B98F4  38 63 00 0C */	addi r3, r3, 0xc
/* 807B98F8  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 807B98FC  4B B6 EB 30 */	b checkPass__12J3DFrameCtrlFf
/* 807B9900  2C 03 00 00 */	cmpwi r3, 0
/* 807B9904  41 82 01 2C */	beq lbl_807B9A30
/* 807B9908  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007025B@ha */
/* 807B990C  38 03 02 5B */	addi r0, r3, 0x025B /* 0x0007025B@l */
/* 807B9910  90 01 00 30 */	stw r0, 0x30(r1)
/* 807B9914  38 7C 05 CC */	addi r3, r28, 0x5cc
/* 807B9918  38 81 00 30 */	addi r4, r1, 0x30
/* 807B991C  38 A0 00 00 */	li r5, 0
/* 807B9920  38 C0 FF FF */	li r6, -1
/* 807B9924  81 9C 05 CC */	lwz r12, 0x5cc(r28)
/* 807B9928  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807B992C  7D 89 03 A6 */	mtctr r12
/* 807B9930  4E 80 04 21 */	bctrl 
/* 807B9934  48 00 00 FC */	b lbl_807B9A30
lbl_807B9938:
/* 807B9938  2C 00 00 06 */	cmpwi r0, 6
/* 807B993C  40 82 00 48 */	bne lbl_807B9984
/* 807B9940  80 7C 05 C4 */	lwz r3, 0x5c4(r28)
/* 807B9944  38 63 00 0C */	addi r3, r3, 0xc
/* 807B9948  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 807B994C  4B B6 EA E0 */	b checkPass__12J3DFrameCtrlFf
/* 807B9950  2C 03 00 00 */	cmpwi r3, 0
/* 807B9954  41 82 00 DC */	beq lbl_807B9A30
/* 807B9958  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007025C@ha */
/* 807B995C  38 03 02 5C */	addi r0, r3, 0x025C /* 0x0007025C@l */
/* 807B9960  90 01 00 2C */	stw r0, 0x2c(r1)
/* 807B9964  38 7C 05 CC */	addi r3, r28, 0x5cc
/* 807B9968  38 81 00 2C */	addi r4, r1, 0x2c
/* 807B996C  38 A0 FF FF */	li r5, -1
/* 807B9970  81 9C 05 CC */	lwz r12, 0x5cc(r28)
/* 807B9974  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807B9978  7D 89 03 A6 */	mtctr r12
/* 807B997C  4E 80 04 21 */	bctrl 
/* 807B9980  48 00 00 B0 */	b lbl_807B9A30
lbl_807B9984:
/* 807B9984  2C 00 00 0A */	cmpwi r0, 0xa
/* 807B9988  40 82 00 48 */	bne lbl_807B99D0
/* 807B998C  80 7C 05 C4 */	lwz r3, 0x5c4(r28)
/* 807B9990  38 63 00 0C */	addi r3, r3, 0xc
/* 807B9994  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 807B9998  4B B6 EA 94 */	b checkPass__12J3DFrameCtrlFf
/* 807B999C  2C 03 00 00 */	cmpwi r3, 0
/* 807B99A0  41 82 00 90 */	beq lbl_807B9A30
/* 807B99A4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007025F@ha */
/* 807B99A8  38 03 02 5F */	addi r0, r3, 0x025F /* 0x0007025F@l */
/* 807B99AC  90 01 00 28 */	stw r0, 0x28(r1)
/* 807B99B0  38 7C 05 CC */	addi r3, r28, 0x5cc
/* 807B99B4  38 81 00 28 */	addi r4, r1, 0x28
/* 807B99B8  38 A0 FF FF */	li r5, -1
/* 807B99BC  81 9C 05 CC */	lwz r12, 0x5cc(r28)
/* 807B99C0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807B99C4  7D 89 03 A6 */	mtctr r12
/* 807B99C8  4E 80 04 21 */	bctrl 
/* 807B99CC  48 00 00 64 */	b lbl_807B9A30
lbl_807B99D0:
/* 807B99D0  2C 00 00 08 */	cmpwi r0, 8
/* 807B99D4  40 82 00 5C */	bne lbl_807B9A30
/* 807B99D8  80 7C 05 C4 */	lwz r3, 0x5c4(r28)
/* 807B99DC  38 63 00 0C */	addi r3, r3, 0xc
/* 807B99E0  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 807B99E4  4B B6 EA 48 */	b checkPass__12J3DFrameCtrlFf
/* 807B99E8  2C 03 00 00 */	cmpwi r3, 0
/* 807B99EC  40 82 00 1C */	bne lbl_807B9A08
/* 807B99F0  80 7C 05 C4 */	lwz r3, 0x5c4(r28)
/* 807B99F4  38 63 00 0C */	addi r3, r3, 0xc
/* 807B99F8  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 807B99FC  4B B6 EA 30 */	b checkPass__12J3DFrameCtrlFf
/* 807B9A00  2C 03 00 00 */	cmpwi r3, 0
/* 807B9A04  41 82 00 2C */	beq lbl_807B9A30
lbl_807B9A08:
/* 807B9A08  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070260@ha */
/* 807B9A0C  38 03 02 60 */	addi r0, r3, 0x0260 /* 0x00070260@l */
/* 807B9A10  90 01 00 24 */	stw r0, 0x24(r1)
/* 807B9A14  38 7C 05 CC */	addi r3, r28, 0x5cc
/* 807B9A18  38 81 00 24 */	addi r4, r1, 0x24
/* 807B9A1C  38 A0 FF FF */	li r5, -1
/* 807B9A20  81 9C 05 CC */	lwz r12, 0x5cc(r28)
/* 807B9A24  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807B9A28  7D 89 03 A6 */	mtctr r12
/* 807B9A2C  4E 80 04 21 */	bctrl 
lbl_807B9A30:
/* 807B9A30  80 7C 05 C4 */	lwz r3, 0x5c4(r28)
/* 807B9A34  4B 85 77 B8 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 807B9A38  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 807B9A3C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807B9A40  38 63 00 90 */	addi r3, r3, 0x90
/* 807B9A44  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 807B9A48  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 807B9A4C  80 84 00 00 */	lwz r4, 0(r4)
/* 807B9A50  4B B8 CA 60 */	b PSMTXCopy
/* 807B9A54  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 807B9A58  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 807B9A5C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 807B9A60  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 807B9A64  38 61 00 60 */	addi r3, r1, 0x60
/* 807B9A68  38 9C 05 38 */	addi r4, r28, 0x538
/* 807B9A6C  4B AB 74 80 */	b MtxPosition__FP4cXyzP4cXyz
/* 807B9A70  C0 1C 05 38 */	lfs f0, 0x538(r28)
/* 807B9A74  D0 1C 05 50 */	stfs f0, 0x550(r28)
/* 807B9A78  C0 1C 05 3C */	lfs f0, 0x53c(r28)
/* 807B9A7C  D0 1C 05 54 */	stfs f0, 0x554(r28)
/* 807B9A80  C0 1C 05 40 */	lfs f0, 0x540(r28)
/* 807B9A84  D0 1C 05 58 */	stfs f0, 0x558(r28)
/* 807B9A88  C0 5C 05 54 */	lfs f2, 0x554(r28)
/* 807B9A8C  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 807B9A90  C0 1F 00 08 */	lfs f0, 8(r31)
/* 807B9A94  EC 01 00 32 */	fmuls f0, f1, f0
/* 807B9A98  EC 02 00 2A */	fadds f0, f2, f0
/* 807B9A9C  D0 1C 05 54 */	stfs f0, 0x554(r28)
/* 807B9AA0  88 1C 06 A1 */	lbz r0, 0x6a1(r28)
/* 807B9AA4  7C 00 07 75 */	extsb. r0, r0
/* 807B9AA8  41 82 00 F4 */	beq lbl_807B9B9C
/* 807B9AAC  80 1C 06 AC */	lwz r0, 0x6ac(r28)
/* 807B9AB0  90 01 00 20 */	stw r0, 0x20(r1)
/* 807B9AB4  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 807B9AB8  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 807B9ABC  38 81 00 20 */	addi r4, r1, 0x20
/* 807B9AC0  4B 85 FD 38 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 807B9AC4  28 03 00 00 */	cmplwi r3, 0
/* 807B9AC8  41 82 00 24 */	beq lbl_807B9AEC
/* 807B9ACC  C0 1C 05 38 */	lfs f0, 0x538(r28)
/* 807B9AD0  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 807B9AD4  C0 1C 05 3C */	lfs f0, 0x53c(r28)
/* 807B9AD8  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 807B9ADC  C0 1C 05 40 */	lfs f0, 0x540(r28)
/* 807B9AE0  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
/* 807B9AE4  38 00 00 00 */	li r0, 0
/* 807B9AE8  98 03 08 C8 */	stb r0, 0x8c8(r3)
lbl_807B9AEC:
/* 807B9AEC  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 807B9AF0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807B9AF4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807B9AF8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 807B9AFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807B9B00  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 807B9B04  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 807B9B08  38 80 00 00 */	li r4, 0
/* 807B9B0C  90 81 00 08 */	stw r4, 8(r1)
/* 807B9B10  38 00 FF FF */	li r0, -1
/* 807B9B14  90 01 00 0C */	stw r0, 0xc(r1)
/* 807B9B18  90 81 00 10 */	stw r4, 0x10(r1)
/* 807B9B1C  90 81 00 14 */	stw r4, 0x14(r1)
/* 807B9B20  90 81 00 18 */	stw r4, 0x18(r1)
/* 807B9B24  38 80 00 00 */	li r4, 0
/* 807B9B28  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000819B@ha */
/* 807B9B2C  38 A5 81 9B */	addi r5, r5, 0x819B /* 0x0000819B@l */
/* 807B9B30  38 DC 05 38 */	addi r6, r28, 0x538
/* 807B9B34  38 E0 00 00 */	li r7, 0
/* 807B9B38  39 1C 04 E4 */	addi r8, r28, 0x4e4
/* 807B9B3C  39 21 00 48 */	addi r9, r1, 0x48
/* 807B9B40  39 40 00 FF */	li r10, 0xff
/* 807B9B44  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 807B9B48  4B 89 2F 48 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807B9B4C  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 807B9B50  38 80 00 00 */	li r4, 0
/* 807B9B54  90 81 00 08 */	stw r4, 8(r1)
/* 807B9B58  38 00 FF FF */	li r0, -1
/* 807B9B5C  90 01 00 0C */	stw r0, 0xc(r1)
/* 807B9B60  90 81 00 10 */	stw r4, 0x10(r1)
/* 807B9B64  90 81 00 14 */	stw r4, 0x14(r1)
/* 807B9B68  90 81 00 18 */	stw r4, 0x18(r1)
/* 807B9B6C  38 80 00 00 */	li r4, 0
/* 807B9B70  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000819C@ha */
/* 807B9B74  38 A5 81 9C */	addi r5, r5, 0x819C /* 0x0000819C@l */
/* 807B9B78  38 DC 05 38 */	addi r6, r28, 0x538
/* 807B9B7C  38 E0 00 00 */	li r7, 0
/* 807B9B80  39 1C 04 E4 */	addi r8, r28, 0x4e4
/* 807B9B84  39 21 00 48 */	addi r9, r1, 0x48
/* 807B9B88  39 40 00 FF */	li r10, 0xff
/* 807B9B8C  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 807B9B90  4B 89 2F 00 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807B9B94  38 00 00 00 */	li r0, 0
/* 807B9B98  98 1C 06 A1 */	stb r0, 0x6a1(r28)
lbl_807B9B9C:
/* 807B9B9C  88 1C 06 A0 */	lbz r0, 0x6a0(r28)
/* 807B9BA0  7C 00 07 75 */	extsb. r0, r0
/* 807B9BA4  41 82 00 1C */	beq lbl_807B9BC0
/* 807B9BA8  80 1C 04 9C */	lwz r0, 0x49c(r28)
/* 807B9BAC  54 00 00 3E */	slwi r0, r0, 0
/* 807B9BB0  90 1C 04 9C */	stw r0, 0x49c(r28)
/* 807B9BB4  38 00 00 00 */	li r0, 0
/* 807B9BB8  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 807B9BBC  48 00 00 0C */	b lbl_807B9BC8
lbl_807B9BC0:
/* 807B9BC0  38 00 00 04 */	li r0, 4
/* 807B9BC4  90 1C 05 5C */	stw r0, 0x55c(r28)
lbl_807B9BC8:
/* 807B9BC8  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 807B9BCC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807B9BD0  38 63 00 60 */	addi r3, r3, 0x60
/* 807B9BD4  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 807B9BD8  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 807B9BDC  80 84 00 00 */	lwz r4, 0(r4)
/* 807B9BE0  4B B8 C8 D0 */	b PSMTXCopy
/* 807B9BE4  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 807B9BE8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 807B9BEC  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 807B9BF0  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 807B9BF4  38 61 00 60 */	addi r3, r1, 0x60
/* 807B9BF8  38 81 00 54 */	addi r4, r1, 0x54
/* 807B9BFC  4B AB 72 F0 */	b MtxPosition__FP4cXyzP4cXyz
/* 807B9C00  38 7C 0A 28 */	addi r3, r28, 0xa28
/* 807B9C04  38 81 00 54 */	addi r4, r1, 0x54
/* 807B9C08  4B AB 5A 40 */	b SetC__8cM3dGSphFRC4cXyz
/* 807B9C0C  38 7C 0A 28 */	addi r3, r28, 0xa28
/* 807B9C10  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 807B9C14  C0 1F 00 08 */	lfs f0, 8(r31)
/* 807B9C18  EC 21 00 32 */	fmuls f1, f1, f0
/* 807B9C1C  4B AB 5A EC */	b SetR__8cM3dGSphFf
/* 807B9C20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807B9C24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807B9C28  38 63 23 3C */	addi r3, r3, 0x233c
/* 807B9C2C  38 9C 09 04 */	addi r4, r28, 0x904
/* 807B9C30  4B AA AF 78 */	b Set__4cCcSFP8cCcD_Obj
/* 807B9C34  38 60 00 01 */	li r3, 1
/* 807B9C38  39 61 00 E0 */	addi r11, r1, 0xe0
/* 807B9C3C  4B BA 85 E4 */	b _restgpr_27
/* 807B9C40  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 807B9C44  7C 08 03 A6 */	mtlr r0
/* 807B9C48  38 21 00 E0 */	addi r1, r1, 0xe0
/* 807B9C4C  4E 80 00 20 */	blr 
