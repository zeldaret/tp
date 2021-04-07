lbl_80C0CA64:
/* 80C0CA64  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80C0CA68  7C 08 02 A6 */	mflr r0
/* 80C0CA6C  90 01 00 84 */	stw r0, 0x84(r1)
/* 80C0CA70  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 80C0CA74  93 C1 00 78 */	stw r30, 0x78(r1)
/* 80C0CA78  7C 7E 1B 78 */	mr r30, r3
/* 80C0CA7C  3C 60 80 C1 */	lis r3, m__17daObj_GrA_Param_c@ha /* 0x80C0FA7C@ha */
/* 80C0CA80  3B E3 FA 7C */	addi r31, r3, m__17daObj_GrA_Param_c@l /* 0x80C0FA7C@l */
/* 80C0CA84  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 80C0CA88  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80C0CA8C  3C 84 00 01 */	addis r4, r4, 1
/* 80C0CA90  38 04 80 00 */	addi r0, r4, -32768
/* 80C0CA94  7C 04 07 34 */	extsh r4, r0
/* 80C0CA98  38 A0 00 04 */	li r5, 4
/* 80C0CA9C  38 C0 10 00 */	li r6, 0x1000
/* 80C0CAA0  4B 66 3B 69 */	bl cLib_addCalcAngleS2__FPssss
/* 80C0CAA4  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80C0CAA8  B0 1E 09 1C */	sth r0, 0x91c(r30)
/* 80C0CAAC  80 7E 05 98 */	lwz r3, 0x598(r30)
/* 80C0CAB0  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 80C0CAB4  41 82 01 C0 */	beq lbl_80C0CC74
/* 80C0CAB8  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C0CABC  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80C0CAC0  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80C0CAC4  C0 1F 02 10 */	lfs f0, 0x210(r31)
/* 80C0CAC8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80C0CACC  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C0CAD0  4B 40 02 95 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80C0CAD4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C0CAD8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C0CADC  A8 9E 09 1C */	lha r4, 0x91c(r30)
/* 80C0CAE0  4B 3F F9 55 */	bl mDoMtx_YrotM__FPA4_fs
/* 80C0CAE4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C0CAE8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C0CAEC  38 81 00 58 */	addi r4, r1, 0x58
/* 80C0CAF0  38 BE 0B 74 */	addi r5, r30, 0xb74
/* 80C0CAF4  4B 73 A2 79 */	bl PSMTXMultVec
/* 80C0CAF8  A8 1E 09 1A */	lha r0, 0x91a(r30)
/* 80C0CAFC  B0 1E 0B 80 */	sth r0, 0xb80(r30)
/* 80C0CB00  A8 1E 09 1C */	lha r0, 0x91c(r30)
/* 80C0CB04  B0 1E 0B 82 */	sth r0, 0xb82(r30)
/* 80C0CB08  A8 1E 09 1E */	lha r0, 0x91e(r30)
/* 80C0CB0C  B0 1E 0B 84 */	sth r0, 0xb84(r30)
/* 80C0CB10  38 00 00 01 */	li r0, 1
/* 80C0CB14  98 1E 0B 70 */	stb r0, 0xb70(r30)
/* 80C0CB18  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006004B@ha */
/* 80C0CB1C  38 03 00 4B */	addi r0, r3, 0x004B /* 0x0006004B@l */
/* 80C0CB20  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C0CB24  38 7E 07 58 */	addi r3, r30, 0x758
/* 80C0CB28  38 81 00 0C */	addi r4, r1, 0xc
/* 80C0CB2C  38 A0 00 00 */	li r5, 0
/* 80C0CB30  38 C0 FF FF */	li r6, -1
/* 80C0CB34  81 9E 07 58 */	lwz r12, 0x758(r30)
/* 80C0CB38  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80C0CB3C  7D 89 03 A6 */	mtctr r12
/* 80C0CB40  4E 80 04 21 */	bctrl 
/* 80C0CB44  88 1E 20 04 */	lbz r0, 0x2004(r30)
/* 80C0CB48  28 00 00 00 */	cmplwi r0, 0
/* 80C0CB4C  41 82 00 A4 */	beq lbl_80C0CBF0
/* 80C0CB50  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 80C0CB54  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80C0CB58  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 80C0CB5C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80C0CB60  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80C0CB64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C0CB68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C0CB6C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C0CB70  38 80 00 05 */	li r4, 5
/* 80C0CB74  38 A0 00 0F */	li r5, 0xf
/* 80C0CB78  38 C1 00 40 */	addi r6, r1, 0x40
/* 80C0CB7C  4B 46 2E A9 */	bl StartShock__12dVibration_cFii4cXyz
/* 80C0CB80  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C0CB84  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80C0CB88  3C 60 80 C1 */	lis r3, lit_9393@ha /* 0x80C1035C@ha */
/* 80C0CB8C  38 83 03 5C */	addi r4, r3, lit_9393@l /* 0x80C1035C@l */
/* 80C0CB90  80 64 00 00 */	lwz r3, 0(r4)
/* 80C0CB94  80 04 00 04 */	lwz r0, 4(r4)
/* 80C0CB98  90 61 00 34 */	stw r3, 0x34(r1)
/* 80C0CB9C  90 01 00 38 */	stw r0, 0x38(r1)
/* 80C0CBA0  80 04 00 08 */	lwz r0, 8(r4)
/* 80C0CBA4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80C0CBA8  7F C3 F3 78 */	mr r3, r30
/* 80C0CBAC  38 81 00 34 */	addi r4, r1, 0x34
/* 80C0CBB0  4B FF 4D 45 */	bl setProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
/* 80C0CBB4  38 00 00 01 */	li r0, 1
/* 80C0CBB8  98 1E 1F E9 */	stb r0, 0x1fe9(r30)
/* 80C0CBBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C0CBC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C0CBC4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80C0CBC8  88 03 05 6A */	lbz r0, 0x56a(r3)
/* 80C0CBCC  28 00 00 2B */	cmplwi r0, 0x2b
/* 80C0CBD0  40 82 00 0C */	bne lbl_80C0CBDC
/* 80C0CBD4  38 00 00 00 */	li r0, 0
/* 80C0CBD8  98 03 05 6A */	stb r0, 0x56a(r3)
lbl_80C0CBDC:
/* 80C0CBDC  38 00 00 00 */	li r0, 0
/* 80C0CBE0  98 1E 20 04 */	stb r0, 0x2004(r30)
/* 80C0CBE4  C0 1F 03 14 */	lfs f0, 0x314(r31)
/* 80C0CBE8  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80C0CBEC  48 00 01 B8 */	b lbl_80C0CDA4
lbl_80C0CBF0:
/* 80C0CBF0  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 80C0CBF4  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80C0CBF8  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 80C0CBFC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C0CC00  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80C0CC04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C0CC08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C0CC0C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C0CC10  38 80 00 08 */	li r4, 8
/* 80C0CC14  38 A0 00 0F */	li r5, 0xf
/* 80C0CC18  38 C1 00 28 */	addi r6, r1, 0x28
/* 80C0CC1C  4B 46 2E 09 */	bl StartShock__12dVibration_cFii4cXyz
/* 80C0CC20  C0 1F 02 1C */	lfs f0, 0x21c(r31)
/* 80C0CC24  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80C0CC28  38 00 00 01 */	li r0, 1
/* 80C0CC2C  98 1E 20 04 */	stb r0, 0x2004(r30)
/* 80C0CC30  80 7E 07 54 */	lwz r3, 0x754(r30)
/* 80C0CC34  A8 03 00 14 */	lha r0, 0x14(r3)
/* 80C0CC38  C8 3F 01 30 */	lfd f1, 0x130(r31)
/* 80C0CC3C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C0CC40  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80C0CC44  3C 00 43 30 */	lis r0, 0x4330
/* 80C0CC48  90 01 00 68 */	stw r0, 0x68(r1)
/* 80C0CC4C  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 80C0CC50  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C0CC54  FC 00 00 1E */	fctiwz f0, f0
/* 80C0CC58  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 80C0CC5C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80C0CC60  B0 03 00 16 */	sth r0, 0x16(r3)
/* 80C0CC64  C0 1F 03 18 */	lfs f0, 0x318(r31)
/* 80C0CC68  80 7E 07 54 */	lwz r3, 0x754(r30)
/* 80C0CC6C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C0CC70  48 00 01 34 */	b lbl_80C0CDA4
lbl_80C0CC74:
/* 80C0CC74  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 80C0CC78  41 82 01 2C */	beq lbl_80C0CDA4
/* 80C0CC7C  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C0CC80  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80C0CC84  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80C0CC88  C0 1F 02 10 */	lfs f0, 0x210(r31)
/* 80C0CC8C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80C0CC90  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C0CC94  4B 40 00 D1 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80C0CC98  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C0CC9C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C0CCA0  A8 9E 09 1C */	lha r4, 0x91c(r30)
/* 80C0CCA4  4B 3F F7 91 */	bl mDoMtx_YrotM__FPA4_fs
/* 80C0CCA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C0CCAC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C0CCB0  38 81 00 4C */	addi r4, r1, 0x4c
/* 80C0CCB4  38 BE 0B 74 */	addi r5, r30, 0xb74
/* 80C0CCB8  4B 73 A0 B5 */	bl PSMTXMultVec
/* 80C0CCBC  A8 1E 09 1A */	lha r0, 0x91a(r30)
/* 80C0CCC0  B0 1E 0B 80 */	sth r0, 0xb80(r30)
/* 80C0CCC4  A8 1E 09 1C */	lha r0, 0x91c(r30)
/* 80C0CCC8  B0 1E 0B 82 */	sth r0, 0xb82(r30)
/* 80C0CCCC  A8 1E 09 1E */	lha r0, 0x91e(r30)
/* 80C0CCD0  B0 1E 0B 84 */	sth r0, 0xb84(r30)
/* 80C0CCD4  38 00 00 01 */	li r0, 1
/* 80C0CCD8  98 1E 0B 70 */	stb r0, 0xb70(r30)
/* 80C0CCDC  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006004B@ha */
/* 80C0CCE0  38 03 00 4B */	addi r0, r3, 0x004B /* 0x0006004B@l */
/* 80C0CCE4  90 01 00 08 */	stw r0, 8(r1)
/* 80C0CCE8  38 7E 07 58 */	addi r3, r30, 0x758
/* 80C0CCEC  38 81 00 08 */	addi r4, r1, 8
/* 80C0CCF0  38 A0 00 00 */	li r5, 0
/* 80C0CCF4  38 C0 FF FF */	li r6, -1
/* 80C0CCF8  81 9E 07 58 */	lwz r12, 0x758(r30)
/* 80C0CCFC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80C0CD00  7D 89 03 A6 */	mtctr r12
/* 80C0CD04  4E 80 04 21 */	bctrl 
/* 80C0CD08  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 80C0CD0C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80C0CD10  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 80C0CD14  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C0CD18  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80C0CD1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C0CD20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C0CD24  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C0CD28  38 80 00 05 */	li r4, 5
/* 80C0CD2C  38 A0 00 0F */	li r5, 0xf
/* 80C0CD30  38 C1 00 1C */	addi r6, r1, 0x1c
/* 80C0CD34  4B 46 2C F1 */	bl StartShock__12dVibration_cFii4cXyz
/* 80C0CD38  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C0CD3C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80C0CD40  3C 60 80 C1 */	lis r3, lit_9399@ha /* 0x80C10368@ha */
/* 80C0CD44  38 83 03 68 */	addi r4, r3, lit_9399@l /* 0x80C10368@l */
/* 80C0CD48  80 64 00 00 */	lwz r3, 0(r4)
/* 80C0CD4C  80 04 00 04 */	lwz r0, 4(r4)
/* 80C0CD50  90 61 00 10 */	stw r3, 0x10(r1)
/* 80C0CD54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C0CD58  80 04 00 08 */	lwz r0, 8(r4)
/* 80C0CD5C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80C0CD60  7F C3 F3 78 */	mr r3, r30
/* 80C0CD64  38 81 00 10 */	addi r4, r1, 0x10
/* 80C0CD68  4B FF 4B 8D */	bl setProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
/* 80C0CD6C  38 00 00 01 */	li r0, 1
/* 80C0CD70  98 1E 1F E9 */	stb r0, 0x1fe9(r30)
/* 80C0CD74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C0CD78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C0CD7C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80C0CD80  88 03 05 6A */	lbz r0, 0x56a(r3)
/* 80C0CD84  28 00 00 2B */	cmplwi r0, 0x2b
/* 80C0CD88  40 82 00 0C */	bne lbl_80C0CD94
/* 80C0CD8C  38 00 00 00 */	li r0, 0
/* 80C0CD90  98 03 05 6A */	stb r0, 0x56a(r3)
lbl_80C0CD94:
/* 80C0CD94  38 00 00 00 */	li r0, 0
/* 80C0CD98  98 1E 20 04 */	stb r0, 0x2004(r30)
/* 80C0CD9C  C0 1F 03 14 */	lfs f0, 0x314(r31)
/* 80C0CDA0  D0 1E 05 30 */	stfs f0, 0x530(r30)
lbl_80C0CDA4:
/* 80C0CDA4  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 80C0CDA8  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 80C0CDAC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80C0CDB0  7C 08 03 A6 */	mtlr r0
/* 80C0CDB4  38 21 00 80 */	addi r1, r1, 0x80
/* 80C0CDB8  4E 80 00 20 */	blr 
