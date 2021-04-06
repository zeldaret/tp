lbl_8061F520:
/* 8061F520  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8061F524  7C 08 02 A6 */	mflr r0
/* 8061F528  90 01 00 74 */	stw r0, 0x74(r1)
/* 8061F52C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8061F530  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8061F534  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 8061F538  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 8061F53C  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 8061F540  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 8061F544  39 61 00 40 */	addi r11, r1, 0x40
/* 8061F548  4B D4 2C 95 */	bl _savegpr_29
/* 8061F54C  7C 7E 1B 78 */	mr r30, r3
/* 8061F550  3C 60 80 63 */	lis r3, lit_3920@ha /* 0x8062E634@ha */
/* 8061F554  3B E3 E6 34 */	addi r31, r3, lit_3920@l /* 0x8062E634@l */
/* 8061F558  A0 1E 0A 14 */	lhz r0, 0xa14(r30)
/* 8061F55C  2C 00 00 03 */	cmpwi r0, 3
/* 8061F560  41 82 00 FC */	beq lbl_8061F65C
/* 8061F564  40 80 00 10 */	bge lbl_8061F574
/* 8061F568  2C 00 00 02 */	cmpwi r0, 2
/* 8061F56C  40 80 00 18 */	bge lbl_8061F584
/* 8061F570  48 00 04 54 */	b lbl_8061F9C4
lbl_8061F574:
/* 8061F574  2C 00 00 06 */	cmpwi r0, 6
/* 8061F578  41 82 03 CC */	beq lbl_8061F944
/* 8061F57C  40 80 04 48 */	bge lbl_8061F9C4
/* 8061F580  48 00 02 24 */	b lbl_8061F7A4
lbl_8061F584:
/* 8061F584  80 7E 05 EC */	lwz r3, 0x5ec(r30)
/* 8061F588  38 63 00 24 */	addi r3, r3, 0x24
/* 8061F58C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8061F590  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8061F594  4B D2 6F 1D */	bl PSMTXCopy
/* 8061F598  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8061F59C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8061F5A0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8061F5A4  D0 1E 07 EC */	stfs f0, 0x7ec(r30)
/* 8061F5A8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8061F5AC  D0 1E 07 F0 */	stfs f0, 0x7f0(r30)
/* 8061F5B0  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8061F5B4  D0 1E 07 F4 */	stfs f0, 0x7f4(r30)
/* 8061F5B8  C0 1E 07 EC */	lfs f0, 0x7ec(r30)
/* 8061F5BC  D0 1E 08 AC */	stfs f0, 0x8ac(r30)
/* 8061F5C0  C0 1E 07 F0 */	lfs f0, 0x7f0(r30)
/* 8061F5C4  D0 1E 08 B0 */	stfs f0, 0x8b0(r30)
/* 8061F5C8  C0 1E 07 F4 */	lfs f0, 0x7f4(r30)
/* 8061F5CC  D0 1E 08 B4 */	stfs f0, 0x8b4(r30)
/* 8061F5D0  38 9E 09 E4 */	addi r4, r30, 0x9e4
/* 8061F5D4  4B 9E D6 2D */	bl mDoMtx_MtxToRot__FPA4_CfP5csXyz
/* 8061F5D8  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 8061F5DC  38 03 40 00 */	addi r0, r3, 0x4000
/* 8061F5E0  7C 1D 07 34 */	extsh r29, r0
/* 8061F5E4  38 00 18 00 */	li r0, 0x1800
/* 8061F5E8  B0 1E 0A 5C */	sth r0, 0xa5c(r30)
/* 8061F5EC  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8061F5F0  4B C4 83 65 */	bl cM_rndF__Ff
/* 8061F5F4  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8061F5F8  EC 20 08 2A */	fadds f1, f0, f1
/* 8061F5FC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8061F600  38 03 9A 20 */	addi r0, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8061F604  57 BD 04 38 */	rlwinm r29, r29, 0, 0x10, 0x1c
/* 8061F608  7C 60 EA 14 */	add r3, r0, r29
/* 8061F60C  C0 03 00 04 */	lfs f0, 4(r3)
/* 8061F610  EF C1 00 32 */	fmuls f30, f1, f0
/* 8061F614  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 8061F618  4B C4 83 3D */	bl cM_rndF__Ff
/* 8061F61C  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 8061F620  EF E0 08 2A */	fadds f31, f0, f1
/* 8061F624  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8061F628  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8061F62C  7F A3 EC 2E */	lfsx f29, r3, r29
/* 8061F630  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8061F634  4B C4 83 21 */	bl cM_rndF__Ff
/* 8061F638  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8061F63C  EC 00 08 2A */	fadds f0, f0, f1
/* 8061F640  EC 00 07 72 */	fmuls f0, f0, f29
/* 8061F644  D0 1E 09 6C */	stfs f0, 0x96c(r30)
/* 8061F648  D3 FE 09 70 */	stfs f31, 0x970(r30)
/* 8061F64C  D3 DE 09 74 */	stfs f30, 0x974(r30)
/* 8061F650  38 00 00 03 */	li r0, 3
/* 8061F654  B0 1E 0A 14 */	sth r0, 0xa14(r30)
/* 8061F658  48 00 03 6C */	b lbl_8061F9C4
lbl_8061F65C:
/* 8061F65C  38 7E 26 F0 */	addi r3, r30, 0x26f0
/* 8061F660  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 8061F664  3C 80 80 63 */	lis r4, data_8062EBE8@ha /* 0x8062EBE8@ha */
/* 8061F668  38 84 EB E8 */	addi r4, r4, data_8062EBE8@l /* 0x8062EBE8@l */
/* 8061F66C  C0 04 00 30 */	lfs f0, 0x30(r4)
/* 8061F670  EC 21 00 2A */	fadds f1, f1, f0
/* 8061F674  4B A5 7A A1 */	bl SetGroundUpY__9dBgS_AcchFf
/* 8061F678  38 7E 09 70 */	addi r3, r30, 0x970
/* 8061F67C  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 8061F680  C0 5F 00 54 */	lfs f2, 0x54(r31)
/* 8061F684  4B C5 10 BD */	bl cLib_chaseF__FPfff
/* 8061F688  38 7E 09 E4 */	addi r3, r30, 0x9e4
/* 8061F68C  3C 80 80 63 */	lis r4, data_8062F29C@ha /* 0x8062F29C@ha */
/* 8061F690  38 84 F2 9C */	addi r4, r4, data_8062F29C@l /* 0x8062F29C@l */
/* 8061F694  A8 84 00 48 */	lha r4, 0x48(r4)
/* 8061F698  38 A0 04 00 */	li r5, 0x400
/* 8061F69C  4B C5 14 F5 */	bl cLib_chaseAngleS__FPsss
/* 8061F6A0  38 7E 09 E8 */	addi r3, r30, 0x9e8
/* 8061F6A4  A8 BE 0A 5C */	lha r5, 0xa5c(r30)
/* 8061F6A8  3C 80 80 63 */	lis r4, data_8062F29C@ha /* 0x8062F29C@ha */
/* 8061F6AC  38 84 F2 9C */	addi r4, r4, data_8062F29C@l /* 0x8062F29C@l */
/* 8061F6B0  A8 04 00 4C */	lha r0, 0x4c(r4)
/* 8061F6B4  7C 05 02 14 */	add r0, r5, r0
/* 8061F6B8  7C 04 07 34 */	extsh r4, r0
/* 8061F6BC  38 A0 08 00 */	li r5, 0x800
/* 8061F6C0  4B C5 14 D1 */	bl cLib_chaseAngleS__FPsss
/* 8061F6C4  80 1E 27 1C */	lwz r0, 0x271c(r30)
/* 8061F6C8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8061F6CC  41 82 02 F8 */	beq lbl_8061F9C4
/* 8061F6D0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703B2@ha */
/* 8061F6D4  38 03 03 B2 */	addi r0, r3, 0x03B2 /* 0x000703B2@l */
/* 8061F6D8  90 01 00 08 */	stw r0, 8(r1)
/* 8061F6DC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8061F6E0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8061F6E4  80 63 00 00 */	lwz r3, 0(r3)
/* 8061F6E8  38 81 00 08 */	addi r4, r1, 8
/* 8061F6EC  38 BE 07 EC */	addi r5, r30, 0x7ec
/* 8061F6F0  38 C0 00 00 */	li r6, 0
/* 8061F6F4  38 E0 00 00 */	li r7, 0
/* 8061F6F8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8061F6FC  FC 40 08 90 */	fmr f2, f1
/* 8061F700  C0 7F 00 68 */	lfs f3, 0x68(r31)
/* 8061F704  FC 80 18 90 */	fmr f4, f3
/* 8061F708  39 00 00 00 */	li r8, 0
/* 8061F70C  4B C8 C2 79 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8061F710  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 8061F714  4B C4 82 79 */	bl cM_rndFX__Ff
/* 8061F718  FC 00 08 1E */	fctiwz f0, f1
/* 8061F71C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8061F720  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8061F724  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 8061F728  4B C4 82 2D */	bl cM_rndF__Ff
/* 8061F72C  C0 5F 00 54 */	lfs f2, 0x54(r31)
/* 8061F730  EC 22 08 2A */	fadds f1, f2, f1
/* 8061F734  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8061F738  38 03 9A 20 */	addi r0, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8061F73C  57 BD 04 38 */	rlwinm r29, r29, 0, 0x10, 0x1c
/* 8061F740  7C 60 EA 14 */	add r3, r0, r29
/* 8061F744  C0 03 00 04 */	lfs f0, 4(r3)
/* 8061F748  EF E1 00 32 */	fmuls f31, f1, f0
/* 8061F74C  FC 20 10 90 */	fmr f1, f2
/* 8061F750  4B C4 82 05 */	bl cM_rndF__Ff
/* 8061F754  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 8061F758  EF C0 08 2A */	fadds f30, f0, f1
/* 8061F75C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8061F760  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8061F764  7F A3 EC 2E */	lfsx f29, r3, r29
/* 8061F768  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 8061F76C  4B C4 81 E9 */	bl cM_rndF__Ff
/* 8061F770  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 8061F774  EC 00 08 2A */	fadds f0, f0, f1
/* 8061F778  EC 00 07 72 */	fmuls f0, f0, f29
/* 8061F77C  D0 1E 09 6C */	stfs f0, 0x96c(r30)
/* 8061F780  D3 DE 09 70 */	stfs f30, 0x970(r30)
/* 8061F784  D3 FE 09 74 */	stfs f31, 0x974(r30)
/* 8061F788  38 00 00 04 */	li r0, 4
/* 8061F78C  B0 1E 0A 14 */	sth r0, 0xa14(r30)
/* 8061F790  7F C3 F3 78 */	mr r3, r30
/* 8061F794  38 80 00 0C */	li r4, 0xc
/* 8061F798  38 A0 00 00 */	li r5, 0
/* 8061F79C  4B FF FC 35 */	bl setPartLandEffect__8daB_TN_cFii
/* 8061F7A0  48 00 02 24 */	b lbl_8061F9C4
lbl_8061F7A4:
/* 8061F7A4  A8 1E 0A 5C */	lha r0, 0xa5c(r30)
/* 8061F7A8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8061F7AC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8061F7B0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8061F7B4  7C 43 04 2E */	lfsx f2, r3, r0
/* 8061F7B8  38 7E 26 F0 */	addi r3, r30, 0x26f0
/* 8061F7BC  3C 80 80 63 */	lis r4, data_8062EBE8@ha /* 0x8062EBE8@ha */
/* 8061F7C0  38 84 EB E8 */	addi r4, r4, data_8062EBE8@l /* 0x8062EBE8@l */
/* 8061F7C4  C0 24 00 30 */	lfs f1, 0x30(r4)
/* 8061F7C8  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 8061F7CC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8061F7D0  EC 21 00 2A */	fadds f1, f1, f0
/* 8061F7D4  4B A5 79 41 */	bl SetGroundUpY__9dBgS_AcchFf
/* 8061F7D8  38 7E 09 E4 */	addi r3, r30, 0x9e4
/* 8061F7DC  3C 80 80 63 */	lis r4, data_8062F29C@ha /* 0x8062F29C@ha */
/* 8061F7E0  38 84 F2 9C */	addi r4, r4, data_8062F29C@l /* 0x8062F29C@l */
/* 8061F7E4  A8 84 00 48 */	lha r4, 0x48(r4)
/* 8061F7E8  38 A0 04 00 */	li r5, 0x400
/* 8061F7EC  4B C5 13 A5 */	bl cLib_chaseAngleS__FPsss
/* 8061F7F0  38 7E 09 E8 */	addi r3, r30, 0x9e8
/* 8061F7F4  3C 80 80 63 */	lis r4, data_8062F29C@ha /* 0x8062F29C@ha */
/* 8061F7F8  38 84 F2 9C */	addi r4, r4, data_8062F29C@l /* 0x8062F29C@l */
/* 8061F7FC  A8 84 00 4C */	lha r4, 0x4c(r4)
/* 8061F800  38 A0 04 00 */	li r5, 0x400
/* 8061F804  4B C5 13 8D */	bl cLib_chaseAngleS__FPsss
/* 8061F808  38 7E 0A 5C */	addi r3, r30, 0xa5c
/* 8061F80C  38 80 00 00 */	li r4, 0
/* 8061F810  38 A0 00 60 */	li r5, 0x60
/* 8061F814  4B C5 13 7D */	bl cLib_chaseAngleS__FPsss
/* 8061F818  A8 7E 0A 54 */	lha r3, 0xa54(r30)
/* 8061F81C  38 03 18 00 */	addi r0, r3, 0x1800
/* 8061F820  B0 1E 0A 54 */	sth r0, 0xa54(r30)
/* 8061F824  A8 1E 0A 54 */	lha r0, 0xa54(r30)
/* 8061F828  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8061F82C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8061F830  38 A3 9A 20 */	addi r5, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8061F834  7C 45 04 2E */	lfsx f2, r5, r0
/* 8061F838  A8 7E 09 E4 */	lha r3, 0x9e4(r30)
/* 8061F83C  A8 1E 0A 5C */	lha r0, 0xa5c(r30)
/* 8061F840  C8 3F 00 80 */	lfd f1, 0x80(r31)
/* 8061F844  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8061F848  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061F84C  3C 80 43 30 */	lis r4, 0x4330
/* 8061F850  90 81 00 10 */	stw r4, 0x10(r1)
/* 8061F854  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8061F858  EC 00 08 28 */	fsubs f0, f0, f1
/* 8061F85C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8061F860  FC 00 00 1E */	fctiwz f0, f0
/* 8061F864  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8061F868  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8061F86C  7C 03 02 14 */	add r0, r3, r0
/* 8061F870  B0 1E 09 E4 */	sth r0, 0x9e4(r30)
/* 8061F874  A8 1E 0A 54 */	lha r0, 0xa54(r30)
/* 8061F878  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8061F87C  7C 65 02 14 */	add r3, r5, r0
/* 8061F880  C0 43 00 04 */	lfs f2, 4(r3)
/* 8061F884  A8 7E 09 E8 */	lha r3, 0x9e8(r30)
/* 8061F888  A8 1E 0A 5C */	lha r0, 0xa5c(r30)
/* 8061F88C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8061F890  90 01 00 24 */	stw r0, 0x24(r1)
/* 8061F894  90 81 00 20 */	stw r4, 0x20(r1)
/* 8061F898  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8061F89C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8061F8A0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8061F8A4  FC 00 00 1E */	fctiwz f0, f0
/* 8061F8A8  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8061F8AC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8061F8B0  7C 03 02 14 */	add r0, r3, r0
/* 8061F8B4  B0 1E 09 E8 */	sth r0, 0x9e8(r30)
/* 8061F8B8  38 7E 09 70 */	addi r3, r30, 0x970
/* 8061F8BC  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 8061F8C0  C0 5F 00 54 */	lfs f2, 0x54(r31)
/* 8061F8C4  4B C5 0E 7D */	bl cLib_chaseF__FPfff
/* 8061F8C8  A0 1E 0A 14 */	lhz r0, 0xa14(r30)
/* 8061F8CC  28 00 00 04 */	cmplwi r0, 4
/* 8061F8D0  40 82 00 F4 */	bne lbl_8061F9C4
/* 8061F8D4  80 1E 27 1C */	lwz r0, 0x271c(r30)
/* 8061F8D8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8061F8DC  41 82 00 E8 */	beq lbl_8061F9C4
/* 8061F8E0  88 1E 0A A5 */	lbz r0, 0xaa5(r30)
/* 8061F8E4  28 00 00 00 */	cmplwi r0, 0
/* 8061F8E8  40 82 00 38 */	bne lbl_8061F920
/* 8061F8EC  38 00 00 05 */	li r0, 5
/* 8061F8F0  B0 1E 0A 14 */	sth r0, 0xa14(r30)
/* 8061F8F4  38 00 00 00 */	li r0, 0
/* 8061F8F8  B0 1E 0A 54 */	sth r0, 0xa54(r30)
/* 8061F8FC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8061F900  D0 1E 09 6C */	stfs f0, 0x96c(r30)
/* 8061F904  D0 1E 09 70 */	stfs f0, 0x970(r30)
/* 8061F908  D0 1E 09 74 */	stfs f0, 0x974(r30)
/* 8061F90C  7F C3 F3 78 */	mr r3, r30
/* 8061F910  38 80 00 0C */	li r4, 0xc
/* 8061F914  38 A0 00 01 */	li r5, 1
/* 8061F918  4B FF FA B9 */	bl setPartLandEffect__8daB_TN_cFii
/* 8061F91C  48 00 00 A8 */	b lbl_8061F9C4
lbl_8061F920:
/* 8061F920  7F C3 F3 78 */	mr r3, r30
/* 8061F924  38 9E 07 EC */	addi r4, r30, 0x7ec
/* 8061F928  38 A0 00 05 */	li r5, 5
/* 8061F92C  38 C0 00 00 */	li r6, 0
/* 8061F930  38 E0 00 FF */	li r7, 0xff
/* 8061F934  4B 9F D1 A5 */	bl fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 8061F938  38 00 00 07 */	li r0, 7
/* 8061F93C  B0 1E 0A 14 */	sth r0, 0xa14(r30)
/* 8061F940  48 00 00 84 */	b lbl_8061F9C4
lbl_8061F944:
/* 8061F944  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 8061F948  38 03 40 00 */	addi r0, r3, 0x4000
/* 8061F94C  7C 1D 07 34 */	extsh r29, r0
/* 8061F950  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 8061F954  4B C4 80 01 */	bl cM_rndF__Ff
/* 8061F958  C0 5F 00 54 */	lfs f2, 0x54(r31)
/* 8061F95C  EC 22 08 2A */	fadds f1, f2, f1
/* 8061F960  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8061F964  38 03 9A 20 */	addi r0, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8061F968  57 BD 04 38 */	rlwinm r29, r29, 0, 0x10, 0x1c
/* 8061F96C  7C 60 EA 14 */	add r3, r0, r29
/* 8061F970  C0 03 00 04 */	lfs f0, 4(r3)
/* 8061F974  EF E1 00 32 */	fmuls f31, f1, f0
/* 8061F978  FC 20 10 90 */	fmr f1, f2
/* 8061F97C  4B C4 7F D9 */	bl cM_rndF__Ff
/* 8061F980  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 8061F984  EF C0 08 2A */	fadds f30, f0, f1
/* 8061F988  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8061F98C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8061F990  7F A3 EC 2E */	lfsx f29, r3, r29
/* 8061F994  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 8061F998  4B C4 7F BD */	bl cM_rndF__Ff
/* 8061F99C  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 8061F9A0  EC 00 08 2A */	fadds f0, f0, f1
/* 8061F9A4  EC 00 07 72 */	fmuls f0, f0, f29
/* 8061F9A8  D0 1E 09 6C */	stfs f0, 0x96c(r30)
/* 8061F9AC  D3 DE 09 70 */	stfs f30, 0x970(r30)
/* 8061F9B0  D3 FE 09 74 */	stfs f31, 0x974(r30)
/* 8061F9B4  38 00 00 04 */	li r0, 4
/* 8061F9B8  B0 1E 0A 14 */	sth r0, 0xa14(r30)
/* 8061F9BC  38 00 18 00 */	li r0, 0x1800
/* 8061F9C0  B0 1E 0A 5C */	sth r0, 0xa5c(r30)
lbl_8061F9C4:
/* 8061F9C4  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8061F9C8  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8061F9CC  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 8061F9D0  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 8061F9D4  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 8061F9D8  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 8061F9DC  39 61 00 40 */	addi r11, r1, 0x40
/* 8061F9E0  4B D4 28 49 */	bl _restgpr_29
/* 8061F9E4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8061F9E8  7C 08 03 A6 */	mtlr r0
/* 8061F9EC  38 21 00 70 */	addi r1, r1, 0x70
/* 8061F9F0  4E 80 00 20 */	blr 
