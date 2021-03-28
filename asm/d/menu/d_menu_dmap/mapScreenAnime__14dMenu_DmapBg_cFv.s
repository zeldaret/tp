lbl_801B884C:
/* 801B884C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B8850  7C 08 02 A6 */	mflr r0
/* 801B8854  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B8858  C0 22 A5 E8 */	lfs f1, lit_3962(r2)
/* 801B885C  C0 03 0D 94 */	lfs f0, 0xd94(r3)
/* 801B8860  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801B8864  40 82 00 80 */	bne lbl_801B88E4
/* 801B8868  C0 03 0D 98 */	lfs f0, 0xd98(r3)
/* 801B886C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801B8870  40 82 00 74 */	bne lbl_801B88E4
/* 801B8874  C0 02 A5 F4 */	lfs f0, lit_4106(r2)
/* 801B8878  C8 22 A5 F8 */	lfd f1, lit_4108(r2)
/* 801B887C  3C 00 43 30 */	lis r0, 0x4330
/* 801B8880  C0 43 0D C8 */	lfs f2, 0xdc8(r3)
/* 801B8884  EC 02 00 2A */	fadds f0, f2, f0
/* 801B8888  D0 03 0D C8 */	stfs f0, 0xdc8(r3)
/* 801B888C  80 83 0D 28 */	lwz r4, 0xd28(r3)
/* 801B8890  A8 84 00 06 */	lha r4, 6(r4)
/* 801B8894  C0 43 0D C8 */	lfs f2, 0xdc8(r3)
/* 801B8898  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 801B889C  90 81 00 0C */	stw r4, 0xc(r1)
/* 801B88A0  90 01 00 08 */	stw r0, 8(r1)
/* 801B88A4  C8 01 00 08 */	lfd f0, 8(r1)
/* 801B88A8  EC 00 08 28 */	fsubs f0, f0, f1
/* 801B88AC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801B88B0  4C 41 13 82 */	cror 2, 1, 2
/* 801B88B4  40 82 00 1C */	bne lbl_801B88D0
/* 801B88B8  90 81 00 0C */	stw r4, 0xc(r1)
/* 801B88BC  90 01 00 08 */	stw r0, 8(r1)
/* 801B88C0  C8 01 00 08 */	lfd f0, 8(r1)
/* 801B88C4  EC 00 08 28 */	fsubs f0, f0, f1
/* 801B88C8  EC 02 00 28 */	fsubs f0, f2, f0
/* 801B88CC  D0 03 0D C8 */	stfs f0, 0xdc8(r3)
lbl_801B88D0:
/* 801B88D0  C0 03 0D C8 */	lfs f0, 0xdc8(r3)
/* 801B88D4  80 83 0D 28 */	lwz r4, 0xd28(r3)
/* 801B88D8  D0 04 00 08 */	stfs f0, 8(r4)
/* 801B88DC  80 63 0C A8 */	lwz r3, 0xca8(r3)
/* 801B88E0  48 14 0D B1 */	bl animation__9J2DScreenFv
lbl_801B88E4:
/* 801B88E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B88E8  7C 08 03 A6 */	mtlr r0
/* 801B88EC  38 21 00 10 */	addi r1, r1, 0x10
/* 801B88F0  4E 80 00 20 */	blr 
