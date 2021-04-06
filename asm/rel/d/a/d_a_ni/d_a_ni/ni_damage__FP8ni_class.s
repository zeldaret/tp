lbl_8094DB98:
/* 8094DB98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8094DB9C  7C 08 02 A6 */	mflr r0
/* 8094DBA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8094DBA4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8094DBA8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8094DBAC  7C 7E 1B 78 */	mr r30, r3
/* 8094DBB0  3C 80 80 95 */	lis r4, lit_3958@ha /* 0x809511C0@ha */
/* 8094DBB4  3B E4 11 C0 */	addi r31, r4, lit_3958@l /* 0x809511C0@l */
/* 8094DBB8  A8 03 05 FC */	lha r0, 0x5fc(r3)
/* 8094DBBC  2C 00 00 01 */	cmpwi r0, 1
/* 8094DBC0  41 82 00 6C */	beq lbl_8094DC2C
/* 8094DBC4  40 80 01 04 */	bge lbl_8094DCC8
/* 8094DBC8  2C 00 00 00 */	cmpwi r0, 0
/* 8094DBCC  40 80 00 08 */	bge lbl_8094DBD4
/* 8094DBD0  48 00 00 F8 */	b lbl_8094DCC8
lbl_8094DBD4:
/* 8094DBD4  38 80 00 0D */	li r4, 0xd
/* 8094DBD8  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8094DBDC  38 A0 00 02 */	li r5, 2
/* 8094DBE0  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 8094DBE4  4B FF E0 C5 */	bl anm_init__FP8ni_classifUcf
/* 8094DBE8  A8 7E 05 FC */	lha r3, 0x5fc(r30)
/* 8094DBEC  38 03 00 01 */	addi r0, r3, 1
/* 8094DBF0  B0 1E 05 FC */	sth r0, 0x5fc(r30)
/* 8094DBF4  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 8094DBF8  4B 91 9D 5D */	bl cM_rndF__Ff
/* 8094DBFC  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8094DC00  EC 00 08 2A */	fadds f0, f0, f1
/* 8094DC04  FC 00 00 1E */	fctiwz f0, f0
/* 8094DC08  D8 01 00 08 */	stfd f0, 8(r1)
/* 8094DC0C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8094DC10  B0 1E 06 04 */	sth r0, 0x604(r30)
/* 8094DC14  38 00 00 0A */	li r0, 0xa
/* 8094DC18  B0 1E 06 06 */	sth r0, 0x606(r30)
/* 8094DC1C  A8 7E 05 E4 */	lha r3, 0x5e4(r30)
/* 8094DC20  3C 63 00 01 */	addis r3, r3, 1
/* 8094DC24  38 03 80 00 */	addi r0, r3, -32768
/* 8094DC28  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_8094DC2C:
/* 8094DC2C  A8 1E 06 06 */	lha r0, 0x606(r30)
/* 8094DC30  2C 00 00 00 */	cmpwi r0, 0
/* 8094DC34  40 82 00 6C */	bne lbl_8094DCA0
/* 8094DC38  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 8094DC3C  4B 91 9D 51 */	bl cM_rndFX__Ff
/* 8094DC40  FC 00 08 1E */	fctiwz f0, f1
/* 8094DC44  D8 01 00 08 */	stfd f0, 8(r1)
/* 8094DC48  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8094DC4C  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8094DC50  7C 00 1A 14 */	add r0, r0, r3
/* 8094DC54  B0 1E 05 DC */	sth r0, 0x5dc(r30)
/* 8094DC58  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8094DC5C  4B 91 9C F9 */	bl cM_rndF__Ff
/* 8094DC60  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 8094DC64  EC 00 08 2A */	fadds f0, f0, f1
/* 8094DC68  FC 00 00 1E */	fctiwz f0, f0
/* 8094DC6C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8094DC70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8094DC74  B0 1E 06 06 */	sth r0, 0x606(r30)
/* 8094DC78  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8094DC7C  4B 91 9C D9 */	bl cM_rndF__Ff
/* 8094DC80  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 8094DC84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094DC88  40 80 00 18 */	bge lbl_8094DCA0
/* 8094DC8C  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8094DC90  4B 91 9C C5 */	bl cM_rndF__Ff
/* 8094DC94  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8094DC98  EC 00 08 2A */	fadds f0, f0, f1
/* 8094DC9C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_8094DCA0:
/* 8094DCA0  7F C3 F3 78 */	mr r3, r30
/* 8094DCA4  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 8094DCA8  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 8094DCAC  4B FF E0 BD */	bl hane_set__FP8ni_classff
/* 8094DCB0  A8 1E 06 04 */	lha r0, 0x604(r30)
/* 8094DCB4  2C 00 00 00 */	cmpwi r0, 0
/* 8094DCB8  40 82 00 10 */	bne lbl_8094DCC8
/* 8094DCBC  38 00 00 00 */	li r0, 0
/* 8094DCC0  B0 1E 05 FA */	sth r0, 0x5fa(r30)
/* 8094DCC4  B0 1E 05 FC */	sth r0, 0x5fc(r30)
lbl_8094DCC8:
/* 8094DCC8  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8094DCCC  3C 80 80 95 */	lis r4, l_HIO@ha /* 0x8095159C@ha */
/* 8094DCD0  38 84 15 9C */	addi r4, r4, l_HIO@l /* 0x8095159C@l */
/* 8094DCD4  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 8094DCD8  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 8094DCDC  C0 7F 00 98 */	lfs f3, 0x98(r31)
/* 8094DCE0  4B 92 1D 5D */	bl cLib_addCalc2__FPffff
/* 8094DCE4  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8094DCE8  A8 9E 05 DC */	lha r4, 0x5dc(r30)
/* 8094DCEC  38 A0 00 02 */	li r5, 2
/* 8094DCF0  38 C0 20 00 */	li r6, 0x2000
/* 8094DCF4  4B 92 29 15 */	bl cLib_addCalcAngleS2__FPssss
/* 8094DCF8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8094DCFC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8094DD00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8094DD04  7C 08 03 A6 */	mtlr r0
/* 8094DD08  38 21 00 20 */	addi r1, r1, 0x20
/* 8094DD0C  4E 80 00 20 */	blr 
