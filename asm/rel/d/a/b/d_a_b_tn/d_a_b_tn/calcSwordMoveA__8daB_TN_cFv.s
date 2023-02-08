lbl_8061F9F4:
/* 8061F9F4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8061F9F8  7C 08 02 A6 */	mflr r0
/* 8061F9FC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8061FA00  39 61 00 30 */	addi r11, r1, 0x30
/* 8061FA04  4B D4 27 D5 */	bl _savegpr_28
/* 8061FA08  7C 7D 1B 78 */	mr r29, r3
/* 8061FA0C  3C 60 80 63 */	lis r3, lit_3920@ha /* 0x8062E634@ha */
/* 8061FA10  3B E3 E6 34 */	addi r31, r3, lit_3920@l /* 0x8062E634@l */
/* 8061FA14  A0 1D 0A 16 */	lhz r0, 0xa16(r29)
/* 8061FA18  2C 00 00 03 */	cmpwi r0, 3
/* 8061FA1C  41 82 01 48 */	beq lbl_8061FB64
/* 8061FA20  40 80 00 10 */	bge lbl_8061FA30
/* 8061FA24  2C 00 00 02 */	cmpwi r0, 2
/* 8061FA28  40 80 00 1C */	bge lbl_8061FA44
/* 8061FA2C  48 00 03 38 */	b lbl_8061FD64
lbl_8061FA30:
/* 8061FA30  2C 00 00 08 */	cmpwi r0, 8
/* 8061FA34  40 80 03 30 */	bge lbl_8061FD64
/* 8061FA38  2C 00 00 05 */	cmpwi r0, 5
/* 8061FA3C  40 80 03 28 */	bge lbl_8061FD64
/* 8061FA40  48 00 02 74 */	b lbl_8061FCB4
lbl_8061FA44:
/* 8061FA44  80 7D 05 F0 */	lwz r3, 0x5f0(r29)
/* 8061FA48  38 63 00 24 */	addi r3, r3, 0x24
/* 8061FA4C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8061FA50  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8061FA54  4B D2 6A 5D */	bl PSMTXCopy
/* 8061FA58  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8061FA5C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8061FA60  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8061FA64  3B DD 07 F8 */	addi r30, r29, 0x7f8
/* 8061FA68  D0 1D 07 F8 */	stfs f0, 0x7f8(r29)
/* 8061FA6C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8061FA70  D0 1D 07 FC */	stfs f0, 0x7fc(r29)
/* 8061FA74  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8061FA78  D0 1D 08 00 */	stfs f0, 0x800(r29)
/* 8061FA7C  C0 1D 07 F8 */	lfs f0, 0x7f8(r29)
/* 8061FA80  D0 1D 08 B8 */	stfs f0, 0x8b8(r29)
/* 8061FA84  C0 1D 07 FC */	lfs f0, 0x7fc(r29)
/* 8061FA88  D0 1D 08 BC */	stfs f0, 0x8bc(r29)
/* 8061FA8C  C0 1D 08 00 */	lfs f0, 0x800(r29)
/* 8061FA90  D0 1D 08 C0 */	stfs f0, 0x8c0(r29)
/* 8061FA94  38 9D 09 EA */	addi r4, r29, 0x9ea
/* 8061FA98  4B 9E D1 69 */	bl mDoMtx_MtxToRot__FPA4_CfP5csXyz
/* 8061FA9C  88 1D 0A A5 */	lbz r0, 0xaa5(r29)
/* 8061FAA0  28 00 00 00 */	cmplwi r0, 0
/* 8061FAA4  40 82 00 1C */	bne lbl_8061FAC0
/* 8061FAA8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8061FAAC  D0 1D 09 78 */	stfs f0, 0x978(r29)
/* 8061FAB0  D0 1D 09 7C */	stfs f0, 0x97c(r29)
/* 8061FAB4  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 8061FAB8  D0 1D 09 80 */	stfs f0, 0x980(r29)
/* 8061FABC  48 00 00 9C */	b lbl_8061FB58
lbl_8061FAC0:
/* 8061FAC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8061FAC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8061FAC8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8061FACC  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8061FAD0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8061FAD4  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 8061FAD8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8061FADC  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8061FAE0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8061FAE4  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 8061FAE8  EC 01 00 2A */	fadds f0, f1, f0
/* 8061FAEC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8061FAF0  7F C3 F3 78 */	mr r3, r30
/* 8061FAF4  38 81 00 10 */	addi r4, r1, 0x10
/* 8061FAF8  4B C5 11 0D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8061FAFC  7C 7C 1B 78 */	mr r28, r3
/* 8061FB00  7F C3 F3 78 */	mr r3, r30
/* 8061FB04  38 81 00 10 */	addi r4, r1, 0x10
/* 8061FB08  4B C5 11 6D */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 8061FB0C  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 8061FB10  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8061FB14  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8061FB18  38 A4 00 04 */	addi r5, r4, 4
/* 8061FB1C  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 8061FB20  7C 05 04 2E */	lfsx f0, r5, r0
/* 8061FB24  EC 01 00 32 */	fmuls f0, f1, f0
/* 8061FB28  FC 00 02 10 */	fabs f0, f0
/* 8061FB2C  FC 60 00 18 */	frsp f3, f0
/* 8061FB30  57 83 04 38 */	rlwinm r3, r28, 0, 0x10, 0x1c
/* 8061FB34  7C 05 1C 2E */	lfsx f0, r5, r3
/* 8061FB38  EC 43 00 32 */	fmuls f2, f3, f0
/* 8061FB3C  7C 04 04 2E */	lfsx f0, r4, r0
/* 8061FB40  EC 21 00 32 */	fmuls f1, f1, f0
/* 8061FB44  7C 04 1C 2E */	lfsx f0, r4, r3
/* 8061FB48  EC 03 00 32 */	fmuls f0, f3, f0
/* 8061FB4C  D0 1D 09 78 */	stfs f0, 0x978(r29)
/* 8061FB50  D0 3D 09 7C */	stfs f1, 0x97c(r29)
/* 8061FB54  D0 5D 09 80 */	stfs f2, 0x980(r29)
lbl_8061FB58:
/* 8061FB58  38 00 00 03 */	li r0, 3
/* 8061FB5C  B0 1D 0A 16 */	sth r0, 0xa16(r29)
/* 8061FB60  48 00 02 04 */	b lbl_8061FD64
lbl_8061FB64:
/* 8061FB64  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703B3@ha */
/* 8061FB68  38 03 03 B3 */	addi r0, r3, 0x03B3 /* 0x000703B3@l */
/* 8061FB6C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8061FB70  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8061FB74  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8061FB78  80 63 00 00 */	lwz r3, 0(r3)
/* 8061FB7C  38 81 00 0C */	addi r4, r1, 0xc
/* 8061FB80  3B DD 07 F8 */	addi r30, r29, 0x7f8
/* 8061FB84  7F C5 F3 78 */	mr r5, r30
/* 8061FB88  38 C0 00 00 */	li r6, 0
/* 8061FB8C  38 E0 00 00 */	li r7, 0
/* 8061FB90  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8061FB94  FC 40 08 90 */	fmr f2, f1
/* 8061FB98  C0 7F 00 68 */	lfs f3, 0x68(r31)
/* 8061FB9C  FC 80 18 90 */	fmr f4, f3
/* 8061FBA0  39 00 00 00 */	li r8, 0
/* 8061FBA4  4B C8 C9 69 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8061FBA8  38 7D 09 7C */	addi r3, r29, 0x97c
/* 8061FBAC  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 8061FBB0  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 8061FBB4  4B C5 0B 8D */	bl cLib_chaseF__FPfff
/* 8061FBB8  38 7D 09 EA */	addi r3, r29, 0x9ea
/* 8061FBBC  3C 80 80 63 */	lis r4, data_8062F29C@ha /* 0x8062F29C@ha */
/* 8061FBC0  38 84 F2 9C */	addi r4, r4, data_8062F29C@l /* 0x8062F29C@l */
/* 8061FBC4  A8 84 00 4E */	lha r4, 0x4e(r4)
/* 8061FBC8  38 A0 08 00 */	li r5, 0x800
/* 8061FBCC  4B C5 0F C5 */	bl cLib_chaseAngleS__FPsss
/* 8061FBD0  A8 7D 09 EC */	lha r3, 0x9ec(r29)
/* 8061FBD4  38 03 E8 00 */	addi r0, r3, -6144
/* 8061FBD8  B0 1D 09 EC */	sth r0, 0x9ec(r29)
/* 8061FBDC  38 7D 09 EE */	addi r3, r29, 0x9ee
/* 8061FBE0  3C 80 80 63 */	lis r4, data_8062F29C@ha /* 0x8062F29C@ha */
/* 8061FBE4  38 84 F2 9C */	addi r4, r4, data_8062F29C@l /* 0x8062F29C@l */
/* 8061FBE8  A8 84 00 52 */	lha r4, 0x52(r4)
/* 8061FBEC  38 A0 08 00 */	li r5, 0x800
/* 8061FBF0  4B C5 0F A1 */	bl cLib_chaseAngleS__FPsss
/* 8061FBF4  80 7D 28 F4 */	lwz r3, 0x28f4(r29)
/* 8061FBF8  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 8061FBFC  40 82 00 0C */	bne lbl_8061FC08
/* 8061FC00  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 8061FC04  41 82 01 60 */	beq lbl_8061FD64
lbl_8061FC08:
/* 8061FC08  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703B4@ha */
/* 8061FC0C  38 03 03 B4 */	addi r0, r3, 0x03B4 /* 0x000703B4@l */
/* 8061FC10  90 01 00 08 */	stw r0, 8(r1)
/* 8061FC14  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8061FC18  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8061FC1C  80 63 00 00 */	lwz r3, 0(r3)
/* 8061FC20  38 81 00 08 */	addi r4, r1, 8
/* 8061FC24  7F C5 F3 78 */	mr r5, r30
/* 8061FC28  38 C0 00 00 */	li r6, 0
/* 8061FC2C  38 E0 00 00 */	li r7, 0
/* 8061FC30  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8061FC34  FC 40 08 90 */	fmr f2, f1
/* 8061FC38  C0 7F 00 68 */	lfs f3, 0x68(r31)
/* 8061FC3C  FC 80 18 90 */	fmr f4, f3
/* 8061FC40  39 00 00 00 */	li r8, 0
/* 8061FC44  4B C8 BD 41 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8061FC48  7F A3 EB 78 */	mr r3, r29
/* 8061FC4C  38 80 00 0D */	li r4, 0xd
/* 8061FC50  38 A0 00 00 */	li r5, 0
/* 8061FC54  4B FF F7 7D */	bl setPartLandEffect__8daB_TN_cFii
/* 8061FC58  88 1D 0A A5 */	lbz r0, 0xaa5(r29)
/* 8061FC5C  28 00 00 01 */	cmplwi r0, 1
/* 8061FC60  40 82 00 30 */	bne lbl_8061FC90
/* 8061FC64  38 00 18 00 */	li r0, 0x1800
/* 8061FC68  B0 1D 09 EC */	sth r0, 0x9ec(r29)
/* 8061FC6C  7F A3 EB 78 */	mr r3, r29
/* 8061FC70  7F C4 F3 78 */	mr r4, r30
/* 8061FC74  38 A0 00 03 */	li r5, 3
/* 8061FC78  38 C0 00 00 */	li r6, 0
/* 8061FC7C  38 E0 00 FF */	li r7, 0xff
/* 8061FC80  4B 9F CE 59 */	bl fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 8061FC84  38 00 00 07 */	li r0, 7
/* 8061FC88  B0 1D 0A 16 */	sth r0, 0xa16(r29)
/* 8061FC8C  48 00 00 D8 */	b lbl_8061FD64
lbl_8061FC90:
/* 8061FC90  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8061FC94  D0 1D 09 78 */	stfs f0, 0x978(r29)
/* 8061FC98  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 8061FC9C  D0 1D 09 7C */	stfs f0, 0x97c(r29)
/* 8061FCA0  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 8061FCA4  D0 1D 09 80 */	stfs f0, 0x980(r29)
/* 8061FCA8  38 00 00 04 */	li r0, 4
/* 8061FCAC  B0 1D 0A 16 */	sth r0, 0xa16(r29)
/* 8061FCB0  48 00 00 B4 */	b lbl_8061FD64
lbl_8061FCB4:
/* 8061FCB4  38 7D 09 7C */	addi r3, r29, 0x97c
/* 8061FCB8  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 8061FCBC  C0 5F 00 54 */	lfs f2, 0x54(r31)
/* 8061FCC0  4B C5 0A 81 */	bl cLib_chaseF__FPfff
/* 8061FCC4  38 7D 09 EA */	addi r3, r29, 0x9ea
/* 8061FCC8  3C 80 80 63 */	lis r4, data_8062F29C@ha /* 0x8062F29C@ha */
/* 8061FCCC  3B 84 F2 9C */	addi r28, r4, data_8062F29C@l /* 0x8062F29C@l */
/* 8061FCD0  A8 9C 00 4E */	lha r4, 0x4e(r28)
/* 8061FCD4  38 A0 08 00 */	li r5, 0x800
/* 8061FCD8  4B C5 0E B9 */	bl cLib_chaseAngleS__FPsss
/* 8061FCDC  A8 7D 09 EC */	lha r3, 0x9ec(r29)
/* 8061FCE0  38 03 F0 00 */	addi r0, r3, -4096
/* 8061FCE4  B0 1D 09 EC */	sth r0, 0x9ec(r29)
/* 8061FCE8  38 7D 09 EE */	addi r3, r29, 0x9ee
/* 8061FCEC  3C 80 80 63 */	lis r4, data_8062F29C@ha /* 0x8062F29C@ha */
/* 8061FCF0  3B C4 F2 9C */	addi r30, r4, data_8062F29C@l /* 0x8062F29C@l */
/* 8061FCF4  A8 9E 00 52 */	lha r4, 0x52(r30)
/* 8061FCF8  38 A0 08 00 */	li r5, 0x800
/* 8061FCFC  4B C5 0E 95 */	bl cLib_chaseAngleS__FPsss
/* 8061FD00  80 7D 28 F4 */	lwz r3, 0x28f4(r29)
/* 8061FD04  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 8061FD08  40 82 00 0C */	bne lbl_8061FD14
/* 8061FD0C  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 8061FD10  41 82 00 54 */	beq lbl_8061FD64
lbl_8061FD14:
/* 8061FD14  A8 1C 00 4E */	lha r0, 0x4e(r28)
/* 8061FD18  B0 1D 09 EA */	sth r0, 0x9ea(r29)
/* 8061FD1C  3C 60 80 63 */	lis r3, data_8062F29C@ha /* 0x8062F29C@ha */
/* 8061FD20  38 63 F2 9C */	addi r3, r3, data_8062F29C@l /* 0x8062F29C@l */
/* 8061FD24  A8 03 00 50 */	lha r0, 0x50(r3)
/* 8061FD28  B0 1D 09 EC */	sth r0, 0x9ec(r29)
/* 8061FD2C  A8 1E 00 52 */	lha r0, 0x52(r30)
/* 8061FD30  B0 1D 09 EE */	sth r0, 0x9ee(r29)
/* 8061FD34  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8061FD38  D0 1D 09 78 */	stfs f0, 0x978(r29)
/* 8061FD3C  D0 1D 09 7C */	stfs f0, 0x97c(r29)
/* 8061FD40  D0 1D 09 80 */	stfs f0, 0x980(r29)
/* 8061FD44  38 00 E8 00 */	li r0, -6144
/* 8061FD48  B0 1D 0A 56 */	sth r0, 0xa56(r29)
/* 8061FD4C  7F A3 EB 78 */	mr r3, r29
/* 8061FD50  38 80 00 0D */	li r4, 0xd
/* 8061FD54  38 A0 00 01 */	li r5, 1
/* 8061FD58  4B FF F6 79 */	bl setPartLandEffect__8daB_TN_cFii
/* 8061FD5C  38 00 00 07 */	li r0, 7
/* 8061FD60  B0 1D 0A 16 */	sth r0, 0xa16(r29)
lbl_8061FD64:
/* 8061FD64  39 61 00 30 */	addi r11, r1, 0x30
/* 8061FD68  4B D4 24 BD */	bl _restgpr_28
/* 8061FD6C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8061FD70  7C 08 03 A6 */	mtlr r0
/* 8061FD74  38 21 00 30 */	addi r1, r1, 0x30
/* 8061FD78  4E 80 00 20 */	blr 
