lbl_8029ABEC:
/* 8029ABEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029ABF0  7C 08 02 A6 */	mflr r0
/* 8029ABF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029ABF8  39 61 00 20 */	addi r11, r1, 0x20
/* 8029ABFC  48 0C 75 E1 */	bl _savegpr_29
/* 8029AC00  7C 7D 1B 78 */	mr r29, r3
/* 8029AC04  7C BE 2B 78 */	mr r30, r5
/* 8029AC08  54 9F 28 34 */	slwi r31, r4, 5
/* 8029AC0C  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8029AC10  7C 7D 1A 14 */	add r3, r29, r3
/* 8029AC14  48 00 13 B5 */	bl getValue__13JASOscillatorCFv
/* 8029AC18  7C 7D FA 14 */	add r3, r29, r31
/* 8029AC1C  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8029AC20  80 03 00 00 */	lwz r0, 0(r3)
/* 8029AC24  28 00 00 06 */	cmplwi r0, 6
/* 8029AC28  41 81 00 94 */	bgt lbl_8029ACBC
/* 8029AC2C  3C 60 80 3C */	lis r3, lit_662@ha
/* 8029AC30  38 63 78 48 */	addi r3, r3, lit_662@l
/* 8029AC34  54 00 10 3A */	slwi r0, r0, 2
/* 8029AC38  7C 03 00 2E */	lwzx r0, r3, r0
/* 8029AC3C  7C 09 03 A6 */	mtctr r0
/* 8029AC40  4E 80 04 20 */	bctr 
/* 8029AC44  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8029AC48  EC 00 00 72 */	fmuls f0, f0, f1
/* 8029AC4C  D0 1E 00 04 */	stfs f0, 4(r30)
/* 8029AC50  48 00 00 6C */	b lbl_8029ACBC
/* 8029AC54  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8029AC58  EC 00 00 72 */	fmuls f0, f0, f1
/* 8029AC5C  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8029AC60  48 00 00 5C */	b lbl_8029ACBC
/* 8029AC64  C8 02 BC 90 */	lfd f0, lit_661(r2)
/* 8029AC68  FC 21 00 28 */	fsub f1, f1, f0
/* 8029AC6C  FC 20 08 18 */	frsp f1, f1
/* 8029AC70  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8029AC74  EC 00 08 2A */	fadds f0, f0, f1
/* 8029AC78  D0 1E 00 08 */	stfs f0, 8(r30)
/* 8029AC7C  48 00 00 40 */	b lbl_8029ACBC
/* 8029AC80  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8029AC84  EC 00 08 2A */	fadds f0, f0, f1
/* 8029AC88  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 8029AC8C  48 00 00 30 */	b lbl_8029ACBC
/* 8029AC90  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8029AC94  EC 00 08 2A */	fadds f0, f0, f1
/* 8029AC98  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 8029AC9C  48 00 00 20 */	b lbl_8029ACBC
/* 8029ACA0  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8029ACA4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8029ACA8  D0 1E 00 14 */	stfs f0, 0x14(r30)
/* 8029ACAC  48 00 00 10 */	b lbl_8029ACBC
/* 8029ACB0  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8029ACB4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8029ACB8  D0 1E 00 18 */	stfs f0, 0x18(r30)
lbl_8029ACBC:
/* 8029ACBC  39 61 00 20 */	addi r11, r1, 0x20
/* 8029ACC0  48 0C 75 69 */	bl _restgpr_29
/* 8029ACC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029ACC8  7C 08 03 A6 */	mtlr r0
/* 8029ACCC  38 21 00 20 */	addi r1, r1, 0x20
/* 8029ACD0  4E 80 00 20 */	blr 
