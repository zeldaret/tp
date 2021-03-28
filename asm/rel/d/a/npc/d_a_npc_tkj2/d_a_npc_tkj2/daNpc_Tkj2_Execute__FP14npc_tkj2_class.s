lbl_80B1376C:
/* 80B1376C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B13770  7C 08 02 A6 */	mflr r0
/* 80B13774  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B13778  39 61 00 40 */	addi r11, r1, 0x40
/* 80B1377C  4B 84 EA 60 */	b _savegpr_29
/* 80B13780  7C 7D 1B 78 */	mr r29, r3
/* 80B13784  3C 60 80 B1 */	lis r3, lit_3648@ha
/* 80B13788  3B E3 42 DC */	addi r31, r3, lit_3648@l
/* 80B1378C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80B13790  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B13794  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B13798  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B1379C  38 60 00 00 */	li r3, 0
/* 80B137A0  38 00 00 04 */	li r0, 4
/* 80B137A4  7C 09 03 A6 */	mtctr r0
lbl_80B137A8:
/* 80B137A8  38 A3 06 10 */	addi r5, r3, 0x610
/* 80B137AC  7C 9D 2A AE */	lhax r4, r29, r5
/* 80B137B0  2C 04 00 00 */	cmpwi r4, 0
/* 80B137B4  41 82 00 0C */	beq lbl_80B137C0
/* 80B137B8  38 04 FF FF */	addi r0, r4, -1
/* 80B137BC  7C 1D 2B 2E */	sthx r0, r29, r5
lbl_80B137C0:
/* 80B137C0  38 63 00 02 */	addi r3, r3, 2
/* 80B137C4  42 00 FF E4 */	bdnz lbl_80B137A8
/* 80B137C8  A8 7D 06 18 */	lha r3, 0x618(r29)
/* 80B137CC  2C 03 00 00 */	cmpwi r3, 0
/* 80B137D0  41 82 00 0C */	beq lbl_80B137DC
/* 80B137D4  38 03 FF FF */	addi r0, r3, -1
/* 80B137D8  B0 1D 06 18 */	sth r0, 0x618(r29)
lbl_80B137DC:
/* 80B137DC  A8 7D 06 1A */	lha r3, 0x61a(r29)
/* 80B137E0  2C 03 00 00 */	cmpwi r3, 0
/* 80B137E4  41 82 00 0C */	beq lbl_80B137F0
/* 80B137E8  38 03 FF FF */	addi r0, r3, -1
/* 80B137EC  B0 1D 06 1A */	sth r0, 0x61a(r29)
lbl_80B137F0:
/* 80B137F0  7F A3 EB 78 */	mr r3, r29
/* 80B137F4  4B FF F6 95 */	bl action__FP14npc_tkj2_class
/* 80B137F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B137FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B13800  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 80B13804  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 80B13808  C0 7D 04 D8 */	lfs f3, 0x4d8(r29)
/* 80B1380C  4B 83 30 DC */	b PSMTXTrans
/* 80B13810  88 1D 06 30 */	lbz r0, 0x630(r29)
/* 80B13814  28 00 00 00 */	cmplwi r0, 0
/* 80B13818  41 82 00 0C */	beq lbl_80B13824
/* 80B1381C  38 7D 05 EC */	addi r3, r29, 0x5ec
/* 80B13820  4B 4F 97 24 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
lbl_80B13824:
/* 80B13824  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 80B13828  4B 4F 97 1C */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80B1382C  3C 60 80 B1 */	lis r3, l_HIO@ha
/* 80B13830  38 63 45 10 */	addi r3, r3, l_HIO@l
/* 80B13834  C0 23 00 08 */	lfs f1, 8(r3)
/* 80B13838  FC 40 08 90 */	fmr f2, f1
/* 80B1383C  FC 60 08 90 */	fmr f3, f1
/* 80B13840  4B 4F 95 F8 */	b scaleM__14mDoMtx_stack_cFfff
/* 80B13844  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 80B13848  83 C3 00 04 */	lwz r30, 4(r3)
/* 80B1384C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B13850  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B13854  38 9E 00 24 */	addi r4, r30, 0x24
/* 80B13858  4B 83 2C 58 */	b PSMTXCopy
/* 80B1385C  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80B13860  7C 03 07 74 */	extsb r3, r0
/* 80B13864  4B 51 98 08 */	b dComIfGp_getReverb__Fi
/* 80B13868  7C 65 1B 78 */	mr r5, r3
/* 80B1386C  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 80B13870  38 80 00 00 */	li r4, 0
/* 80B13874  4B 4F D8 3C */	b play__16mDoExt_McaMorfSOFUlSc
/* 80B13878  80 1D 05 F4 */	lwz r0, 0x5f4(r29)
/* 80B1387C  2C 00 00 06 */	cmpwi r0, 6
/* 80B13880  40 82 00 1C */	bne lbl_80B1389C
/* 80B13884  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 80B13888  38 63 00 0C */	addi r3, r3, 0xc
/* 80B1388C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80B13890  4B 81 4B 9C */	b checkPass__12J3DFrameCtrlFf
/* 80B13894  2C 03 00 00 */	cmpwi r3, 0
/* 80B13898  40 82 00 DC */	bne lbl_80B13974
lbl_80B1389C:
/* 80B1389C  80 1D 05 F4 */	lwz r0, 0x5f4(r29)
/* 80B138A0  2C 00 00 07 */	cmpwi r0, 7
/* 80B138A4  40 82 00 64 */	bne lbl_80B13908
/* 80B138A8  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 80B138AC  38 63 00 0C */	addi r3, r3, 0xc
/* 80B138B0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80B138B4  4B 81 4B 78 */	b checkPass__12J3DFrameCtrlFf
/* 80B138B8  2C 03 00 00 */	cmpwi r3, 0
/* 80B138BC  40 82 00 B8 */	bne lbl_80B13974
/* 80B138C0  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 80B138C4  38 63 00 0C */	addi r3, r3, 0xc
/* 80B138C8  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80B138CC  4B 81 4B 60 */	b checkPass__12J3DFrameCtrlFf
/* 80B138D0  2C 03 00 00 */	cmpwi r3, 0
/* 80B138D4  40 82 00 A0 */	bne lbl_80B13974
/* 80B138D8  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 80B138DC  38 63 00 0C */	addi r3, r3, 0xc
/* 80B138E0  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 80B138E4  4B 81 4B 48 */	b checkPass__12J3DFrameCtrlFf
/* 80B138E8  2C 03 00 00 */	cmpwi r3, 0
/* 80B138EC  40 82 00 88 */	bne lbl_80B13974
/* 80B138F0  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 80B138F4  38 63 00 0C */	addi r3, r3, 0xc
/* 80B138F8  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80B138FC  4B 81 4B 30 */	b checkPass__12J3DFrameCtrlFf
/* 80B13900  2C 03 00 00 */	cmpwi r3, 0
/* 80B13904  40 82 00 70 */	bne lbl_80B13974
lbl_80B13908:
/* 80B13908  80 1D 05 F4 */	lwz r0, 0x5f4(r29)
/* 80B1390C  2C 00 00 09 */	cmpwi r0, 9
/* 80B13910  40 82 00 90 */	bne lbl_80B139A0
/* 80B13914  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 80B13918  38 63 00 0C */	addi r3, r3, 0xc
/* 80B1391C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80B13920  4B 81 4B 0C */	b checkPass__12J3DFrameCtrlFf
/* 80B13924  2C 03 00 00 */	cmpwi r3, 0
/* 80B13928  40 82 00 4C */	bne lbl_80B13974
/* 80B1392C  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 80B13930  38 63 00 0C */	addi r3, r3, 0xc
/* 80B13934  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 80B13938  4B 81 4A F4 */	b checkPass__12J3DFrameCtrlFf
/* 80B1393C  2C 03 00 00 */	cmpwi r3, 0
/* 80B13940  40 82 00 34 */	bne lbl_80B13974
/* 80B13944  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 80B13948  38 63 00 0C */	addi r3, r3, 0xc
/* 80B1394C  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 80B13950  4B 81 4A DC */	b checkPass__12J3DFrameCtrlFf
/* 80B13954  2C 03 00 00 */	cmpwi r3, 0
/* 80B13958  40 82 00 1C */	bne lbl_80B13974
/* 80B1395C  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 80B13960  38 63 00 0C */	addi r3, r3, 0xc
/* 80B13964  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 80B13968  4B 81 4A C4 */	b checkPass__12J3DFrameCtrlFf
/* 80B1396C  2C 03 00 00 */	cmpwi r3, 0
/* 80B13970  41 82 00 30 */	beq lbl_80B139A0
lbl_80B13974:
/* 80B13974  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060043@ha */
/* 80B13978  38 03 00 43 */	addi r0, r3, 0x0043 /* 0x00060043@l */
/* 80B1397C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B13980  38 7D 09 E8 */	addi r3, r29, 0x9e8
/* 80B13984  38 81 00 0C */	addi r4, r1, 0xc
/* 80B13988  38 A0 00 00 */	li r5, 0
/* 80B1398C  38 C0 FF FF */	li r6, -1
/* 80B13990  81 9D 09 E8 */	lwz r12, 0x9e8(r29)
/* 80B13994  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80B13998  7D 89 03 A6 */	mtctr r12
/* 80B1399C  4E 80 04 21 */	bctrl 
lbl_80B139A0:
/* 80B139A0  80 1D 05 F4 */	lwz r0, 0x5f4(r29)
/* 80B139A4  2C 00 00 07 */	cmpwi r0, 7
/* 80B139A8  40 82 00 34 */	bne lbl_80B139DC
/* 80B139AC  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 80B139B0  38 63 00 0C */	addi r3, r3, 0xc
/* 80B139B4  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 80B139B8  4B 81 4A 74 */	b checkPass__12J3DFrameCtrlFf
/* 80B139BC  2C 03 00 00 */	cmpwi r3, 0
/* 80B139C0  40 82 00 58 */	bne lbl_80B13A18
/* 80B139C4  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 80B139C8  38 63 00 0C */	addi r3, r3, 0xc
/* 80B139CC  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80B139D0  4B 81 4A 5C */	b checkPass__12J3DFrameCtrlFf
/* 80B139D4  2C 03 00 00 */	cmpwi r3, 0
/* 80B139D8  40 82 00 40 */	bne lbl_80B13A18
lbl_80B139DC:
/* 80B139DC  80 1D 05 F4 */	lwz r0, 0x5f4(r29)
/* 80B139E0  2C 00 00 0B */	cmpwi r0, 0xb
/* 80B139E4  40 82 00 60 */	bne lbl_80B13A44
/* 80B139E8  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 80B139EC  38 63 00 0C */	addi r3, r3, 0xc
/* 80B139F0  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80B139F4  4B 81 4A 38 */	b checkPass__12J3DFrameCtrlFf
/* 80B139F8  2C 03 00 00 */	cmpwi r3, 0
/* 80B139FC  40 82 00 1C */	bne lbl_80B13A18
/* 80B13A00  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 80B13A04  38 63 00 0C */	addi r3, r3, 0xc
/* 80B13A08  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 80B13A0C  4B 81 4A 20 */	b checkPass__12J3DFrameCtrlFf
/* 80B13A10  2C 03 00 00 */	cmpwi r3, 0
/* 80B13A14  41 82 00 30 */	beq lbl_80B13A44
lbl_80B13A18:
/* 80B13A18  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060019@ha */
/* 80B13A1C  38 03 00 19 */	addi r0, r3, 0x0019 /* 0x00060019@l */
/* 80B13A20  90 01 00 08 */	stw r0, 8(r1)
/* 80B13A24  38 7D 09 E8 */	addi r3, r29, 0x9e8
/* 80B13A28  38 81 00 08 */	addi r4, r1, 8
/* 80B13A2C  38 A0 00 00 */	li r5, 0
/* 80B13A30  38 C0 FF FF */	li r6, -1
/* 80B13A34  81 9D 09 E8 */	lwz r12, 0x9e8(r29)
/* 80B13A38  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80B13A3C  7D 89 03 A6 */	mtctr r12
/* 80B13A40  4E 80 04 21 */	bctrl 
lbl_80B13A44:
/* 80B13A44  C0 1D 05 E0 */	lfs f0, 0x5e0(r29)
/* 80B13A48  80 7D 05 D8 */	lwz r3, 0x5d8(r29)
/* 80B13A4C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80B13A50  C0 1D 05 E4 */	lfs f0, 0x5e4(r29)
/* 80B13A54  80 7D 05 DC */	lwz r3, 0x5dc(r29)
/* 80B13A58  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80B13A5C  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 80B13A60  4B 4F D7 8C */	b modelCalc__16mDoExt_McaMorfSOFv
/* 80B13A64  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80B13A68  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B13A6C  38 63 03 30 */	addi r3, r3, 0x330
/* 80B13A70  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80B13A74  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80B13A78  80 84 00 00 */	lwz r4, 0(r4)
/* 80B13A7C  4B 83 2A 34 */	b PSMTXCopy
/* 80B13A80  38 61 00 1C */	addi r3, r1, 0x1c
/* 80B13A84  38 9D 05 38 */	addi r4, r29, 0x538
/* 80B13A88  4B 75 D4 64 */	b MtxPosition__FP4cXyzP4cXyz
/* 80B13A8C  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 80B13A90  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 80B13A94  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 80B13A98  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 80B13A9C  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 80B13AA0  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 80B13AA4  C0 3D 05 54 */	lfs f1, 0x554(r29)
/* 80B13AA8  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80B13AAC  EC 01 00 2A */	fadds f0, f1, f0
/* 80B13AB0  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 80B13AB4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80B13AB8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B13ABC  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 80B13AC0  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80B13AC4  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80B13AC8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B13ACC  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80B13AD0  3C 60 80 B1 */	lis r3, l_HIO@ha
/* 80B13AD4  3B C3 45 10 */	addi r30, r3, l_HIO@l
/* 80B13AD8  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80B13ADC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B13AE0  EC 02 00 2A */	fadds f0, f2, f0
/* 80B13AE4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B13AE8  38 7D 09 B0 */	addi r3, r29, 0x9b0
/* 80B13AEC  38 81 00 10 */	addi r4, r1, 0x10
/* 80B13AF0  4B 75 BB 58 */	b SetC__8cM3dGSphFRC4cXyz
/* 80B13AF4  38 7D 09 B0 */	addi r3, r29, 0x9b0
/* 80B13AF8  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80B13AFC  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80B13B00  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B13B04  4B 75 BC 04 */	b SetR__8cM3dGSphFf
/* 80B13B08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B13B0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B13B10  38 63 23 3C */	addi r3, r3, 0x233c
/* 80B13B14  38 9D 08 8C */	addi r4, r29, 0x88c
/* 80B13B18  4B 75 10 90 */	b Set__4cCcSFP8cCcD_Obj
/* 80B13B1C  38 60 00 01 */	li r3, 1
/* 80B13B20  39 61 00 40 */	addi r11, r1, 0x40
/* 80B13B24  4B 84 E7 04 */	b _restgpr_29
/* 80B13B28  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B13B2C  7C 08 03 A6 */	mtlr r0
/* 80B13B30  38 21 00 40 */	addi r1, r1, 0x40
/* 80B13B34  4E 80 00 20 */	blr 
