lbl_8059185C:
/* 8059185C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80591860  7C 08 02 A6 */	mflr r0
/* 80591864  90 01 00 24 */	stw r0, 0x24(r1)
/* 80591868  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8059186C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80591870  7C 7E 1B 78 */	mr r30, r3
/* 80591874  3C 60 80 59 */	lis r3, l_magne_scale@ha /* 0x80592848@ha */
/* 80591878  3B E3 28 48 */	addi r31, r3, l_magne_scale@l /* 0x80592848@l */
/* 8059187C  38 7E 0A 17 */	addi r3, r30, 0xa17
/* 80591880  48 00 0F 95 */	bl func_80592814
/* 80591884  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80591888  40 82 00 90 */	bne lbl_80591918
/* 8059188C  38 7E 0A 0C */	addi r3, r30, 0xa0c
/* 80591890  38 9F 00 2C */	addi r4, r31, 0x2c
/* 80591894  A8 84 00 06 */	lha r4, 6(r4)
/* 80591898  38 A0 00 14 */	li r5, 0x14
/* 8059189C  38 C0 00 32 */	li r6, 0x32
/* 805918A0  38 E0 00 0A */	li r7, 0xa
/* 805918A4  4B CD EC 9D */	bl cLib_addCalcAngleS__FPsssss
/* 805918A8  A8 7E 0A 00 */	lha r3, 0xa00(r30)
/* 805918AC  A8 1E 0A 0C */	lha r0, 0xa0c(r30)
/* 805918B0  7C 03 02 14 */	add r0, r3, r0
/* 805918B4  B0 1E 0A 00 */	sth r0, 0xa00(r30)
/* 805918B8  C0 7E 0A 04 */	lfs f3, 0xa04(r30)
/* 805918BC  C0 5F 00 F0 */	lfs f2, 0xf0(r31)
/* 805918C0  A8 1E 0A 0C */	lha r0, 0xa0c(r30)
/* 805918C4  C8 3F 00 78 */	lfd f1, 0x78(r31)
/* 805918C8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805918CC  90 01 00 0C */	stw r0, 0xc(r1)
/* 805918D0  3C 00 43 30 */	lis r0, 0x4330
/* 805918D4  90 01 00 08 */	stw r0, 8(r1)
/* 805918D8  C8 01 00 08 */	lfd f0, 8(r1)
/* 805918DC  EC 00 08 28 */	fsubs f0, f0, f1
/* 805918E0  EC 22 00 32 */	fmuls f1, f2, f0
/* 805918E4  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 805918E8  EC 01 00 24 */	fdivs f0, f1, f0
/* 805918EC  EC 03 00 2A */	fadds f0, f3, f0
/* 805918F0  D0 1E 0A 04 */	stfs f0, 0xa04(r30)
/* 805918F4  C0 3E 0A 04 */	lfs f1, 0xa04(r30)
/* 805918F8  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 805918FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80591900  40 81 00 10 */	ble lbl_80591910
/* 80591904  D0 1E 0A 04 */	stfs f0, 0xa04(r30)
/* 80591908  7F C3 F3 78 */	mr r3, r30
/* 8059190C  48 00 01 25 */	bl init_typeD_modeRotate__11daObjMarm_cFv
lbl_80591910:
/* 80591910  7F C3 F3 78 */	mr r3, r30
/* 80591914  48 00 06 3D */	bl seStartLevel_UP__11daObjMarm_cFv
lbl_80591918:
/* 80591918  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8059191C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80591920  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80591924  7C 08 03 A6 */	mtlr r0
/* 80591928  38 21 00 20 */	addi r1, r1, 0x20
/* 8059192C  4E 80 00 20 */	blr 
