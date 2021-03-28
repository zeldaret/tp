lbl_807FB3FC:
/* 807FB3FC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 807FB400  7C 08 02 A6 */	mflr r0
/* 807FB404  90 01 00 74 */	stw r0, 0x74(r1)
/* 807FB408  39 61 00 70 */	addi r11, r1, 0x70
/* 807FB40C  4B B6 6D B4 */	b _savegpr_22
/* 807FB410  7C 7F 1B 78 */	mr r31, r3
/* 807FB414  3C 60 80 80 */	lis r3, lit_1109@ha
/* 807FB418  3B A3 D0 20 */	addi r29, r3, lit_1109@l
/* 807FB41C  3C 60 80 80 */	lis r3, lit_3801@ha
/* 807FB420  3B C3 CC B4 */	addi r30, r3, lit_3801@l
/* 807FB424  A8 7F 06 7C */	lha r3, 0x67c(r31)
/* 807FB428  38 03 00 01 */	addi r0, r3, 1
/* 807FB42C  B0 1F 06 7C */	sth r0, 0x67c(r31)
/* 807FB430  38 60 00 00 */	li r3, 0
/* 807FB434  38 00 00 04 */	li r0, 4
/* 807FB438  7C 09 03 A6 */	mtctr r0
lbl_807FB43C:
/* 807FB43C  38 A3 06 86 */	addi r5, r3, 0x686
/* 807FB440  7C 9F 2A AE */	lhax r4, r31, r5
/* 807FB444  2C 04 00 00 */	cmpwi r4, 0
/* 807FB448  41 82 00 0C */	beq lbl_807FB454
/* 807FB44C  38 04 FF FF */	addi r0, r4, -1
/* 807FB450  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_807FB454:
/* 807FB454  38 63 00 02 */	addi r3, r3, 2
/* 807FB458  42 00 FF E4 */	bdnz lbl_807FB43C
/* 807FB45C  A8 7F 06 8E */	lha r3, 0x68e(r31)
/* 807FB460  2C 03 00 00 */	cmpwi r3, 0
/* 807FB464  41 82 00 0C */	beq lbl_807FB470
/* 807FB468  38 03 FF FF */	addi r0, r3, -1
/* 807FB46C  B0 1F 06 8E */	sth r0, 0x68e(r31)
lbl_807FB470:
/* 807FB470  88 7F 0B A7 */	lbz r3, 0xba7(r31)
/* 807FB474  7C 60 07 75 */	extsb. r0, r3
/* 807FB478  41 82 00 0C */	beq lbl_807FB484
/* 807FB47C  38 03 FF FF */	addi r0, r3, -1
/* 807FB480  98 1F 0B A7 */	stb r0, 0xba7(r31)
lbl_807FB484:
/* 807FB484  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 807FB488  83 83 00 04 */	lwz r28, 4(r3)
/* 807FB48C  7F E3 FB 78 */	mr r3, r31
/* 807FB490  4B FF F5 A5 */	bl action__FP10e_yg_class
/* 807FB494  A8 1F 06 7E */	lha r0, 0x67e(r31)
/* 807FB498  2C 00 00 0A */	cmpwi r0, 0xa
/* 807FB49C  40 82 00 0C */	bne lbl_807FB4A8
/* 807FB4A0  38 60 00 01 */	li r3, 1
/* 807FB4A4  48 00 04 4C */	b lbl_807FB8F0
lbl_807FB4A8:
/* 807FB4A8  2C 00 00 05 */	cmpwi r0, 5
/* 807FB4AC  40 82 00 98 */	bne lbl_807FB544
/* 807FB4B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807FB4B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807FB4B8  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 807FB4BC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807FB4C0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 807FB4C4  7D 89 03 A6 */	mtctr r12
/* 807FB4C8  4E 80 04 21 */	bctrl 
/* 807FB4CC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 807FB4D0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 807FB4D4  4B B4 AF DC */	b PSMTXCopy
/* 807FB4D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807FB4DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807FB4E0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 807FB4E4  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 807FB4E8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 807FB4EC  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 807FB4F0  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 807FB4F4  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 807FB4F8  38 80 00 00 */	li r4, 0
/* 807FB4FC  4B 81 0F 38 */	b mDoMtx_YrotM__FPA4_fs
/* 807FB500  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807FB504  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807FB508  38 80 80 00 */	li r4, -32768
/* 807FB50C  4B 81 0E 90 */	b mDoMtx_XrotM__FPA4_fs
/* 807FB510  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807FB514  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807FB518  38 80 09 C4 */	li r4, 0x9c4
/* 807FB51C  4B 81 0F B0 */	b mDoMtx_ZrotM__FPA4_fs
/* 807FB520  C0 3E 00 98 */	lfs f1, 0x98(r30)
/* 807FB524  C0 5E 01 24 */	lfs f2, 0x124(r30)
/* 807FB528  C0 7E 01 28 */	lfs f3, 0x128(r30)
/* 807FB52C  4B 81 18 70 */	b transM__14mDoMtx_stack_cFfff
/* 807FB530  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807FB534  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807FB538  38 9C 00 24 */	addi r4, r28, 0x24
/* 807FB53C  4B B4 AF 74 */	b PSMTXCopy
/* 807FB540  48 00 00 54 */	b lbl_807FB594
lbl_807FB544:
/* 807FB544  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807FB548  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807FB54C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 807FB550  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 807FB554  C0 1F 06 94 */	lfs f0, 0x694(r31)
/* 807FB558  EC 42 00 2A */	fadds f2, f2, f0
/* 807FB55C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 807FB560  4B B4 B3 88 */	b PSMTXTrans
/* 807FB564  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807FB568  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807FB56C  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 807FB570  4B 81 0E C4 */	b mDoMtx_YrotM__FPA4_fs
/* 807FB574  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807FB578  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807FB57C  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 807FB580  4B 81 0E 1C */	b mDoMtx_XrotM__FPA4_fs
/* 807FB584  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807FB588  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807FB58C  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 807FB590  4B 81 0F 3C */	b mDoMtx_ZrotM__FPA4_fs
lbl_807FB594:
/* 807FB594  3B 7D 00 4C */	addi r27, r29, 0x4c
/* 807FB598  C0 3B 00 08 */	lfs f1, 8(r27)
/* 807FB59C  FC 40 08 90 */	fmr f2, f1
/* 807FB5A0  FC 60 08 90 */	fmr f3, f1
/* 807FB5A4  4B 81 18 94 */	b scaleM__14mDoMtx_stack_cFfff
/* 807FB5A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807FB5AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807FB5B0  38 9C 00 24 */	addi r4, r28, 0x24
/* 807FB5B4  4B B4 AE FC */	b PSMTXCopy
/* 807FB5B8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 807FB5BC  7C 03 07 74 */	extsb r3, r0
/* 807FB5C0  4B 83 1A AC */	b dComIfGp_getReverb__Fi
/* 807FB5C4  7C 65 1B 78 */	mr r5, r3
/* 807FB5C8  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 807FB5CC  38 80 00 00 */	li r4, 0
/* 807FB5D0  4B 81 5A E0 */	b play__16mDoExt_McaMorfSOFUlSc
/* 807FB5D4  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 807FB5D8  4B 81 5C 14 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 807FB5DC  7F E3 FB 78 */	mr r3, r31
/* 807FB5E0  4B FF F2 A9 */	bl ke_set__FP10e_yg_class
/* 807FB5E4  7F E3 FB 78 */	mr r3, r31
/* 807FB5E8  4B FF FA 4D */	bl anm_se_set__FP10e_yg_class
/* 807FB5EC  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 807FB5F0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807FB5F4  38 63 00 30 */	addi r3, r3, 0x30
/* 807FB5F8  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 807FB5FC  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 807FB600  80 84 00 00 */	lwz r4, 0(r4)
/* 807FB604  4B B4 AE AC */	b PSMTXCopy
/* 807FB608  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 807FB60C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 807FB610  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807FB614  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807FB618  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807FB61C  38 61 00 38 */	addi r3, r1, 0x38
/* 807FB620  38 9F 05 38 */	addi r4, r31, 0x538
/* 807FB624  4B A7 58 C8 */	b MtxPosition__FP4cXyzP4cXyz
/* 807FB628  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 807FB62C  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 807FB630  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 807FB634  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 807FB638  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 807FB63C  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 807FB640  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 807FB644  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 807FB648  EC 01 00 2A */	fadds f0, f1, f0
/* 807FB64C  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 807FB650  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 807FB654  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 807FB658  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807FB65C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807FB660  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807FB664  38 61 00 38 */	addi r3, r1, 0x38
/* 807FB668  38 81 00 2C */	addi r4, r1, 0x2c
/* 807FB66C  4B A7 58 80 */	b MtxPosition__FP4cXyzP4cXyz
/* 807FB670  38 7F 0A 14 */	addi r3, r31, 0xa14
/* 807FB674  38 81 00 2C */	addi r4, r1, 0x2c
/* 807FB678  4B A7 3F D0 */	b SetC__8cM3dGSphFRC4cXyz
/* 807FB67C  38 7F 0A 14 */	addi r3, r31, 0xa14
/* 807FB680  C0 3E 01 04 */	lfs f1, 0x104(r30)
/* 807FB684  C0 1B 00 08 */	lfs f0, 8(r27)
/* 807FB688  EC 21 00 32 */	fmuls f1, f1, f0
/* 807FB68C  4B A7 40 7C */	b SetR__8cM3dGSphFf
/* 807FB690  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807FB694  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807FB698  3B 03 23 3C */	addi r24, r3, 0x233c
/* 807FB69C  7F 03 C3 78 */	mr r3, r24
/* 807FB6A0  38 9F 08 F0 */	addi r4, r31, 0x8f0
/* 807FB6A4  4B A6 95 04 */	b Set__4cCcSFP8cCcD_Obj
/* 807FB6A8  88 1F 0B 84 */	lbz r0, 0xb84(r31)
/* 807FB6AC  7C 00 07 75 */	extsb. r0, r0
/* 807FB6B0  40 82 00 18 */	bne lbl_807FB6C8
/* 807FB6B4  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 807FB6B8  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 807FB6BC  EC 01 00 2A */	fadds f0, f1, f0
/* 807FB6C0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807FB6C4  48 00 00 28 */	b lbl_807FB6EC
lbl_807FB6C8:
/* 807FB6C8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807FB6CC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 807FB6D0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807FB6D4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807FB6D8  38 61 00 38 */	addi r3, r1, 0x38
/* 807FB6DC  38 81 00 2C */	addi r4, r1, 0x2c
/* 807FB6E0  4B A7 58 0C */	b MtxPosition__FP4cXyzP4cXyz
/* 807FB6E4  38 00 00 00 */	li r0, 0
/* 807FB6E8  98 1F 0B 84 */	stb r0, 0xb84(r31)
lbl_807FB6EC:
/* 807FB6EC  38 7F 0B 4C */	addi r3, r31, 0xb4c
/* 807FB6F0  38 81 00 2C */	addi r4, r1, 0x2c
/* 807FB6F4  4B A7 3F 54 */	b SetC__8cM3dGSphFRC4cXyz
/* 807FB6F8  38 7F 0B 4C */	addi r3, r31, 0xb4c
/* 807FB6FC  C0 3E 00 B4 */	lfs f1, 0xb4(r30)
/* 807FB700  C0 1B 00 08 */	lfs f0, 8(r27)
/* 807FB704  EC 21 00 32 */	fmuls f1, f1, f0
/* 807FB708  4B A7 40 00 */	b SetR__8cM3dGSphFf
/* 807FB70C  7F 03 C3 78 */	mr r3, r24
/* 807FB710  38 9F 0A 28 */	addi r4, r31, 0xa28
/* 807FB714  4B A6 94 94 */	b Set__4cCcSFP8cCcD_Obj
/* 807FB718  88 1F 08 B0 */	lbz r0, 0x8b0(r31)
/* 807FB71C  7C 00 07 75 */	extsb. r0, r0
/* 807FB720  41 82 01 10 */	beq lbl_807FB830
/* 807FB724  80 1F 05 D0 */	lwz r0, 0x5d0(r31)
/* 807FB728  2C 00 00 0D */	cmpwi r0, 0xd
/* 807FB72C  40 82 01 04 */	bne lbl_807FB830
/* 807FB730  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 807FB734  38 63 00 0C */	addi r3, r3, 0xc
/* 807FB738  C0 3E 00 08 */	lfs f1, 8(r30)
/* 807FB73C  4B B2 CC F0 */	b checkPass__12J3DFrameCtrlFf
/* 807FB740  2C 03 00 00 */	cmpwi r3, 0
/* 807FB744  40 82 00 1C */	bne lbl_807FB760
/* 807FB748  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 807FB74C  38 63 00 0C */	addi r3, r3, 0xc
/* 807FB750  C0 3E 01 2C */	lfs f1, 0x12c(r30)
/* 807FB754  4B B2 CC D8 */	b checkPass__12J3DFrameCtrlFf
/* 807FB758  2C 03 00 00 */	cmpwi r3, 0
/* 807FB75C  41 82 00 D4 */	beq lbl_807FB830
lbl_807FB760:
/* 807FB760  C0 3E 00 08 */	lfs f1, 8(r30)
/* 807FB764  4B A6 C1 F0 */	b cM_rndF__Ff
/* 807FB768  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 807FB76C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807FB770  40 80 00 C0 */	bge lbl_807FB830
/* 807FB774  88 1D 03 38 */	lbz r0, 0x338(r29)
/* 807FB778  7C 00 07 75 */	extsb. r0, r0
/* 807FB77C  40 82 00 30 */	bne lbl_807FB7AC
/* 807FB780  C0 1E 00 FC */	lfs f0, 0xfc(r30)
/* 807FB784  D0 1D 03 3C */	stfs f0, 0x33c(r29)
/* 807FB788  38 7D 03 3C */	addi r3, r29, 0x33c
/* 807FB78C  D0 03 00 04 */	stfs f0, 4(r3)
/* 807FB790  D0 03 00 08 */	stfs f0, 8(r3)
/* 807FB794  3C 80 80 80 */	lis r4, __dt__4cXyzFv@ha
/* 807FB798  38 84 CC 64 */	addi r4, r4, __dt__4cXyzFv@l
/* 807FB79C  38 BD 03 2C */	addi r5, r29, 0x32c
/* 807FB7A0  4B FF CB 39 */	bl __register_global_object
/* 807FB7A4  38 00 00 01 */	li r0, 1
/* 807FB7A8  98 1D 03 38 */	stb r0, 0x338(r29)
lbl_807FB7AC:
/* 807FB7AC  3A C0 00 00 */	li r22, 0
/* 807FB7B0  3B 60 00 00 */	li r27, 0
/* 807FB7B4  3B 40 00 00 */	li r26, 0
/* 807FB7B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807FB7BC  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l
/* 807FB7C0  3C 60 80 80 */	lis r3, eff_id_5034@ha
/* 807FB7C4  3B 23 CE C0 */	addi r25, r3, eff_id_5034@l
lbl_807FB7C8:
/* 807FB7C8  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 807FB7CC  38 00 00 FF */	li r0, 0xff
/* 807FB7D0  90 01 00 08 */	stw r0, 8(r1)
/* 807FB7D4  38 80 00 00 */	li r4, 0
/* 807FB7D8  90 81 00 0C */	stw r4, 0xc(r1)
/* 807FB7DC  38 00 FF FF */	li r0, -1
/* 807FB7E0  90 01 00 10 */	stw r0, 0x10(r1)
/* 807FB7E4  90 81 00 14 */	stw r4, 0x14(r1)
/* 807FB7E8  90 81 00 18 */	stw r4, 0x18(r1)
/* 807FB7EC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 807FB7F0  3A FA 0B 8C */	addi r23, r26, 0xb8c
/* 807FB7F4  7C 9F B8 2E */	lwzx r4, r31, r23
/* 807FB7F8  38 A0 00 00 */	li r5, 0
/* 807FB7FC  7C D9 DA 2E */	lhzx r6, r25, r27
/* 807FB800  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 807FB804  39 1F 01 0C */	addi r8, r31, 0x10c
/* 807FB808  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 807FB80C  39 5D 03 3C */	addi r10, r29, 0x33c
/* 807FB810  C0 3E 00 08 */	lfs f1, 8(r30)
/* 807FB814  4B 85 1C B8 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807FB818  7C 7F B9 2E */	stwx r3, r31, r23
/* 807FB81C  3A D6 00 01 */	addi r22, r22, 1
/* 807FB820  2C 16 00 04 */	cmpwi r22, 4
/* 807FB824  3B 7B 00 02 */	addi r27, r27, 2
/* 807FB828  3B 5A 00 04 */	addi r26, r26, 4
/* 807FB82C  41 80 FF 9C */	blt lbl_807FB7C8
lbl_807FB830:
/* 807FB830  88 1F 0B A8 */	lbz r0, 0xba8(r31)
/* 807FB834  7C 00 07 75 */	extsb. r0, r0
/* 807FB838  40 82 00 90 */	bne lbl_807FB8C8
/* 807FB83C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807FB840  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l
/* 807FB844  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 807FB848  38 00 00 FF */	li r0, 0xff
/* 807FB84C  90 01 00 08 */	stw r0, 8(r1)
/* 807FB850  38 80 00 00 */	li r4, 0
/* 807FB854  90 81 00 0C */	stw r4, 0xc(r1)
/* 807FB858  38 00 FF FF */	li r0, -1
/* 807FB85C  90 01 00 10 */	stw r0, 0x10(r1)
/* 807FB860  90 81 00 14 */	stw r4, 0x14(r1)
/* 807FB864  90 81 00 18 */	stw r4, 0x18(r1)
/* 807FB868  90 81 00 1C */	stw r4, 0x1c(r1)
/* 807FB86C  80 9F 0B 88 */	lwz r4, 0xb88(r31)
/* 807FB870  38 A0 00 00 */	li r5, 0
/* 807FB874  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008431@ha */
/* 807FB878  38 C6 84 31 */	addi r6, r6, 0x8431 /* 0x00008431@l */
/* 807FB87C  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 807FB880  39 00 00 00 */	li r8, 0
/* 807FB884  39 20 00 00 */	li r9, 0
/* 807FB888  39 40 00 00 */	li r10, 0
/* 807FB88C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 807FB890  4B 85 1C 3C */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807FB894  90 7F 0B 88 */	stw r3, 0xb88(r31)
/* 807FB898  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 807FB89C  38 63 02 10 */	addi r3, r3, 0x210
/* 807FB8A0  80 9F 0B 88 */	lwz r4, 0xb88(r31)
/* 807FB8A4  4B 85 00 74 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 807FB8A8  7C 65 1B 79 */	or. r5, r3, r3
/* 807FB8AC  41 82 00 1C */	beq lbl_807FB8C8
/* 807FB8B0  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 807FB8B4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807FB8B8  38 63 00 30 */	addi r3, r3, 0x30
/* 807FB8BC  38 85 00 68 */	addi r4, r5, 0x68
/* 807FB8C0  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 807FB8C4  4B A8 4F 1C */	b func_802807E0
lbl_807FB8C8:
/* 807FB8C8  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 807FB8CC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807FB8D0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807FB8D4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807FB8D8  7F E3 FB 78 */	mr r3, r31
/* 807FB8DC  38 9F 05 D8 */	addi r4, r31, 0x5d8
/* 807FB8E0  38 BF 05 38 */	addi r5, r31, 0x538
/* 807FB8E4  38 C1 00 20 */	addi r6, r1, 0x20
/* 807FB8E8  48 00 0F 2D */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 807FB8EC  38 60 00 01 */	li r3, 1
lbl_807FB8F0:
/* 807FB8F0  39 61 00 70 */	addi r11, r1, 0x70
/* 807FB8F4  4B B6 69 18 */	b _restgpr_22
/* 807FB8F8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 807FB8FC  7C 08 03 A6 */	mtlr r0
/* 807FB900  38 21 00 70 */	addi r1, r1, 0x70
/* 807FB904  4E 80 00 20 */	blr 
