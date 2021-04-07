lbl_80C0CDBC:
/* 80C0CDBC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C0CDC0  7C 08 02 A6 */	mflr r0
/* 80C0CDC4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C0CDC8  39 61 00 40 */	addi r11, r1, 0x40
/* 80C0CDCC  4B 75 54 11 */	bl _savegpr_29
/* 80C0CDD0  7C 7E 1B 78 */	mr r30, r3
/* 80C0CDD4  3C 60 80 C1 */	lis r3, m__17daObj_GrA_Param_c@ha /* 0x80C0FA7C@ha */
/* 80C0CDD8  3B E3 FA 7C */	addi r31, r3, m__17daObj_GrA_Param_c@l /* 0x80C0FA7C@l */
/* 80C0CDDC  88 1E 20 30 */	lbz r0, 0x2030(r30)
/* 80C0CDE0  28 00 00 00 */	cmplwi r0, 0
/* 80C0CDE4  40 82 01 10 */	bne lbl_80C0CEF4
/* 80C0CDE8  38 00 00 00 */	li r0, 0
/* 80C0CDEC  98 1E 0A 7E */	stb r0, 0xa7e(r30)
/* 80C0CDF0  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C0CDF4  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 80C0CDF8  4B 66 3E 0D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80C0CDFC  B0 7E 04 B6 */	sth r3, 0x4b6(r30)
/* 80C0CE00  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C0CE04  D0 1E 04 A8 */	stfs f0, 0x4a8(r30)
/* 80C0CE08  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C0CE0C  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 80C0CE10  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C0CE14  D0 1E 04 B0 */	stfs f0, 0x4b0(r30)
/* 80C0CE18  80 1E 0F 50 */	lwz r0, 0xf50(r30)
/* 80C0CE1C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80C0CE20  90 1E 0F 50 */	stw r0, 0xf50(r30)
/* 80C0CE24  3C 60 80 C1 */	lis r3, lit_9472@ha /* 0x80C10374@ha */
/* 80C0CE28  38 83 03 74 */	addi r4, r3, lit_9472@l /* 0x80C10374@l */
/* 80C0CE2C  80 64 00 00 */	lwz r3, 0(r4)
/* 80C0CE30  80 04 00 04 */	lwz r0, 4(r4)
/* 80C0CE34  90 61 00 08 */	stw r3, 8(r1)
/* 80C0CE38  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C0CE3C  80 04 00 08 */	lwz r0, 8(r4)
/* 80C0CE40  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C0CE44  7F C3 F3 78 */	mr r3, r30
/* 80C0CE48  38 81 00 08 */	addi r4, r1, 8
/* 80C0CE4C  4B FF 4A A9 */	bl setProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
/* 80C0CE50  38 00 00 01 */	li r0, 1
/* 80C0CE54  90 1E 10 9C */	stw r0, 0x109c(r30)
/* 80C0CE58  7F C3 F3 78 */	mr r3, r30
/* 80C0CE5C  38 80 00 04 */	li r4, 4
/* 80C0CE60  3B BF 00 00 */	addi r29, r31, 0
/* 80C0CE64  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 80C0CE68  C0 1F 02 24 */	lfs f0, 0x224(r31)
/* 80C0CE6C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80C0CE70  4B FF 49 1D */	bl setBaseMotion__11daObj_GrA_cFif
/* 80C0CE74  7F C3 F3 78 */	mr r3, r30
/* 80C0CE78  38 80 00 0D */	li r4, 0xd
/* 80C0CE7C  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 80C0CE80  C0 1F 02 24 */	lfs f0, 0x224(r31)
/* 80C0CE84  EC 21 00 32 */	fmuls f1, f1, f0
/* 80C0CE88  4B FF 49 25 */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C0CE8C  7F C3 F3 78 */	mr r3, r30
/* 80C0CE90  4B FF 49 61 */	bl calcMotion__11daObj_GrA_cFv
/* 80C0CE94  80 9E 07 54 */	lwz r4, 0x754(r30)
/* 80C0CE98  A8 04 00 14 */	lha r0, 0x14(r4)
/* 80C0CE9C  C8 3F 01 30 */	lfd f1, 0x130(r31)
/* 80C0CEA0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C0CEA4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80C0CEA8  3C 60 43 30 */	lis r3, 0x4330
/* 80C0CEAC  90 61 00 18 */	stw r3, 0x18(r1)
/* 80C0CEB0  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80C0CEB4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C0CEB8  FC 00 00 1E */	fctiwz f0, f0
/* 80C0CEBC  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80C0CEC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C0CEC4  7C 00 07 34 */	extsh r0, r0
/* 80C0CEC8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C0CECC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80C0CED0  90 61 00 28 */	stw r3, 0x28(r1)
/* 80C0CED4  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80C0CED8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C0CEDC  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80C0CEE0  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 80C0CEE4  80 7E 07 54 */	lwz r3, 0x754(r30)
/* 80C0CEE8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C0CEEC  38 60 00 01 */	li r3, 1
/* 80C0CEF0  48 00 00 08 */	b lbl_80C0CEF8
lbl_80C0CEF4:
/* 80C0CEF4  38 60 00 00 */	li r3, 0
lbl_80C0CEF8:
/* 80C0CEF8  39 61 00 40 */	addi r11, r1, 0x40
/* 80C0CEFC  4B 75 53 2D */	bl _restgpr_29
/* 80C0CF00  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C0CF04  7C 08 03 A6 */	mtlr r0
/* 80C0CF08  38 21 00 40 */	addi r1, r1, 0x40
/* 80C0CF0C  4E 80 00 20 */	blr 
