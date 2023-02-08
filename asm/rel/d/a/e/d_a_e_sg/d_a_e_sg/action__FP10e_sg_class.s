lbl_8078CB14:
/* 8078CB14  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8078CB18  7C 08 02 A6 */	mflr r0
/* 8078CB1C  90 01 00 64 */	stw r0, 0x64(r1)
/* 8078CB20  39 61 00 60 */	addi r11, r1, 0x60
/* 8078CB24  4B BD 56 B1 */	bl _savegpr_27
/* 8078CB28  7C 7D 1B 78 */	mr r29, r3
/* 8078CB2C  3C 80 80 79 */	lis r4, lit_3767@ha /* 0x8078DDA4@ha */
/* 8078CB30  3B E4 DD A4 */	addi r31, r4, lit_3767@l /* 0x8078DDA4@l */
/* 8078CB34  3B C0 00 00 */	li r30, 0
/* 8078CB38  3B 80 00 01 */	li r28, 1
/* 8078CB3C  3B 60 00 00 */	li r27, 0
/* 8078CB40  A8 03 06 6C */	lha r0, 0x66c(r3)
/* 8078CB44  28 00 00 0A */	cmplwi r0, 0xa
/* 8078CB48  41 81 00 6C */	bgt lbl_8078CBB4
/* 8078CB4C  3C 80 80 79 */	lis r4, lit_4810@ha /* 0x8078DF70@ha */
/* 8078CB50  38 84 DF 70 */	addi r4, r4, lit_4810@l /* 0x8078DF70@l */
/* 8078CB54  54 00 10 3A */	slwi r0, r0, 2
/* 8078CB58  7C 04 00 2E */	lwzx r0, r4, r0
/* 8078CB5C  7C 09 03 A6 */	mtctr r0
/* 8078CB60  4E 80 04 20 */	bctr 
lbl_8078CB64:
/* 8078CB64  4B FF DE D9 */	bl e_sg_move__FP10e_sg_class
/* 8078CB68  48 00 00 4C */	b lbl_8078CBB4
lbl_8078CB6C:
/* 8078CB6C  4B FF E5 A9 */	bl e_sg_search__FP10e_sg_class
/* 8078CB70  3B 60 00 01 */	li r27, 1
/* 8078CB74  48 00 00 40 */	b lbl_8078CBB4
lbl_8078CB78:
/* 8078CB78  4B FF F4 F1 */	bl e_sg_kamu__FP10e_sg_class
/* 8078CB7C  3B C0 00 01 */	li r30, 1
/* 8078CB80  3B 80 00 00 */	li r28, 0
/* 8078CB84  3B 60 00 01 */	li r27, 1
/* 8078CB88  48 00 00 2C */	b lbl_8078CBB4
lbl_8078CB8C:
/* 8078CB8C  4B FF F8 E5 */	bl e_sg_drop__FP10e_sg_class
/* 8078CB90  3B C0 00 01 */	li r30, 1
/* 8078CB94  48 00 00 20 */	b lbl_8078CBB4
lbl_8078CB98:
/* 8078CB98  4B FF EA 81 */	bl e_sg_b_search__FP10e_sg_class
/* 8078CB9C  48 00 00 18 */	b lbl_8078CBB4
lbl_8078CBA0:
/* 8078CBA0  4B FF F0 85 */	bl e_sg_esa_search__FP10e_sg_class
/* 8078CBA4  48 00 00 10 */	b lbl_8078CBB4
lbl_8078CBA8:
/* 8078CBA8  4B FF FB D5 */	bl e_sg_damage__FP10e_sg_class
/* 8078CBAC  3B C0 00 01 */	li r30, 1
/* 8078CBB0  3B 80 00 00 */	li r28, 0
lbl_8078CBB4:
/* 8078CBB4  7F 80 07 75 */	extsb. r0, r28
/* 8078CBB8  41 82 00 10 */	beq lbl_8078CBC8
/* 8078CBBC  38 00 00 04 */	li r0, 4
/* 8078CBC0  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 8078CBC4  48 00 00 18 */	b lbl_8078CBDC
lbl_8078CBC8:
/* 8078CBC8  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 8078CBCC  54 00 00 3E */	slwi r0, r0, 0
/* 8078CBD0  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 8078CBD4  38 00 00 00 */	li r0, 0
/* 8078CBD8  90 1D 05 5C */	stw r0, 0x55c(r29)
lbl_8078CBDC:
/* 8078CBDC  7F 60 07 75 */	extsb. r0, r27
/* 8078CBE0  41 82 00 14 */	beq lbl_8078CBF4
/* 8078CBE4  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 8078CBE8  38 80 00 01 */	li r4, 1
/* 8078CBEC  4B B3 4F 91 */	bl setLinkSearch__15Z2CreatureEnemyFb
/* 8078CBF0  48 00 00 10 */	b lbl_8078CC00
lbl_8078CBF4:
/* 8078CBF4  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 8078CBF8  38 80 00 00 */	li r4, 0
/* 8078CBFC  4B B3 4F 81 */	bl setLinkSearch__15Z2CreatureEnemyFb
lbl_8078CC00:
/* 8078CC00  38 7D 06 94 */	addi r3, r29, 0x694
/* 8078CC04  C0 3D 06 98 */	lfs f1, 0x698(r29)
/* 8078CC08  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 8078CC0C  C0 7F 00 58 */	lfs f3, 0x58(r31)
/* 8078CC10  4B AE 2E 2D */	bl cLib_addCalc2__FPffff
/* 8078CC14  38 7D 06 AC */	addi r3, r29, 0x6ac
/* 8078CC18  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 8078CC1C  C0 1D 06 94 */	lfs f0, 0x694(r29)
/* 8078CC20  EC 01 00 32 */	fmuls f0, f1, f0
/* 8078CC24  EC 21 00 2A */	fadds f1, f1, f0
/* 8078CC28  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 8078CC2C  C0 7F 00 98 */	lfs f3, 0x98(r31)
/* 8078CC30  4B AE 2E 0D */	bl cLib_addCalc2__FPffff
/* 8078CC34  C0 5F 00 9C */	lfs f2, 0x9c(r31)
/* 8078CC38  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 8078CC3C  C0 1D 06 94 */	lfs f0, 0x694(r29)
/* 8078CC40  EC 01 00 32 */	fmuls f0, f1, f0
/* 8078CC44  EC 02 00 2A */	fadds f0, f2, f0
/* 8078CC48  FC 00 00 1E */	fctiwz f0, f0
/* 8078CC4C  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8078CC50  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8078CC54  B0 1D 06 9E */	sth r0, 0x69e(r29)
/* 8078CC58  A8 7D 06 9C */	lha r3, 0x69c(r29)
/* 8078CC5C  A8 1D 06 9E */	lha r0, 0x69e(r29)
/* 8078CC60  7C 03 02 14 */	add r0, r3, r0
/* 8078CC64  B0 1D 06 9C */	sth r0, 0x69c(r29)
/* 8078CC68  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 8078CC6C  C0 1D 06 B8 */	lfs f0, 0x6b8(r29)
/* 8078CC70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8078CC74  40 80 00 44 */	bge lbl_8078CCB8
/* 8078CC78  7C 60 07 35 */	extsh. r0, r3
/* 8078CC7C  40 80 00 3C */	bge lbl_8078CCB8
/* 8078CC80  A8 1D 06 9C */	lha r0, 0x69c(r29)
/* 8078CC84  2C 00 00 00 */	cmpwi r0, 0
/* 8078CC88  41 80 00 30 */	blt lbl_8078CCB8
/* 8078CC8C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702C5@ha */
/* 8078CC90  38 03 02 C5 */	addi r0, r3, 0x02C5 /* 0x000702C5@l */
/* 8078CC94  90 01 00 0C */	stw r0, 0xc(r1)
/* 8078CC98  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 8078CC9C  38 81 00 0C */	addi r4, r1, 0xc
/* 8078CCA0  38 A0 00 00 */	li r5, 0
/* 8078CCA4  38 C0 FF FF */	li r6, -1
/* 8078CCA8  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 8078CCAC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8078CCB0  7D 89 03 A6 */	mtctr r12
/* 8078CCB4  4E 80 04 21 */	bctrl 
lbl_8078CCB8:
/* 8078CCB8  80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 8078CCBC  80 1F 00 C8 */	lwz r0, 0xc8(r31)
/* 8078CCC0  90 61 00 28 */	stw r3, 0x28(r1)
/* 8078CCC4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8078CCC8  80 1F 00 CC */	lwz r0, 0xcc(r31)
/* 8078CCCC  90 01 00 30 */	stw r0, 0x30(r1)
/* 8078CCD0  38 60 00 00 */	li r3, 0
/* 8078CCD4  38 80 00 00 */	li r4, 0
/* 8078CCD8  38 A0 00 00 */	li r5, 0
/* 8078CCDC  3C C0 80 44 */	lis r6, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8078CCE0  39 06 9A 20 */	addi r8, r6, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8078CCE4  38 E1 00 28 */	addi r7, r1, 0x28
/* 8078CCE8  38 00 00 03 */	li r0, 3
/* 8078CCEC  7C 09 03 A6 */	mtctr r0
lbl_8078CCF0:
/* 8078CCF0  A8 1D 06 9C */	lha r0, 0x69c(r29)
/* 8078CCF4  7C 00 2A 14 */	add r0, r0, r5
/* 8078CCF8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8078CCFC  7C 48 04 2E */	lfsx f2, r8, r0
/* 8078CD00  7C 27 24 2E */	lfsx f1, r7, r4
/* 8078CD04  C0 1D 06 AC */	lfs f0, 0x6ac(r29)
/* 8078CD08  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8078CD0C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8078CD10  FC 00 00 1E */	fctiwz f0, f0
/* 8078CD14  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8078CD18  80 C1 00 44 */	lwz r6, 0x44(r1)
/* 8078CD1C  38 03 06 A2 */	addi r0, r3, 0x6a2
/* 8078CD20  7C DD 03 2E */	sthx r6, r29, r0
/* 8078CD24  38 63 00 02 */	addi r3, r3, 2
/* 8078CD28  38 84 00 04 */	addi r4, r4, 4
/* 8078CD2C  38 A5 C5 68 */	addi r5, r5, -15000
/* 8078CD30  42 00 FF C0 */	bdnz lbl_8078CCF0
/* 8078CD34  A8 7D 06 9C */	lha r3, 0x69c(r29)
/* 8078CD38  38 03 E4 A8 */	addi r0, r3, -7000
/* 8078CD3C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8078CD40  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8078CD44  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8078CD48  7C 43 04 2E */	lfsx f2, r3, r0
/* 8078CD4C  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 8078CD50  C0 1D 06 AC */	lfs f0, 0x6ac(r29)
/* 8078CD54  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8078CD58  EC 01 00 32 */	fmuls f0, f1, f0
/* 8078CD5C  FC 00 00 1E */	fctiwz f0, f0
/* 8078CD60  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8078CD64  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8078CD68  B0 1D 06 A0 */	sth r0, 0x6a0(r29)
/* 8078CD6C  88 1D 0A 91 */	lbz r0, 0xa91(r29)
/* 8078CD70  7C 00 07 75 */	extsb. r0, r0
/* 8078CD74  41 82 00 28 */	beq lbl_8078CD9C
/* 8078CD78  34 9D 08 F8 */	addic. r4, r29, 0x8f8
/* 8078CD7C  41 82 00 20 */	beq lbl_8078CD9C
/* 8078CD80  38 61 00 10 */	addi r3, r1, 0x10
/* 8078CD84  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 8078CD88  4B AD 9D FD */	bl __ml__4cXyzCFf
/* 8078CD8C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8078CD90  38 81 00 10 */	addi r4, r1, 0x10
/* 8078CD94  7C 65 1B 78 */	mr r5, r3
/* 8078CD98  4B BB A2 F9 */	bl PSVECAdd
lbl_8078CD9C:
/* 8078CD9C  7F C0 07 75 */	extsb. r0, r30
/* 8078CDA0  40 82 01 7C */	bne lbl_8078CF1C
/* 8078CDA4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8078CDA8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8078CDAC  80 63 00 00 */	lwz r3, 0(r3)
/* 8078CDB0  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 8078CDB4  4B 87 F6 29 */	bl mDoMtx_YrotS__FPA4_fs
/* 8078CDB8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8078CDBC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8078CDC0  80 63 00 00 */	lwz r3, 0(r3)
/* 8078CDC4  A8 9D 04 DC */	lha r4, 0x4dc(r29)
/* 8078CDC8  4B 87 F5 D5 */	bl mDoMtx_XrotM__FPA4_fs
/* 8078CDCC  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8078CDD0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8078CDD4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8078CDD8  C0 5D 04 EC */	lfs f2, 0x4ec(r29)
/* 8078CDDC  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 8078CDE0  3C 60 80 79 */	lis r3, l_HIO@ha /* 0x8078E0EC@ha */
/* 8078CDE4  38 63 E0 EC */	addi r3, r3, l_HIO@l /* 0x8078E0EC@l */
/* 8078CDE8  C0 03 00 08 */	lfs f0, 8(r3)
/* 8078CDEC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8078CDF0  EC 02 00 32 */	fmuls f0, f2, f0
/* 8078CDF4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8078CDF8  38 61 00 34 */	addi r3, r1, 0x34
/* 8078CDFC  38 9D 04 F8 */	addi r4, r29, 0x4f8
/* 8078CE00  4B AE 40 ED */	bl MtxPosition__FP4cXyzP4cXyz
/* 8078CE04  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8078CE08  38 9D 04 F8 */	addi r4, r29, 0x4f8
/* 8078CE0C  7C 65 1B 78 */	mr r5, r3
/* 8078CE10  4B BB A2 81 */	bl PSVECAdd
/* 8078CE14  A8 1D 06 6C */	lha r0, 0x66c(r29)
/* 8078CE18  2C 00 00 05 */	cmpwi r0, 5
/* 8078CE1C  40 82 00 D0 */	bne lbl_8078CEEC
/* 8078CE20  80 1D 06 CC */	lwz r0, 0x6cc(r29)
/* 8078CE24  90 01 00 08 */	stw r0, 8(r1)
/* 8078CE28  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 8078CE2C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 8078CE30  38 81 00 08 */	addi r4, r1, 8
/* 8078CE34  4B 88 C9 C5 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8078CE38  7C 7E 1B 78 */	mr r30, r3
/* 8078CE3C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8078CE40  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8078CE44  80 63 00 00 */	lwz r3, 0(r3)
/* 8078CE48  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 8078CE4C  4B 87 F5 91 */	bl mDoMtx_YrotS__FPA4_fs
/* 8078CE50  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8078CE54  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8078CE58  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8078CE5C  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 8078CE60  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 8078CE64  EC 01 00 32 */	fmuls f0, f1, f0
/* 8078CE68  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8078CE6C  38 61 00 34 */	addi r3, r1, 0x34
/* 8078CE70  38 81 00 1C */	addi r4, r1, 0x1c
/* 8078CE74  4B AE 40 79 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8078CE78  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8078CE7C  38 81 00 1C */	addi r4, r1, 0x1c
/* 8078CE80  7C 65 1B 78 */	mr r5, r3
/* 8078CE84  4B BB A2 0D */	bl PSVECAdd
/* 8078CE88  38 7D 04 BC */	addi r3, r29, 0x4bc
/* 8078CE8C  38 81 00 1C */	addi r4, r1, 0x1c
/* 8078CE90  7C 65 1B 78 */	mr r5, r3
/* 8078CE94  4B BB A1 FD */	bl PSVECAdd
/* 8078CE98  38 7D 07 20 */	addi r3, r29, 0x720
/* 8078CE9C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8078CEA0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8078CEA4  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8078CEA8  4B 8E 9C 05 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 8078CEAC  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8078CEB0  38 81 00 1C */	addi r4, r1, 0x1c
/* 8078CEB4  7C 65 1B 78 */	mr r5, r3
/* 8078CEB8  4B BB A1 FD */	bl PSVECSubtract
/* 8078CEBC  38 7D 04 BC */	addi r3, r29, 0x4bc
/* 8078CEC0  38 81 00 1C */	addi r4, r1, 0x1c
/* 8078CEC4  7C 65 1B 78 */	mr r5, r3
/* 8078CEC8  4B BB A1 ED */	bl PSVECSubtract
/* 8078CECC  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 8078CED0  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 8078CED4  C0 1E 05 B8 */	lfs f0, 0x5b8(r30)
/* 8078CED8  EC 01 00 2A */	fadds f0, f1, f0
/* 8078CEDC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8078CEE0  40 81 00 3C */	ble lbl_8078CF1C
/* 8078CEE4  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 8078CEE8  48 00 00 34 */	b lbl_8078CF1C
lbl_8078CEEC:
/* 8078CEEC  38 7D 07 20 */	addi r3, r29, 0x720
/* 8078CEF0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8078CEF4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8078CEF8  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8078CEFC  4B 8E 9B B1 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 8078CF00  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 8078CF04  C0 3D 06 B8 */	lfs f1, 0x6b8(r29)
/* 8078CF08  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8078CF0C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8078CF10  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8078CF14  40 81 00 08 */	ble lbl_8078CF1C
/* 8078CF18  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
lbl_8078CF1C:
/* 8078CF1C  39 61 00 60 */	addi r11, r1, 0x60
/* 8078CF20  4B BD 53 01 */	bl _restgpr_27
/* 8078CF24  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8078CF28  7C 08 03 A6 */	mtlr r0
/* 8078CF2C  38 21 00 60 */	addi r1, r1, 0x60
/* 8078CF30  4E 80 00 20 */	blr 
