lbl_809503D8:
/* 809503D8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 809503DC  7C 08 02 A6 */	mflr r0
/* 809503E0  90 01 00 74 */	stw r0, 0x74(r1)
/* 809503E4  39 61 00 70 */	addi r11, r1, 0x70
/* 809503E8  4B A1 1D E1 */	bl _savegpr_24
/* 809503EC  7C 7D 1B 78 */	mr r29, r3
/* 809503F0  3C 60 80 95 */	lis r3, lit_3958@ha /* 0x809511C0@ha */
/* 809503F4  3B E3 11 C0 */	addi r31, r3, lit_3958@l /* 0x809511C0@l */
/* 809503F8  4B 6C 7E B1 */	bl cDmrNowMidnaTalk__Fv
/* 809503FC  2C 03 00 00 */	cmpwi r3, 0
/* 80950400  41 82 00 18 */	beq lbl_80950418
/* 80950404  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 80950408  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 8095040C  40 82 00 0C */	bne lbl_80950418
/* 80950410  38 60 00 01 */	li r3, 1
/* 80950414  48 00 04 44 */	b lbl_80950858
lbl_80950418:
/* 80950418  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8095041C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80950420  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80950424  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80950428  A8 7D 05 F8 */	lha r3, 0x5f8(r29)
/* 8095042C  38 03 00 01 */	addi r0, r3, 1
/* 80950430  B0 1D 05 F8 */	sth r0, 0x5f8(r29)
/* 80950434  38 80 00 00 */	li r4, 0
/* 80950438  98 9D 0A 50 */	stb r4, 0xa50(r29)
/* 8095043C  38 00 00 04 */	li r0, 4
/* 80950440  7C 09 03 A6 */	mtctr r0
lbl_80950444:
/* 80950444  38 A4 06 04 */	addi r5, r4, 0x604
/* 80950448  7C 7D 2A AE */	lhax r3, r29, r5
/* 8095044C  2C 03 00 00 */	cmpwi r3, 0
/* 80950450  41 82 00 0C */	beq lbl_8095045C
/* 80950454  38 03 FF FF */	addi r0, r3, -1
/* 80950458  7C 1D 2B 2E */	sthx r0, r29, r5
lbl_8095045C:
/* 8095045C  38 84 00 02 */	addi r4, r4, 2
/* 80950460  42 00 FF E4 */	bdnz lbl_80950444
/* 80950464  A8 7D 06 0C */	lha r3, 0x60c(r29)
/* 80950468  2C 03 00 00 */	cmpwi r3, 0
/* 8095046C  41 82 00 0C */	beq lbl_80950478
/* 80950470  38 03 FF FF */	addi r0, r3, -1
/* 80950474  B0 1D 06 0C */	sth r0, 0x60c(r29)
lbl_80950478:
/* 80950478  A8 7D 06 0E */	lha r3, 0x60e(r29)
/* 8095047C  2C 03 00 00 */	cmpwi r3, 0
/* 80950480  41 82 00 0C */	beq lbl_8095048C
/* 80950484  38 03 FF FF */	addi r0, r3, -1
/* 80950488  B0 1D 06 0E */	sth r0, 0x60e(r29)
lbl_8095048C:
/* 8095048C  88 7D 09 E4 */	lbz r3, 0x9e4(r29)
/* 80950490  7C 60 07 75 */	extsb. r0, r3
/* 80950494  41 82 00 0C */	beq lbl_809504A0
/* 80950498  38 03 FF FF */	addi r0, r3, -1
/* 8095049C  98 1D 09 E4 */	stb r0, 0x9e4(r29)
lbl_809504A0:
/* 809504A0  7F A3 EB 78 */	mr r3, r29
/* 809504A4  4B FF F1 35 */	bl action__FP8ni_class
/* 809504A8  80 7D 05 E8 */	lwz r3, 0x5e8(r29)
/* 809504AC  83 C3 00 04 */	lwz r30, 4(r3)
/* 809504B0  88 1D 0B 08 */	lbz r0, 0xb08(r29)
/* 809504B4  28 00 00 00 */	cmplwi r0, 0
/* 809504B8  41 82 00 1C */	beq lbl_809504D4
/* 809504BC  88 1D 04 9A */	lbz r0, 0x49a(r29)
/* 809504C0  60 00 00 80 */	ori r0, r0, 0x80
/* 809504C4  98 1D 04 9A */	stb r0, 0x49a(r29)
/* 809504C8  38 00 00 00 */	li r0, 0
/* 809504CC  98 1D 0B 08 */	stb r0, 0xb08(r29)
/* 809504D0  48 00 00 78 */	b lbl_80950548
lbl_809504D4:
/* 809504D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809504D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809504DC  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 809504E0  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 809504E4  C0 1D 05 D8 */	lfs f0, 0x5d8(r29)
/* 809504E8  EC 42 00 2A */	fadds f2, f2, f0
/* 809504EC  C0 7D 04 D8 */	lfs f3, 0x4d8(r29)
/* 809504F0  4B 9F 63 F9 */	bl PSMTXTrans
/* 809504F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809504F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809504FC  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80950500  A8 1D 09 EC */	lha r0, 0x9ec(r29)
/* 80950504  7C 04 02 14 */	add r0, r4, r0
/* 80950508  7C 04 07 34 */	extsh r4, r0
/* 8095050C  4B 6B BF 29 */	bl mDoMtx_YrotM__FPA4_fs
/* 80950510  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80950514  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80950518  A8 9D 04 E8 */	lha r4, 0x4e8(r29)
/* 8095051C  4B 6B BF B1 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80950520  3C 60 80 95 */	lis r3, l_HIO@ha /* 0x8095159C@ha */
/* 80950524  38 63 15 9C */	addi r3, r3, l_HIO@l /* 0x8095159C@l */
/* 80950528  C0 23 00 08 */	lfs f1, 8(r3)
/* 8095052C  FC 40 08 90 */	fmr f2, f1
/* 80950530  FC 60 08 90 */	fmr f3, f1
/* 80950534  4B 6B C9 05 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80950538  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8095053C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80950540  38 9E 00 24 */	addi r4, r30, 0x24
/* 80950544  4B 9F 5F 6D */	bl PSMTXCopy
lbl_80950548:
/* 80950548  80 7D 05 E8 */	lwz r3, 0x5e8(r29)
/* 8095054C  38 9D 05 38 */	addi r4, r29, 0x538
/* 80950550  38 A0 00 00 */	li r5, 0
/* 80950554  38 C0 00 00 */	li r6, 0
/* 80950558  4B 6C 00 71 */	bl play__14mDoExt_McaMorfFP3VecUlSc
/* 8095055C  88 1D 05 F0 */	lbz r0, 0x5f0(r29)
/* 80950560  7C 00 07 74 */	extsb r0, r0
/* 80950564  C8 3F 00 40 */	lfd f1, 0x40(r31)
/* 80950568  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8095056C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80950570  3C 00 43 30 */	lis r0, 0x4330
/* 80950574  90 01 00 40 */	stw r0, 0x40(r1)
/* 80950578  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 8095057C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80950580  80 7D 05 EC */	lwz r3, 0x5ec(r29)
/* 80950584  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80950588  80 7D 05 E8 */	lwz r3, 0x5e8(r29)
/* 8095058C  4B 6C 01 21 */	bl modelCalc__14mDoExt_McaMorfFv
/* 80950590  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80950594  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80950598  38 63 00 F0 */	addi r3, r3, 0xf0
/* 8095059C  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 809505A0  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 809505A4  80 84 00 00 */	lwz r4, 0(r4)
/* 809505A8  4B 9F 5F 09 */	bl PSMTXCopy
/* 809505AC  38 61 00 34 */	addi r3, r1, 0x34
/* 809505B0  38 9D 05 38 */	addi r4, r29, 0x538
/* 809505B4  4B 92 09 39 */	bl MtxPosition__FP4cXyzP4cXyz
/* 809505B8  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 809505BC  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 809505C0  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 809505C4  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 809505C8  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 809505CC  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 809505D0  C0 3D 05 54 */	lfs f1, 0x554(r29)
/* 809505D4  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 809505D8  EC 01 00 2A */	fadds f0, f1, f0
/* 809505DC  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 809505E0  A8 1D 05 FA */	lha r0, 0x5fa(r29)
/* 809505E4  2C 00 00 0A */	cmpwi r0, 0xa
/* 809505E8  41 82 00 40 */	beq lbl_80950628
/* 809505EC  38 7D 09 AC */	addi r3, r29, 0x9ac
/* 809505F0  38 9D 05 38 */	addi r4, r29, 0x538
/* 809505F4  4B 91 F0 55 */	bl SetC__8cM3dGSphFRC4cXyz
/* 809505F8  38 7D 09 AC */	addi r3, r29, 0x9ac
/* 809505FC  C0 3F 01 3C */	lfs f1, 0x13c(r31)
/* 80950600  3C 80 80 95 */	lis r4, l_HIO@ha /* 0x8095159C@ha */
/* 80950604  38 84 15 9C */	addi r4, r4, l_HIO@l /* 0x8095159C@l */
/* 80950608  C0 04 00 08 */	lfs f0, 8(r4)
/* 8095060C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80950610  4B 91 F0 F9 */	bl SetR__8cM3dGSphFf
/* 80950614  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80950618  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8095061C  38 63 23 3C */	addi r3, r3, 0x233c
/* 80950620  38 9D 08 88 */	addi r4, r29, 0x888
/* 80950624  4B 91 45 85 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80950628:
/* 80950628  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8095062C  7C 03 07 74 */	extsb r3, r0
/* 80950630  4B 6D CA 3D */	bl dComIfGp_getReverb__Fi
/* 80950634  7C 65 1B 78 */	mr r5, r3
/* 80950638  38 7D 0A 28 */	addi r3, r29, 0xa28
/* 8095063C  38 80 00 00 */	li r4, 0
/* 80950640  81 9D 0A 38 */	lwz r12, 0xa38(r29)
/* 80950644  81 8C 00 08 */	lwz r12, 8(r12)
/* 80950648  7D 89 03 A6 */	mtctr r12
/* 8095064C  4E 80 04 21 */	bctrl 
/* 80950650  80 1D 05 F4 */	lwz r0, 0x5f4(r29)
/* 80950654  2C 00 00 09 */	cmpwi r0, 9
/* 80950658  41 82 00 14 */	beq lbl_8095066C
/* 8095065C  2C 00 00 06 */	cmpwi r0, 6
/* 80950660  41 82 00 0C */	beq lbl_8095066C
/* 80950664  2C 00 00 05 */	cmpwi r0, 5
/* 80950668  40 82 01 1C */	bne lbl_80950784
lbl_8095066C:
/* 8095066C  80 7D 05 E8 */	lwz r3, 0x5e8(r29)
/* 80950670  38 63 00 0C */	addi r3, r3, 0xc
/* 80950674  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80950678  4B 9D 7D B5 */	bl checkPass__12J3DFrameCtrlFf
/* 8095067C  2C 03 00 00 */	cmpwi r3, 0
/* 80950680  40 82 00 94 */	bne lbl_80950714
/* 80950684  80 7D 05 E8 */	lwz r3, 0x5e8(r29)
/* 80950688  38 63 00 0C */	addi r3, r3, 0xc
/* 8095068C  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80950690  4B 9D 7D 9D */	bl checkPass__12J3DFrameCtrlFf
/* 80950694  2C 03 00 00 */	cmpwi r3, 0
/* 80950698  40 82 00 7C */	bne lbl_80950714
/* 8095069C  80 7D 05 E8 */	lwz r3, 0x5e8(r29)
/* 809506A0  38 63 00 0C */	addi r3, r3, 0xc
/* 809506A4  C0 3F 01 40 */	lfs f1, 0x140(r31)
/* 809506A8  4B 9D 7D 85 */	bl checkPass__12J3DFrameCtrlFf
/* 809506AC  2C 03 00 00 */	cmpwi r3, 0
/* 809506B0  40 82 00 64 */	bne lbl_80950714
/* 809506B4  80 7D 05 E8 */	lwz r3, 0x5e8(r29)
/* 809506B8  38 63 00 0C */	addi r3, r3, 0xc
/* 809506BC  C0 3F 01 44 */	lfs f1, 0x144(r31)
/* 809506C0  4B 9D 7D 6D */	bl checkPass__12J3DFrameCtrlFf
/* 809506C4  2C 03 00 00 */	cmpwi r3, 0
/* 809506C8  40 82 00 4C */	bne lbl_80950714
/* 809506CC  80 7D 05 E8 */	lwz r3, 0x5e8(r29)
/* 809506D0  38 63 00 0C */	addi r3, r3, 0xc
/* 809506D4  C0 3F 01 48 */	lfs f1, 0x148(r31)
/* 809506D8  4B 9D 7D 55 */	bl checkPass__12J3DFrameCtrlFf
/* 809506DC  2C 03 00 00 */	cmpwi r3, 0
/* 809506E0  40 82 00 34 */	bne lbl_80950714
/* 809506E4  80 7D 05 E8 */	lwz r3, 0x5e8(r29)
/* 809506E8  38 63 00 0C */	addi r3, r3, 0xc
/* 809506EC  C0 3F 01 4C */	lfs f1, 0x14c(r31)
/* 809506F0  4B 9D 7D 3D */	bl checkPass__12J3DFrameCtrlFf
/* 809506F4  2C 03 00 00 */	cmpwi r3, 0
/* 809506F8  40 82 00 1C */	bne lbl_80950714
/* 809506FC  80 7D 05 E8 */	lwz r3, 0x5e8(r29)
/* 80950700  38 63 00 0C */	addi r3, r3, 0xc
/* 80950704  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 80950708  4B 9D 7D 25 */	bl checkPass__12J3DFrameCtrlFf
/* 8095070C  2C 03 00 00 */	cmpwi r3, 0
/* 80950710  41 82 00 30 */	beq lbl_80950740
lbl_80950714:
/* 80950714  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060005@ha */
/* 80950718  38 03 00 05 */	addi r0, r3, 0x0005 /* 0x00060005@l */
/* 8095071C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80950720  38 7D 0A 28 */	addi r3, r29, 0xa28
/* 80950724  38 81 00 24 */	addi r4, r1, 0x24
/* 80950728  38 A0 00 00 */	li r5, 0
/* 8095072C  38 C0 FF FF */	li r6, -1
/* 80950730  81 9D 0A 38 */	lwz r12, 0xa38(r29)
/* 80950734  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80950738  7D 89 03 A6 */	mtctr r12
/* 8095073C  4E 80 04 21 */	bctrl 
lbl_80950740:
/* 80950740  80 7D 05 E8 */	lwz r3, 0x5e8(r29)
/* 80950744  38 63 00 0C */	addi r3, r3, 0xc
/* 80950748  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8095074C  4B 9D 7C E1 */	bl checkPass__12J3DFrameCtrlFf
/* 80950750  2C 03 00 00 */	cmpwi r3, 0
/* 80950754  41 82 00 30 */	beq lbl_80950784
/* 80950758  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050007@ha */
/* 8095075C  38 03 00 07 */	addi r0, r3, 0x0007 /* 0x00050007@l */
/* 80950760  90 01 00 20 */	stw r0, 0x20(r1)
/* 80950764  38 7D 0A 28 */	addi r3, r29, 0xa28
/* 80950768  38 81 00 20 */	addi r4, r1, 0x20
/* 8095076C  38 A0 00 00 */	li r5, 0
/* 80950770  38 C0 FF FF */	li r6, -1
/* 80950774  81 9D 0A 38 */	lwz r12, 0xa38(r29)
/* 80950778  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8095077C  7D 89 03 A6 */	mtctr r12
/* 80950780  4E 80 04 21 */	bctrl 
lbl_80950784:
/* 80950784  7F A3 EB 78 */	mr r3, r29
/* 80950788  4B FF FB 2D */	bl message__FP8ni_class
/* 8095078C  A8 1D 05 FA */	lha r0, 0x5fa(r29)
/* 80950790  2C 00 00 0F */	cmpwi r0, 0xf
/* 80950794  40 82 00 0C */	bne lbl_809507A0
/* 80950798  7F A3 EB 78 */	mr r3, r29
/* 8095079C  4B FF E5 F5 */	bl play_camera__FP8ni_class
lbl_809507A0:
/* 809507A0  88 1D 05 F0 */	lbz r0, 0x5f0(r29)
/* 809507A4  2C 00 00 03 */	cmpwi r0, 3
/* 809507A8  40 82 00 AC */	bne lbl_80950854
/* 809507AC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 809507B0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 809507B4  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 809507B8  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 809507BC  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 809507C0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 809507C4  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 809507C8  EC 01 00 2A */	fadds f0, f1, f0
/* 809507CC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 809507D0  3B 00 00 00 */	li r24, 0
/* 809507D4  3B C0 00 00 */	li r30, 0
/* 809507D8  3B 80 00 00 */	li r28, 0
/* 809507DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809507E0  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809507E4  3C 60 80 95 */	lis r3, key_eno@ha /* 0x8095143C@ha */
/* 809507E8  3B 63 14 3C */	addi r27, r3, key_eno@l /* 0x8095143C@l */
lbl_809507EC:
/* 809507EC  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 809507F0  38 00 00 FF */	li r0, 0xff
/* 809507F4  90 01 00 08 */	stw r0, 8(r1)
/* 809507F8  38 80 00 00 */	li r4, 0
/* 809507FC  90 81 00 0C */	stw r4, 0xc(r1)
/* 80950800  38 00 FF FF */	li r0, -1
/* 80950804  90 01 00 10 */	stw r0, 0x10(r1)
/* 80950808  90 81 00 14 */	stw r4, 0x14(r1)
/* 8095080C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80950810  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80950814  3B 3C 0A 20 */	addi r25, r28, 0xa20
/* 80950818  7C 9D C8 2E */	lwzx r4, r29, r25
/* 8095081C  38 A0 00 00 */	li r5, 0
/* 80950820  7C DB F2 2E */	lhzx r6, r27, r30
/* 80950824  38 E1 00 28 */	addi r7, r1, 0x28
/* 80950828  39 00 00 00 */	li r8, 0
/* 8095082C  39 20 00 00 */	li r9, 0
/* 80950830  39 40 00 00 */	li r10, 0
/* 80950834  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80950838  4B 6F CC 95 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8095083C  7C 7D C9 2E */	stwx r3, r29, r25
/* 80950840  3B 18 00 01 */	addi r24, r24, 1
/* 80950844  2C 18 00 02 */	cmpwi r24, 2
/* 80950848  3B DE 00 02 */	addi r30, r30, 2
/* 8095084C  3B 9C 00 04 */	addi r28, r28, 4
/* 80950850  41 80 FF 9C */	blt lbl_809507EC
lbl_80950854:
/* 80950854  38 60 00 01 */	li r3, 1
lbl_80950858:
/* 80950858  39 61 00 70 */	addi r11, r1, 0x70
/* 8095085C  4B A1 19 B9 */	bl _restgpr_24
/* 80950860  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80950864  7C 08 03 A6 */	mtlr r0
/* 80950868  38 21 00 70 */	addi r1, r1, 0x70
/* 8095086C  4E 80 00 20 */	blr 
