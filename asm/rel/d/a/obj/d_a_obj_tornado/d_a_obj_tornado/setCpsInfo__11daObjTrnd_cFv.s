lbl_80D1BC40:
/* 80D1BC40  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80D1BC44  7C 08 02 A6 */	mflr r0
/* 80D1BC48  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D1BC4C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80D1BC50  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80D1BC54  7C 7E 1B 78 */	mr r30, r3
/* 80D1BC58  3C 60 80 D2 */	lis r3, lit_3628@ha /* 0x80D1C354@ha */
/* 80D1BC5C  3B E3 C3 54 */	addi r31, r3, lit_3628@l /* 0x80D1C354@l */
/* 80D1BC60  38 7E 07 04 */	addi r3, r30, 0x704
/* 80D1BC64  C0 3E 07 3C */	lfs f1, 0x73c(r30)
/* 80D1BC68  C0 7F 00 38 */	lfs f3, 0x38(r31)
/* 80D1BC6C  C0 5F 00 3C */	lfs f2, 0x3c(r31)
/* 80D1BC70  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 80D1BC74  EC 02 00 32 */	fmuls f0, f2, f0
/* 80D1BC78  EC 43 00 32 */	fmuls f2, f3, f0
/* 80D1BC7C  4B 55 4A C5 */	bl cLib_chaseF__FPfff
/* 80D1BC80  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80D1BC84  D0 3E 06 F4 */	stfs f1, 0x6f4(r30)
/* 80D1BC88  C0 1E 07 04 */	lfs f0, 0x704(r30)
/* 80D1BC8C  D0 1E 06 F8 */	stfs f0, 0x6f8(r30)
/* 80D1BC90  D0 3E 06 FC */	stfs f1, 0x6fc(r30)
/* 80D1BC94  C0 1E 06 E8 */	lfs f0, 0x6e8(r30)
/* 80D1BC98  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D1BC9C  C0 1E 06 EC */	lfs f0, 0x6ec(r30)
/* 80D1BCA0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80D1BCA4  C0 1E 06 F0 */	lfs f0, 0x6f0(r30)
/* 80D1BCA8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80D1BCAC  38 61 00 18 */	addi r3, r1, 0x18
/* 80D1BCB0  4B 2F 10 B5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80D1BCB4  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80D1BCB8  4B 2F 12 8D */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80D1BCBC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D1BCC0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D1BCC4  38 9E 06 F4 */	addi r4, r30, 0x6f4
/* 80D1BCC8  7C 85 23 78 */	mr r5, r4
/* 80D1BCCC  4B 62 B0 A1 */	bl PSMTXMultVec
/* 80D1BCD0  38 7E 06 C8 */	addi r3, r30, 0x6c8
/* 80D1BCD4  38 9E 06 E8 */	addi r4, r30, 0x6e8
/* 80D1BCD8  4B 55 33 65 */	bl Set__8cM3dGCpsFRC9cM3dGCpsS
/* 80D1BCDC  C0 3E 06 F4 */	lfs f1, 0x6f4(r30)
/* 80D1BCE0  C0 1E 06 E8 */	lfs f0, 0x6e8(r30)
/* 80D1BCE4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80D1BCE8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80D1BCEC  C0 3E 06 F8 */	lfs f1, 0x6f8(r30)
/* 80D1BCF0  C0 1E 06 EC */	lfs f0, 0x6ec(r30)
/* 80D1BCF4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80D1BCF8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80D1BCFC  C0 3E 06 FC */	lfs f1, 0x6fc(r30)
/* 80D1BD00  C0 1E 06 F0 */	lfs f0, 0x6f0(r30)
/* 80D1BD04  EC 01 00 28 */	fsubs f0, f1, f0
/* 80D1BD08  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80D1BD0C  38 61 00 24 */	addi r3, r1, 0x24
/* 80D1BD10  4B 54 B3 9D */	bl isZero__4cXyzCFv
/* 80D1BD14  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D1BD18  40 82 00 14 */	bne lbl_80D1BD2C
/* 80D1BD1C  38 61 00 0C */	addi r3, r1, 0xc
/* 80D1BD20  38 81 00 24 */	addi r4, r1, 0x24
/* 80D1BD24  4B 54 B1 D1 */	bl normalize__4cXyzFv
/* 80D1BD28  48 00 00 20 */	b lbl_80D1BD48
lbl_80D1BD2C:
/* 80D1BD2C  3C 60 80 43 */	lis r3, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 80D1BD30  C4 03 0C F4 */	lfsu f0, Zero__4cXyz@l(r3)  /* 0x80430CF4@l */
/* 80D1BD34  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80D1BD38  C0 03 00 04 */	lfs f0, 4(r3)
/* 80D1BD3C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80D1BD40  C0 03 00 08 */	lfs f0, 8(r3)
/* 80D1BD44  D0 01 00 2C */	stfs f0, 0x2c(r1)
lbl_80D1BD48:
/* 80D1BD48  38 61 00 24 */	addi r3, r1, 0x24
/* 80D1BD4C  7C 64 1B 78 */	mr r4, r3
/* 80D1BD50  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80D1BD54  C0 1E 04 F4 */	lfs f0, 0x4f4(r30)
/* 80D1BD58  EC 21 00 32 */	fmuls f1, f1, f0
/* 80D1BD5C  4B 62 B3 7D */	bl PSVECScale
/* 80D1BD60  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80D1BD64  D0 1E 06 28 */	stfs f0, 0x628(r30)
/* 80D1BD68  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80D1BD6C  D0 1E 06 2C */	stfs f0, 0x62c(r30)
/* 80D1BD70  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80D1BD74  D0 1E 06 30 */	stfs f0, 0x630(r30)
/* 80D1BD78  7F C3 F3 78 */	mr r3, r30
/* 80D1BD7C  4B FF FC B5 */	bl movePntWind__11daObjTrnd_cFv
/* 80D1BD80  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D1BD84  54 00 C7 FF */	rlwinm. r0, r0, 0x18, 0x1f, 0x1f
/* 80D1BD88  40 82 00 64 */	bne lbl_80D1BDEC
/* 80D1BD8C  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 80D1BD90  C0 5E 07 04 */	lfs f2, 0x704(r30)
/* 80D1BD94  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80D1BD98  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 80D1BD9C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D1BDA0  EC 02 00 24 */	fdivs f0, f2, f0
/* 80D1BDA4  EC 23 00 32 */	fmuls f1, f3, f0
/* 80D1BDA8  4B 64 63 05 */	bl __cvt_fp2unsigned
/* 80D1BDAC  7C 66 1B 78 */	mr r6, r3
/* 80D1BDB0  3C 60 00 09 */	lis r3, 0x0009 /* 0x0009002D@ha */
/* 80D1BDB4  38 03 00 2D */	addi r0, r3, 0x002D /* 0x0009002D@l */
/* 80D1BDB8  90 01 00 08 */	stw r0, 8(r1)
/* 80D1BDBC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D1BDC0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D1BDC4  80 63 00 00 */	lwz r3, 0(r3)
/* 80D1BDC8  38 81 00 08 */	addi r4, r1, 8
/* 80D1BDCC  38 A0 00 00 */	li r5, 0
/* 80D1BDD0  38 E0 00 00 */	li r7, 0
/* 80D1BDD4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80D1BDD8  FC 40 08 90 */	fmr f2, f1
/* 80D1BDDC  C0 7F 00 48 */	lfs f3, 0x48(r31)
/* 80D1BDE0  FC 80 18 90 */	fmr f4, f3
/* 80D1BDE4  39 00 00 00 */	li r8, 0
/* 80D1BDE8  4B 59 07 25 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D1BDEC:
/* 80D1BDEC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80D1BDF0  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80D1BDF4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D1BDF8  7C 08 03 A6 */	mtlr r0
/* 80D1BDFC  38 21 00 40 */	addi r1, r1, 0x40
/* 80D1BE00  4E 80 00 20 */	blr 
