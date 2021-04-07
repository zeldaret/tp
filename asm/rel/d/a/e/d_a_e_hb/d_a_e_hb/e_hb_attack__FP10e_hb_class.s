lbl_804FD230:
/* 804FD230  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 804FD234  7C 08 02 A6 */	mflr r0
/* 804FD238  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 804FD23C  39 61 00 B0 */	addi r11, r1, 0xb0
/* 804FD240  4B E6 4F 91 */	bl _savegpr_26
/* 804FD244  7C 7D 1B 78 */	mr r29, r3
/* 804FD248  3C 60 80 50 */	lis r3, lit_3788@ha /* 0x80500B04@ha */
/* 804FD24C  3B C3 0B 04 */	addi r30, r3, lit_3788@l /* 0x80500B04@l */
/* 804FD250  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804FD254  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804FD258  83 9F 5D AC */	lwz r28, 0x5dac(r31)
/* 804FD25C  38 61 00 5C */	addi r3, r1, 0x5c
/* 804FD260  38 9C 05 38 */	addi r4, r28, 0x538
/* 804FD264  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 804FD268  4B D6 98 CD */	bl __mi__4cXyzCFRC3Vec
/* 804FD26C  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 804FD270  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 804FD274  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 804FD278  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 804FD27C  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 804FD280  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 804FD284  EC 21 00 72 */	fmuls f1, f1, f1
/* 804FD288  EC 00 00 32 */	fmuls f0, f0, f0
/* 804FD28C  EC 41 00 2A */	fadds f2, f1, f0
/* 804FD290  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804FD294  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804FD298  40 81 00 0C */	ble lbl_804FD2A4
/* 804FD29C  FC 00 10 34 */	frsqrte f0, f2
/* 804FD2A0  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_804FD2A4:
/* 804FD2A4  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 804FD2A8  4B D6 A3 CD */	bl cM_atan2s__Fff
/* 804FD2AC  7C 7B 07 34 */	extsh r27, r3
/* 804FD2B0  A8 1D 06 6C */	lha r0, 0x66c(r29)
/* 804FD2B4  2C 00 00 03 */	cmpwi r0, 3
/* 804FD2B8  41 82 05 78 */	beq lbl_804FD830
/* 804FD2BC  40 80 00 1C */	bge lbl_804FD2D8
/* 804FD2C0  2C 00 00 01 */	cmpwi r0, 1
/* 804FD2C4  41 82 00 C4 */	beq lbl_804FD388
/* 804FD2C8  40 80 03 B4 */	bge lbl_804FD67C
/* 804FD2CC  2C 00 00 00 */	cmpwi r0, 0
/* 804FD2D0  40 80 00 14 */	bge lbl_804FD2E4
/* 804FD2D4  48 00 09 00 */	b lbl_804FDBD4
lbl_804FD2D8:
/* 804FD2D8  2C 00 00 05 */	cmpwi r0, 5
/* 804FD2DC  41 82 05 74 */	beq lbl_804FD850
/* 804FD2E0  48 00 08 F4 */	b lbl_804FDBD4
lbl_804FD2E4:
/* 804FD2E4  38 00 00 01 */	li r0, 1
/* 804FD2E8  B0 1D 06 6C */	sth r0, 0x66c(r29)
/* 804FD2EC  38 00 00 11 */	li r0, 0x11
/* 804FD2F0  B0 1D 06 98 */	sth r0, 0x698(r29)
/* 804FD2F4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804FD2F8  D0 1D 06 90 */	stfs f0, 0x690(r29)
/* 804FD2FC  38 00 00 00 */	li r0, 0
/* 804FD300  98 1D 0B 0D */	stb r0, 0xb0d(r29)
/* 804FD304  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070080@ha */
/* 804FD308  38 03 00 80 */	addi r0, r3, 0x0080 /* 0x00070080@l */
/* 804FD30C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804FD310  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 804FD314  38 81 00 1C */	addi r4, r1, 0x1c
/* 804FD318  38 A0 00 00 */	li r5, 0
/* 804FD31C  38 C0 FF FF */	li r6, -1
/* 804FD320  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 804FD324  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804FD328  7D 89 03 A6 */	mtctr r12
/* 804FD32C  4E 80 04 21 */	bctrl 
/* 804FD330  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070083@ha */
/* 804FD334  38 03 00 83 */	addi r0, r3, 0x0083 /* 0x00070083@l */
/* 804FD338  90 01 00 18 */	stw r0, 0x18(r1)
/* 804FD33C  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 804FD340  38 81 00 18 */	addi r4, r1, 0x18
/* 804FD344  38 A0 FF FF */	li r5, -1
/* 804FD348  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 804FD34C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804FD350  7D 89 03 A6 */	mtctr r12
/* 804FD354  4E 80 04 21 */	bctrl 
/* 804FD358  7F A3 EB 78 */	mr r3, r29
/* 804FD35C  38 80 00 13 */	li r4, 0x13
/* 804FD360  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 804FD364  38 A0 00 02 */	li r5, 2
/* 804FD368  C0 5E 00 08 */	lfs f2, 8(r30)
/* 804FD36C  4B FF EA F9 */	bl leaf_anm_init__FP10e_hb_classifUcf
/* 804FD370  7F A3 EB 78 */	mr r3, r29
/* 804FD374  38 80 00 06 */	li r4, 6
/* 804FD378  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 804FD37C  38 A0 00 00 */	li r5, 0
/* 804FD380  C0 5E 00 08 */	lfs f2, 8(r30)
/* 804FD384  4B FF EA 35 */	bl anm_init__FP10e_hb_classifUcf
lbl_804FD388:
/* 804FD388  88 1D 08 51 */	lbz r0, 0x851(r29)
/* 804FD38C  7C 00 07 75 */	extsb. r0, r0
/* 804FD390  41 82 00 40 */	beq lbl_804FD3D0
/* 804FD394  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 804FD398  A8 9D 06 84 */	lha r4, 0x684(r29)
/* 804FD39C  3C 84 00 01 */	addis r4, r4, 1
/* 804FD3A0  38 04 80 00 */	addi r0, r4, -32768
/* 804FD3A4  7C 04 07 34 */	extsh r4, r0
/* 804FD3A8  38 A0 00 08 */	li r5, 8
/* 804FD3AC  38 C0 08 00 */	li r6, 0x800
/* 804FD3B0  4B D7 32 59 */	bl cLib_addCalcAngleS2__FPssss
/* 804FD3B4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804FD3B8  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 804FD3BC  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 804FD3C0  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 804FD3C4  C0 1E 00 00 */	lfs f0, 0(r30)
/* 804FD3C8  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 804FD3CC  48 00 00 30 */	b lbl_804FD3FC
lbl_804FD3D0:
/* 804FD3D0  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 804FD3D4  A8 9D 06 84 */	lha r4, 0x684(r29)
/* 804FD3D8  38 A0 00 08 */	li r5, 8
/* 804FD3DC  38 C0 08 00 */	li r6, 0x800
/* 804FD3E0  4B D7 32 29 */	bl cLib_addCalcAngleS2__FPssss
/* 804FD3E4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804FD3E8  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 804FD3EC  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 804FD3F0  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 804FD3F4  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 804FD3F8  D0 01 00 7C */	stfs f0, 0x7c(r1)
lbl_804FD3FC:
/* 804FD3FC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804FD400  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804FD404  80 63 00 00 */	lwz r3, 0(r3)
/* 804FD408  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 804FD40C  4B B0 EF D1 */	bl mDoMtx_YrotS__FPA4_fs
/* 804FD410  38 61 00 74 */	addi r3, r1, 0x74
/* 804FD414  38 81 00 68 */	addi r4, r1, 0x68
/* 804FD418  4B D7 3A D5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804FD41C  38 61 00 50 */	addi r3, r1, 0x50
/* 804FD420  38 9D 04 A8 */	addi r4, r29, 0x4a8
/* 804FD424  38 A1 00 68 */	addi r5, r1, 0x68
/* 804FD428  4B D6 96 BD */	bl __pl__4cXyzCFRC3Vec
/* 804FD42C  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 804FD430  D0 1D 06 74 */	stfs f0, 0x674(r29)
/* 804FD434  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 804FD438  D0 1D 06 78 */	stfs f0, 0x678(r29)
/* 804FD43C  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 804FD440  D0 1D 06 7C */	stfs f0, 0x67c(r29)
/* 804FD444  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 804FD448  C0 3D 06 74 */	lfs f1, 0x674(r29)
/* 804FD44C  C0 5E 00 4C */	lfs f2, 0x4c(r30)
/* 804FD450  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 804FD454  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 804FD458  EC 63 00 32 */	fmuls f3, f3, f0
/* 804FD45C  4B D7 25 E1 */	bl cLib_addCalc2__FPffff
/* 804FD460  38 7D 04 D8 */	addi r3, r29, 0x4d8
/* 804FD464  C0 3D 06 7C */	lfs f1, 0x67c(r29)
/* 804FD468  C0 5E 00 4C */	lfs f2, 0x4c(r30)
/* 804FD46C  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 804FD470  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 804FD474  EC 63 00 32 */	fmuls f3, f3, f0
/* 804FD478  4B D7 25 C5 */	bl cLib_addCalc2__FPffff
/* 804FD47C  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 804FD480  C0 3D 06 78 */	lfs f1, 0x678(r29)
/* 804FD484  C0 5E 00 4C */	lfs f2, 0x4c(r30)
/* 804FD488  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 804FD48C  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 804FD490  EC 63 00 32 */	fmuls f3, f3, f0
/* 804FD494  4B D7 25 A9 */	bl cLib_addCalc2__FPffff
/* 804FD498  38 7D 06 90 */	addi r3, r29, 0x690
/* 804FD49C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 804FD4A0  FC 40 08 90 */	fmr f2, f1
/* 804FD4A4  C0 7E 00 4C */	lfs f3, 0x4c(r30)
/* 804FD4A8  4B D7 25 95 */	bl cLib_addCalc2__FPffff
/* 804FD4AC  A8 1D 06 98 */	lha r0, 0x698(r29)
/* 804FD4B0  2C 00 00 00 */	cmpwi r0, 0
/* 804FD4B4  40 82 07 20 */	bne lbl_804FDBD4
/* 804FD4B8  38 00 00 02 */	li r0, 2
/* 804FD4BC  B0 1D 06 6C */	sth r0, 0x66c(r29)
/* 804FD4C0  38 00 00 0A */	li r0, 0xa
/* 804FD4C4  B0 1D 06 9A */	sth r0, 0x69a(r29)
/* 804FD4C8  88 1D 08 51 */	lbz r0, 0x851(r29)
/* 804FD4CC  7C 00 07 75 */	extsb. r0, r0
/* 804FD4D0  41 82 00 88 */	beq lbl_804FD558
/* 804FD4D4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804FD4D8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804FD4DC  80 63 00 00 */	lwz r3, 0(r3)
/* 804FD4E0  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 804FD4E4  3C 84 00 01 */	addis r4, r4, 1
/* 804FD4E8  38 04 80 00 */	addi r0, r4, -32768
/* 804FD4EC  7C 04 07 34 */	extsh r4, r0
/* 804FD4F0  4B B0 EE ED */	bl mDoMtx_YrotS__FPA4_fs
/* 804FD4F4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804FD4F8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804FD4FC  80 63 00 00 */	lwz r3, 0(r3)
/* 804FD500  7C 1B 00 D0 */	neg r0, r27
/* 804FD504  7C 04 07 34 */	extsh r4, r0
/* 804FD508  4B B0 EE 95 */	bl mDoMtx_XrotM__FPA4_fs
/* 804FD50C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804FD510  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 804FD514  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 804FD518  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 804FD51C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 804FD520  38 61 00 74 */	addi r3, r1, 0x74
/* 804FD524  38 81 00 68 */	addi r4, r1, 0x68
/* 804FD528  4B D7 39 C5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804FD52C  38 61 00 44 */	addi r3, r1, 0x44
/* 804FD530  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 804FD534  38 A1 00 68 */	addi r5, r1, 0x68
/* 804FD538  4B D6 95 AD */	bl __pl__4cXyzCFRC3Vec
/* 804FD53C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 804FD540  D0 1D 06 74 */	stfs f0, 0x674(r29)
/* 804FD544  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 804FD548  D0 1D 06 78 */	stfs f0, 0x678(r29)
/* 804FD54C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 804FD550  D0 1D 06 7C */	stfs f0, 0x67c(r29)
/* 804FD554  48 00 00 78 */	b lbl_804FD5CC
lbl_804FD558:
/* 804FD558  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804FD55C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804FD560  80 63 00 00 */	lwz r3, 0(r3)
/* 804FD564  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 804FD568  4B B0 EE 75 */	bl mDoMtx_YrotS__FPA4_fs
/* 804FD56C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804FD570  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804FD574  80 63 00 00 */	lwz r3, 0(r3)
/* 804FD578  20 1B 08 00 */	subfic r0, r27, 0x800
/* 804FD57C  7C 04 07 34 */	extsh r4, r0
/* 804FD580  4B B0 EE 1D */	bl mDoMtx_XrotM__FPA4_fs
/* 804FD584  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804FD588  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 804FD58C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 804FD590  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 804FD594  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 804FD598  38 61 00 74 */	addi r3, r1, 0x74
/* 804FD59C  38 81 00 68 */	addi r4, r1, 0x68
/* 804FD5A0  4B D7 39 4D */	bl MtxPosition__FP4cXyzP4cXyz
/* 804FD5A4  38 61 00 38 */	addi r3, r1, 0x38
/* 804FD5A8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 804FD5AC  38 A1 00 68 */	addi r5, r1, 0x68
/* 804FD5B0  4B D6 95 35 */	bl __pl__4cXyzCFRC3Vec
/* 804FD5B4  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 804FD5B8  D0 1D 06 74 */	stfs f0, 0x674(r29)
/* 804FD5BC  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 804FD5C0  D0 1D 06 78 */	stfs f0, 0x678(r29)
/* 804FD5C4  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 804FD5C8  D0 1D 06 7C */	stfs f0, 0x67c(r29)
lbl_804FD5CC:
/* 804FD5CC  C0 3D 06 74 */	lfs f1, 0x674(r29)
/* 804FD5D0  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 804FD5D4  EC 01 00 28 */	fsubs f0, f1, f0
/* 804FD5D8  FC 00 02 10 */	fabs f0, f0
/* 804FD5DC  FC 00 00 18 */	frsp f0, f0
/* 804FD5E0  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 804FD5E4  C0 3D 06 78 */	lfs f1, 0x678(r29)
/* 804FD5E8  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 804FD5EC  EC 01 00 28 */	fsubs f0, f1, f0
/* 804FD5F0  FC 00 02 10 */	fabs f0, f0
/* 804FD5F4  FC 00 00 18 */	frsp f0, f0
/* 804FD5F8  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 804FD5FC  C0 3D 06 7C */	lfs f1, 0x67c(r29)
/* 804FD600  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 804FD604  EC 01 00 28 */	fsubs f0, f1, f0
/* 804FD608  FC 00 02 10 */	fabs f0, f0
/* 804FD60C  FC 00 00 18 */	frsp f0, f0
/* 804FD610  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 804FD614  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804FD618  D0 1D 06 90 */	stfs f0, 0x690(r29)
/* 804FD61C  38 7D 09 D4 */	addi r3, r29, 0x9d4
/* 804FD620  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 804FD624  4B B8 74 55 */	bl StartCAt__8dCcD_SphFR4cXyz
/* 804FD628  C0 3E 00 08 */	lfs f1, 8(r30)
/* 804FD62C  4B D6 A3 29 */	bl cM_rndF__Ff
/* 804FD630  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 804FD634  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804FD638  40 80 00 10 */	bge lbl_804FD648
/* 804FD63C  38 00 40 00 */	li r0, 0x4000
/* 804FD640  B0 1D 06 8C */	sth r0, 0x68c(r29)
/* 804FD644  48 00 00 0C */	b lbl_804FD650
lbl_804FD648:
/* 804FD648  38 00 C0 00 */	li r0, -16384
/* 804FD64C  B0 1D 06 8C */	sth r0, 0x68c(r29)
lbl_804FD650:
/* 804FD650  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007015D@ha */
/* 804FD654  38 03 01 5D */	addi r0, r3, 0x015D /* 0x0007015D@l */
/* 804FD658  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FD65C  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 804FD660  38 81 00 14 */	addi r4, r1, 0x14
/* 804FD664  38 A0 FF FF */	li r5, -1
/* 804FD668  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 804FD66C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804FD670  7D 89 03 A6 */	mtctr r12
/* 804FD674  4E 80 04 21 */	bctrl 
/* 804FD678  48 00 05 5C */	b lbl_804FDBD4
lbl_804FD67C:
/* 804FD67C  A8 1D 06 9A */	lha r0, 0x69a(r29)
/* 804FD680  2C 00 00 00 */	cmpwi r0, 0
/* 804FD684  41 82 00 0C */	beq lbl_804FD690
/* 804FD688  38 00 00 01 */	li r0, 1
/* 804FD68C  98 1D 0B 0C */	stb r0, 0xb0c(r29)
lbl_804FD690:
/* 804FD690  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 804FD694  C0 3D 06 74 */	lfs f1, 0x674(r29)
/* 804FD698  C0 5E 00 A4 */	lfs f2, 0xa4(r30)
/* 804FD69C  C0 7D 04 F8 */	lfs f3, 0x4f8(r29)
/* 804FD6A0  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 804FD6A4  EC 63 00 32 */	fmuls f3, f3, f0
/* 804FD6A8  4B D7 23 95 */	bl cLib_addCalc2__FPffff
/* 804FD6AC  38 7D 04 D8 */	addi r3, r29, 0x4d8
/* 804FD6B0  C0 3D 06 7C */	lfs f1, 0x67c(r29)
/* 804FD6B4  C0 5E 00 A4 */	lfs f2, 0xa4(r30)
/* 804FD6B8  C0 7D 05 00 */	lfs f3, 0x500(r29)
/* 804FD6BC  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 804FD6C0  EC 63 00 32 */	fmuls f3, f3, f0
/* 804FD6C4  4B D7 23 79 */	bl cLib_addCalc2__FPffff
/* 804FD6C8  3C 60 80 50 */	lis r3, l_HIO@ha /* 0x80500E70@ha */
/* 804FD6CC  38 63 0E 70 */	addi r3, r3, l_HIO@l /* 0x80500E70@l */
/* 804FD6D0  88 03 00 18 */	lbz r0, 0x18(r3)
/* 804FD6D4  28 00 00 01 */	cmplwi r0, 1
/* 804FD6D8  40 82 00 40 */	bne lbl_804FD718
/* 804FD6DC  38 7D 04 E8 */	addi r3, r29, 0x4e8
/* 804FD6E0  A8 9D 06 8C */	lha r4, 0x68c(r29)
/* 804FD6E4  38 A0 00 02 */	li r5, 2
/* 804FD6E8  38 C0 20 00 */	li r6, 0x2000
/* 804FD6EC  4B D7 2F 1D */	bl cLib_addCalcAngleS2__FPssss
/* 804FD6F0  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 804FD6F4  C0 3D 06 78 */	lfs f1, 0x678(r29)
/* 804FD6F8  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 804FD6FC  EC 21 00 28 */	fsubs f1, f1, f0
/* 804FD700  C0 5E 00 A4 */	lfs f2, 0xa4(r30)
/* 804FD704  C0 7D 04 FC */	lfs f3, 0x4fc(r29)
/* 804FD708  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 804FD70C  EC 63 00 32 */	fmuls f3, f3, f0
/* 804FD710  4B D7 23 2D */	bl cLib_addCalc2__FPffff
/* 804FD714  48 00 00 20 */	b lbl_804FD734
lbl_804FD718:
/* 804FD718  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 804FD71C  C0 3D 06 78 */	lfs f1, 0x678(r29)
/* 804FD720  C0 5E 00 A4 */	lfs f2, 0xa4(r30)
/* 804FD724  C0 7D 04 FC */	lfs f3, 0x4fc(r29)
/* 804FD728  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 804FD72C  EC 63 00 32 */	fmuls f3, f3, f0
/* 804FD730  4B D7 23 0D */	bl cLib_addCalc2__FPffff
lbl_804FD734:
/* 804FD734  38 7D 06 90 */	addi r3, r29, 0x690
/* 804FD738  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 804FD73C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 804FD740  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 804FD744  4B D7 22 F9 */	bl cLib_addCalc2__FPffff
/* 804FD748  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 804FD74C  80 63 05 74 */	lwz r3, 0x574(r3)
/* 804FD750  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 804FD754  40 82 00 98 */	bne lbl_804FD7EC
/* 804FD758  54 60 00 01 */	rlwinm. r0, r3, 0, 0, 0
/* 804FD75C  40 82 00 90 */	bne lbl_804FD7EC
/* 804FD760  38 7D 09 D4 */	addi r3, r29, 0x9d4
/* 804FD764  4B B8 6B 5D */	bl ChkAtHit__12dCcD_GObjInfFv
/* 804FD768  28 03 00 00 */	cmplwi r3, 0
/* 804FD76C  41 82 00 80 */	beq lbl_804FD7EC
/* 804FD770  38 00 00 05 */	li r0, 5
/* 804FD774  B0 1D 06 6C */	sth r0, 0x66c(r29)
/* 804FD778  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 804FD77C  D0 1D 06 90 */	stfs f0, 0x690(r29)
/* 804FD780  7F A3 EB 78 */	mr r3, r29
/* 804FD784  38 80 00 07 */	li r4, 7
/* 804FD788  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 804FD78C  38 A0 00 02 */	li r5, 2
/* 804FD790  C0 5E 00 08 */	lfs f2, 8(r30)
/* 804FD794  4B FF E6 25 */	bl anm_init__FP10e_hb_classifUcf
/* 804FD798  38 00 00 78 */	li r0, 0x78
/* 804FD79C  B0 1D 06 98 */	sth r0, 0x698(r29)
/* 804FD7A0  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 804FD7A4  7F A4 EB 78 */	mr r4, r29
/* 804FD7A8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 804FD7AC  81 8C 01 D0 */	lwz r12, 0x1d0(r12)
/* 804FD7B0  7D 89 03 A6 */	mtctr r12
/* 804FD7B4  4E 80 04 21 */	bctrl 
/* 804FD7B8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 804FD7BC  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 804FD7C0  C0 1E 00 08 */	lfs f0, 8(r30)
/* 804FD7C4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804FD7C8  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 804FD7CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804FD7D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804FD7D4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 804FD7D8  38 80 00 06 */	li r4, 6
/* 804FD7DC  38 A0 00 1F */	li r5, 0x1f
/* 804FD7E0  38 C1 00 2C */	addi r6, r1, 0x2c
/* 804FD7E4  4B B7 22 41 */	bl StartShock__12dVibration_cFii4cXyz
/* 804FD7E8  48 00 03 EC */	b lbl_804FDBD4
lbl_804FD7EC:
/* 804FD7EC  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 804FD7F0  38 80 00 01 */	li r4, 1
/* 804FD7F4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804FD7F8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804FD7FC  40 82 00 18 */	bne lbl_804FD814
/* 804FD800  C0 3E 00 04 */	lfs f1, 4(r30)
/* 804FD804  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804FD808  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804FD80C  41 82 00 08 */	beq lbl_804FD814
/* 804FD810  38 80 00 00 */	li r4, 0
lbl_804FD814:
/* 804FD814  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 804FD818  41 82 03 BC */	beq lbl_804FDBD4
/* 804FD81C  38 00 00 03 */	li r0, 3
/* 804FD820  B0 1D 06 6C */	sth r0, 0x66c(r29)
/* 804FD824  38 00 00 00 */	li r0, 0
/* 804FD828  B0 1D 06 98 */	sth r0, 0x698(r29)
/* 804FD82C  48 00 03 A8 */	b lbl_804FDBD4
lbl_804FD830:
/* 804FD830  A8 1D 06 98 */	lha r0, 0x698(r29)
/* 804FD834  2C 00 00 00 */	cmpwi r0, 0
/* 804FD838  40 82 03 9C */	bne lbl_804FDBD4
/* 804FD83C  38 00 00 03 */	li r0, 3
/* 804FD840  B0 1D 06 6A */	sth r0, 0x66a(r29)
/* 804FD844  38 00 00 00 */	li r0, 0
/* 804FD848  B0 1D 06 6C */	sth r0, 0x66c(r29)
/* 804FD84C  48 00 03 88 */	b lbl_804FDBD4
lbl_804FD850:
/* 804FD850  38 00 00 01 */	li r0, 1
/* 804FD854  98 1D 08 52 */	stb r0, 0x852(r29)
/* 804FD858  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007015E@ha */
/* 804FD85C  38 03 01 5E */	addi r0, r3, 0x015E /* 0x0007015E@l */
/* 804FD860  90 01 00 10 */	stw r0, 0x10(r1)
/* 804FD864  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 804FD868  38 81 00 10 */	addi r4, r1, 0x10
/* 804FD86C  38 A0 FF FF */	li r5, -1
/* 804FD870  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 804FD874  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 804FD878  7D 89 03 A6 */	mtctr r12
/* 804FD87C  4E 80 04 21 */	bctrl 
/* 804FD880  80 1D 08 C8 */	lwz r0, 0x8c8(r29)
/* 804FD884  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 804FD888  90 1D 08 C8 */	stw r0, 0x8c8(r29)
/* 804FD88C  3B 60 00 00 */	li r27, 0
/* 804FD890  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 804FD894  80 03 05 74 */	lwz r0, 0x574(r3)
/* 804FD898  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804FD89C  41 82 02 E8 */	beq lbl_804FDB84
/* 804FD8A0  A8 1D 06 98 */	lha r0, 0x698(r29)
/* 804FD8A4  2C 00 00 1E */	cmpwi r0, 0x1e
/* 804FD8A8  40 82 00 24 */	bne lbl_804FD8CC
/* 804FD8AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804FD8B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804FD8B4  C0 23 5D C0 */	lfs f1, 0x5dc0(r3)
/* 804FD8B8  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 804FD8BC  EC 01 00 2A */	fadds f0, f1, f0
/* 804FD8C0  D0 03 5D C0 */	stfs f0, 0x5dc0(r3)
/* 804FD8C4  38 00 00 00 */	li r0, 0
/* 804FD8C8  98 03 5E B6 */	stb r0, 0x5eb6(r3)
lbl_804FD8CC:
/* 804FD8CC  38 61 00 20 */	addi r3, r1, 0x20
/* 804FD8D0  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 804FD8D4  38 BD 04 A8 */	addi r5, r29, 0x4a8
/* 804FD8D8  4B D6 92 5D */	bl __mi__4cXyzCFRC3Vec
/* 804FD8DC  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 804FD8E0  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 804FD8E4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 804FD8E8  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 804FD8EC  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 804FD8F0  D0 41 00 7C */	stfs f2, 0x7c(r1)
/* 804FD8F4  4B D6 9D 81 */	bl cM_atan2s__Fff
/* 804FD8F8  7C 7A 1B 78 */	mr r26, r3
/* 804FD8FC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804FD900  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 804FD904  38 61 00 74 */	addi r3, r1, 0x74
/* 804FD908  4B E4 98 31 */	bl PSVECSquareMag
/* 804FD90C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804FD910  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804FD914  40 81 00 58 */	ble lbl_804FD96C
/* 804FD918  FC 00 08 34 */	frsqrte f0, f1
/* 804FD91C  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 804FD920  FC 44 00 32 */	fmul f2, f4, f0
/* 804FD924  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 804FD928  FC 00 00 32 */	fmul f0, f0, f0
/* 804FD92C  FC 01 00 32 */	fmul f0, f1, f0
/* 804FD930  FC 03 00 28 */	fsub f0, f3, f0
/* 804FD934  FC 02 00 32 */	fmul f0, f2, f0
/* 804FD938  FC 44 00 32 */	fmul f2, f4, f0
/* 804FD93C  FC 00 00 32 */	fmul f0, f0, f0
/* 804FD940  FC 01 00 32 */	fmul f0, f1, f0
/* 804FD944  FC 03 00 28 */	fsub f0, f3, f0
/* 804FD948  FC 02 00 32 */	fmul f0, f2, f0
/* 804FD94C  FC 44 00 32 */	fmul f2, f4, f0
/* 804FD950  FC 00 00 32 */	fmul f0, f0, f0
/* 804FD954  FC 01 00 32 */	fmul f0, f1, f0
/* 804FD958  FC 03 00 28 */	fsub f0, f3, f0
/* 804FD95C  FC 02 00 32 */	fmul f0, f2, f0
/* 804FD960  FC 21 00 32 */	fmul f1, f1, f0
/* 804FD964  FC 20 08 18 */	frsp f1, f1
/* 804FD968  48 00 00 88 */	b lbl_804FD9F0
lbl_804FD96C:
/* 804FD96C  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 804FD970  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804FD974  40 80 00 10 */	bge lbl_804FD984
/* 804FD978  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804FD97C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804FD980  48 00 00 70 */	b lbl_804FD9F0
lbl_804FD984:
/* 804FD984  D0 21 00 08 */	stfs f1, 8(r1)
/* 804FD988  80 81 00 08 */	lwz r4, 8(r1)
/* 804FD98C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804FD990  3C 00 7F 80 */	lis r0, 0x7f80
/* 804FD994  7C 03 00 00 */	cmpw r3, r0
/* 804FD998  41 82 00 14 */	beq lbl_804FD9AC
/* 804FD99C  40 80 00 40 */	bge lbl_804FD9DC
/* 804FD9A0  2C 03 00 00 */	cmpwi r3, 0
/* 804FD9A4  41 82 00 20 */	beq lbl_804FD9C4
/* 804FD9A8  48 00 00 34 */	b lbl_804FD9DC
lbl_804FD9AC:
/* 804FD9AC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804FD9B0  41 82 00 0C */	beq lbl_804FD9BC
/* 804FD9B4  38 00 00 01 */	li r0, 1
/* 804FD9B8  48 00 00 28 */	b lbl_804FD9E0
lbl_804FD9BC:
/* 804FD9BC  38 00 00 02 */	li r0, 2
/* 804FD9C0  48 00 00 20 */	b lbl_804FD9E0
lbl_804FD9C4:
/* 804FD9C4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804FD9C8  41 82 00 0C */	beq lbl_804FD9D4
/* 804FD9CC  38 00 00 05 */	li r0, 5
/* 804FD9D0  48 00 00 10 */	b lbl_804FD9E0
lbl_804FD9D4:
/* 804FD9D4  38 00 00 03 */	li r0, 3
/* 804FD9D8  48 00 00 08 */	b lbl_804FD9E0
lbl_804FD9DC:
/* 804FD9DC  38 00 00 04 */	li r0, 4
lbl_804FD9E0:
/* 804FD9E0  2C 00 00 01 */	cmpwi r0, 1
/* 804FD9E4  40 82 00 0C */	bne lbl_804FD9F0
/* 804FD9E8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804FD9EC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_804FD9F0:
/* 804FD9F0  C0 7E 00 00 */	lfs f3, 0(r30)
/* 804FD9F4  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 804FD9F8  40 81 00 40 */	ble lbl_804FDA38
/* 804FD9FC  C0 5E 00 4C */	lfs f2, 0x4c(r30)
/* 804FDA00  EC 01 18 28 */	fsubs f0, f1, f3
/* 804FDA04  EC 22 00 32 */	fmuls f1, f2, f0
/* 804FDA08  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 804FDA0C  40 81 00 08 */	ble lbl_804FDA14
/* 804FDA10  FC 20 18 90 */	fmr f1, f3
lbl_804FDA14:
/* 804FDA14  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 804FDA18  3C 9A 00 01 */	addis r4, r26, 1
/* 804FDA1C  38 04 80 00 */	addi r0, r4, -32768
/* 804FDA20  7C 04 07 34 */	extsh r4, r0
/* 804FDA24  38 A0 00 00 */	li r5, 0
/* 804FDA28  81 83 06 28 */	lwz r12, 0x628(r3)
/* 804FDA2C  81 8C 01 20 */	lwz r12, 0x120(r12)
/* 804FDA30  7D 89 03 A6 */	mtctr r12
/* 804FDA34  4E 80 04 21 */	bctrl 
lbl_804FDA38:
/* 804FDA38  88 1D 08 51 */	lbz r0, 0x851(r29)
/* 804FDA3C  7C 00 07 75 */	extsb. r0, r0
/* 804FDA40  40 82 00 C4 */	bne lbl_804FDB04
/* 804FDA44  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804FDA48  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804FDA4C  80 63 00 00 */	lwz r3, 0(r3)
/* 804FDA50  7F 44 D3 78 */	mr r4, r26
/* 804FDA54  4B B0 E9 89 */	bl mDoMtx_YrotS__FPA4_fs
/* 804FDA58  A8 1D 06 68 */	lha r0, 0x668(r29)
/* 804FDA5C  1C 00 2E E0 */	mulli r0, r0, 0x2ee0
/* 804FDA60  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804FDA64  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 804FDA68  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 804FDA6C  7C 43 04 2E */	lfsx f2, r3, r0
/* 804FDA70  38 7D 04 E8 */	addi r3, r29, 0x4e8
/* 804FDA74  A8 1D 06 8C */	lha r0, 0x68c(r29)
/* 804FDA78  C8 3E 00 98 */	lfd f1, 0x98(r30)
/* 804FDA7C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804FDA80  90 01 00 84 */	stw r0, 0x84(r1)
/* 804FDA84  3C 00 43 30 */	lis r0, 0x4330
/* 804FDA88  90 01 00 80 */	stw r0, 0x80(r1)
/* 804FDA8C  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 804FDA90  EC 20 08 28 */	fsubs f1, f0, f1
/* 804FDA94  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 804FDA98  EC 00 00 B2 */	fmuls f0, f0, f2
/* 804FDA9C  EC 01 00 2A */	fadds f0, f1, f0
/* 804FDAA0  FC 00 00 1E */	fctiwz f0, f0
/* 804FDAA4  D8 01 00 88 */	stfd f0, 0x88(r1)
/* 804FDAA8  80 81 00 8C */	lwz r4, 0x8c(r1)
/* 804FDAAC  38 A0 00 02 */	li r5, 2
/* 804FDAB0  38 C0 20 00 */	li r6, 0x2000
/* 804FDAB4  4B D7 2B 55 */	bl cLib_addCalcAngleS2__FPssss
/* 804FDAB8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804FDABC  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 804FDAC0  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 804FDAC4  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 804FDAC8  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 804FDACC  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 804FDAD0  38 61 00 74 */	addi r3, r1, 0x74
/* 804FDAD4  38 9D 06 74 */	addi r4, r29, 0x674
/* 804FDAD8  4B D7 34 15 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804FDADC  38 7D 06 74 */	addi r3, r29, 0x674
/* 804FDAE0  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 804FDAE4  7C 65 1B 78 */	mr r5, r3
/* 804FDAE8  4B E4 95 A9 */	bl PSVECAdd
/* 804FDAEC  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 804FDAF0  7F 44 D3 78 */	mr r4, r26
/* 804FDAF4  38 A0 00 02 */	li r5, 2
/* 804FDAF8  38 C0 10 00 */	li r6, 0x1000
/* 804FDAFC  4B D7 2B 0D */	bl cLib_addCalcAngleS2__FPssss
/* 804FDB00  48 00 00 30 */	b lbl_804FDB30
lbl_804FDB04:
/* 804FDB04  3B 60 C0 00 */	li r27, -16384
/* 804FDB08  C0 1C 05 38 */	lfs f0, 0x538(r28)
/* 804FDB0C  D0 1D 06 74 */	stfs f0, 0x674(r29)
/* 804FDB10  C0 1C 05 3C */	lfs f0, 0x53c(r28)
/* 804FDB14  D0 1D 06 78 */	stfs f0, 0x678(r29)
/* 804FDB18  C0 1C 05 40 */	lfs f0, 0x540(r28)
/* 804FDB1C  D0 1D 06 7C */	stfs f0, 0x67c(r29)
/* 804FDB20  C0 3D 06 78 */	lfs f1, 0x678(r29)
/* 804FDB24  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 804FDB28  EC 01 00 2A */	fadds f0, f1, f0
/* 804FDB2C  D0 1D 06 78 */	stfs f0, 0x678(r29)
lbl_804FDB30:
/* 804FDB30  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 804FDB34  C0 3D 06 74 */	lfs f1, 0x674(r29)
/* 804FDB38  C0 5E 00 08 */	lfs f2, 8(r30)
/* 804FDB3C  C0 7D 06 90 */	lfs f3, 0x690(r29)
/* 804FDB40  4B D7 1E FD */	bl cLib_addCalc2__FPffff
/* 804FDB44  38 7D 04 D8 */	addi r3, r29, 0x4d8
/* 804FDB48  C0 3D 06 7C */	lfs f1, 0x67c(r29)
/* 804FDB4C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 804FDB50  C0 7D 06 90 */	lfs f3, 0x690(r29)
/* 804FDB54  4B D7 1E E9 */	bl cLib_addCalc2__FPffff
/* 804FDB58  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 804FDB5C  C0 3D 06 78 */	lfs f1, 0x678(r29)
/* 804FDB60  C0 5E 00 08 */	lfs f2, 8(r30)
/* 804FDB64  C0 7D 06 90 */	lfs f3, 0x690(r29)
/* 804FDB68  4B D7 1E D5 */	bl cLib_addCalc2__FPffff
/* 804FDB6C  38 7D 06 90 */	addi r3, r29, 0x690
/* 804FDB70  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 804FDB74  C0 5E 00 08 */	lfs f2, 8(r30)
/* 804FDB78  C0 7E 00 3C */	lfs f3, 0x3c(r30)
/* 804FDB7C  4B D7 1E C1 */	bl cLib_addCalc2__FPffff
/* 804FDB80  48 00 00 54 */	b lbl_804FDBD4
lbl_804FDB84:
/* 804FDB84  38 00 00 03 */	li r0, 3
/* 804FDB88  B0 1D 06 6A */	sth r0, 0x66a(r29)
/* 804FDB8C  38 00 FF FF */	li r0, -1
/* 804FDB90  B0 1D 06 6C */	sth r0, 0x66c(r29)
/* 804FDB94  7F A3 EB 78 */	mr r3, r29
/* 804FDB98  38 80 00 10 */	li r4, 0x10
/* 804FDB9C  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 804FDBA0  38 A0 00 00 */	li r5, 0
/* 804FDBA4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 804FDBA8  4B FF E2 11 */	bl anm_init__FP10e_hb_classifUcf
/* 804FDBAC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007015F@ha */
/* 804FDBB0  38 03 01 5F */	addi r0, r3, 0x015F /* 0x0007015F@l */
/* 804FDBB4  90 01 00 0C */	stw r0, 0xc(r1)
/* 804FDBB8  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 804FDBBC  38 81 00 0C */	addi r4, r1, 0xc
/* 804FDBC0  38 A0 FF FF */	li r5, -1
/* 804FDBC4  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 804FDBC8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804FDBCC  7D 89 03 A6 */	mtctr r12
/* 804FDBD0  4E 80 04 21 */	bctrl 
lbl_804FDBD4:
/* 804FDBD4  88 1D 0B 0C */	lbz r0, 0xb0c(r29)
/* 804FDBD8  7C 00 07 75 */	extsb. r0, r0
/* 804FDBDC  41 82 00 50 */	beq lbl_804FDC2C
/* 804FDBE0  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 804FDBE4  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 804FDBE8  EC 00 08 28 */	fsubs f0, f0, f1
/* 804FDBEC  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 804FDBF0  C0 1D 04 C0 */	lfs f0, 0x4c0(r29)
/* 804FDBF4  EC 00 08 28 */	fsubs f0, f0, f1
/* 804FDBF8  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 804FDBFC  38 7D 10 54 */	addi r3, r29, 0x1054
/* 804FDC00  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804FDC04  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804FDC08  38 84 0F 38 */	addi r4, r4, 0xf38
/* 804FDC0C  4B B7 8E A1 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 804FDC10  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 804FDC14  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 804FDC18  EC 00 08 2A */	fadds f0, f0, f1
/* 804FDC1C  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 804FDC20  C0 1D 04 C0 */	lfs f0, 0x4c0(r29)
/* 804FDC24  EC 00 08 2A */	fadds f0, f0, f1
/* 804FDC28  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
lbl_804FDC2C:
/* 804FDC2C  88 1D 08 51 */	lbz r0, 0x851(r29)
/* 804FDC30  7C 00 07 75 */	extsb. r0, r0
/* 804FDC34  41 82 00 2C */	beq lbl_804FDC60
/* 804FDC38  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 804FDC3C  3C 9B 00 01 */	addis r4, r27, 1
/* 804FDC40  38 04 80 00 */	addi r0, r4, -32768
/* 804FDC44  7C 04 07 34 */	extsh r4, r0
/* 804FDC48  38 A0 00 08 */	li r5, 8
/* 804FDC4C  38 C0 04 00 */	li r6, 0x400
/* 804FDC50  4B D7 29 B9 */	bl cLib_addCalcAngleS2__FPssss
/* 804FDC54  38 00 00 01 */	li r0, 1
/* 804FDC58  98 1D 0B 0C */	stb r0, 0xb0c(r29)
/* 804FDC5C  48 00 00 1C */	b lbl_804FDC78
lbl_804FDC60:
/* 804FDC60  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 804FDC64  7C 1B 00 D0 */	neg r0, r27
/* 804FDC68  7C 04 07 34 */	extsh r4, r0
/* 804FDC6C  38 A0 00 08 */	li r5, 8
/* 804FDC70  38 C0 04 00 */	li r6, 0x400
/* 804FDC74  4B D7 29 95 */	bl cLib_addCalcAngleS2__FPssss
lbl_804FDC78:
/* 804FDC78  39 61 00 B0 */	addi r11, r1, 0xb0
/* 804FDC7C  4B E6 45 A1 */	bl _restgpr_26
/* 804FDC80  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 804FDC84  7C 08 03 A6 */	mtlr r0
/* 804FDC88  38 21 00 B0 */	addi r1, r1, 0xb0
/* 804FDC8C  4E 80 00 20 */	blr 
