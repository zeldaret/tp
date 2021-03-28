lbl_8050E9E8:
/* 8050E9E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050E9EC  7C 08 02 A6 */	mflr r0
/* 8050E9F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050E9F4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8050E9F8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8050E9FC  7C 7E 1B 78 */	mr r30, r3
/* 8050EA00  3C 60 80 52 */	lis r3, lit_4208@ha
/* 8050EA04  3B E3 85 84 */	addi r31, r3, lit_4208@l
/* 8050EA08  38 00 00 15 */	li r0, 0x15
/* 8050EA0C  B0 1E 09 72 */	sth r0, 0x972(r30)
/* 8050EA10  38 00 00 00 */	li r0, 0
/* 8050EA14  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8050EA18  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 8050EA1C  3C 60 80 52 */	lis r3, l_HIO@ha
/* 8050EA20  38 63 91 94 */	addi r3, r3, l_HIO@l
/* 8050EA24  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 8050EA28  EC 01 00 2A */	fadds f0, f1, f0
/* 8050EA2C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8050EA30  88 1E 09 BC */	lbz r0, 0x9bc(r30)
/* 8050EA34  2C 00 00 02 */	cmpwi r0, 2
/* 8050EA38  40 82 00 8C */	bne lbl_8050EAC4
/* 8050EA3C  80 1E 09 8C */	lwz r0, 0x98c(r30)
/* 8050EA40  90 01 00 08 */	stw r0, 8(r1)
/* 8050EA44  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 8050EA48  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 8050EA4C  38 81 00 08 */	addi r4, r1, 8
/* 8050EA50  4B B0 AD A8 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 8050EA54  28 03 00 00 */	cmplwi r3, 0
/* 8050EA58  41 82 00 34 */	beq lbl_8050EA8C
/* 8050EA5C  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 8050EA60  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 8050EA64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050EA68  4C 41 13 82 */	cror 2, 1, 2
/* 8050EA6C  40 82 00 20 */	bne lbl_8050EA8C
/* 8050EA70  D0 3E 09 EC */	stfs f1, 0x9ec(r30)
/* 8050EA74  C0 3E 09 EC */	lfs f1, 0x9ec(r30)
/* 8050EA78  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 8050EA7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8050EA80  40 81 00 20 */	ble lbl_8050EAA0
/* 8050EA84  D0 1E 09 EC */	stfs f0, 0x9ec(r30)
/* 8050EA88  48 00 00 18 */	b lbl_8050EAA0
lbl_8050EA8C:
/* 8050EA8C  3C 60 80 52 */	lis r3, l_HIO@ha
/* 8050EA90  38 63 91 94 */	addi r3, r3, l_HIO@l
/* 8050EA94  C0 03 00 48 */	lfs f0, 0x48(r3)
/* 8050EA98  FC 00 00 50 */	fneg f0, f0
/* 8050EA9C  D0 1E 09 EC */	stfs f0, 0x9ec(r30)
lbl_8050EAA0:
/* 8050EAA0  C0 3F 01 44 */	lfs f1, 0x144(r31)
/* 8050EAA4  4B D5 8E E8 */	b cM_rndFX__Ff
/* 8050EAA8  FC 00 08 1E */	fctiwz f0, f1
/* 8050EAAC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8050EAB0  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8050EAB4  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8050EAB8  7C 00 1A 14 */	add r0, r0, r3
/* 8050EABC  B0 1E 0A 0E */	sth r0, 0xa0e(r30)
/* 8050EAC0  48 00 00 18 */	b lbl_8050EAD8
lbl_8050EAC4:
/* 8050EAC4  A8 1E 12 46 */	lha r0, 0x1246(r30)
/* 8050EAC8  B0 1E 0A 0E */	sth r0, 0xa0e(r30)
/* 8050EACC  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 8050EAD0  FC 00 00 50 */	fneg f0, f0
/* 8050EAD4  D0 1E 09 EC */	stfs f0, 0x9ec(r30)
lbl_8050EAD8:
/* 8050EAD8  80 7E 12 4C */	lwz r3, 0x124c(r30)
/* 8050EADC  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 8050EAE0  41 82 00 28 */	beq lbl_8050EB08
/* 8050EAE4  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8050EAE8  4B D5 8E A4 */	b cM_rndFX__Ff
/* 8050EAEC  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 8050EAF0  EC 00 08 2A */	fadds f0, f0, f1
/* 8050EAF4  FC 00 00 1E */	fctiwz f0, f0
/* 8050EAF8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8050EAFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050EB00  B0 1E 09 F6 */	sth r0, 0x9f6(r30)
/* 8050EB04  48 00 00 CC */	b lbl_8050EBD0
lbl_8050EB08:
/* 8050EB08  54 60 05 29 */	rlwinm. r0, r3, 0, 0x14, 0x14
/* 8050EB0C  41 82 00 2C */	beq lbl_8050EB38
/* 8050EB10  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8050EB14  4B D5 8E 78 */	b cM_rndFX__Ff
/* 8050EB18  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 8050EB1C  EC 00 08 2A */	fadds f0, f0, f1
/* 8050EB20  FC 00 00 50 */	fneg f0, f0
/* 8050EB24  FC 00 00 1E */	fctiwz f0, f0
/* 8050EB28  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8050EB2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050EB30  B0 1E 09 F6 */	sth r0, 0x9f6(r30)
/* 8050EB34  48 00 00 9C */	b lbl_8050EBD0
lbl_8050EB38:
/* 8050EB38  88 1E 09 BC */	lbz r0, 0x9bc(r30)
/* 8050EB3C  7C 00 07 75 */	extsb. r0, r0
/* 8050EB40  41 82 00 20 */	beq lbl_8050EB60
/* 8050EB44  C0 3F 01 44 */	lfs f1, 0x144(r31)
/* 8050EB48  4B D5 8E 44 */	b cM_rndFX__Ff
/* 8050EB4C  FC 00 08 1E */	fctiwz f0, f1
/* 8050EB50  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8050EB54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050EB58  B0 1E 09 F6 */	sth r0, 0x9f6(r30)
/* 8050EB5C  48 00 00 74 */	b lbl_8050EBD0
lbl_8050EB60:
/* 8050EB60  80 7E 12 3C */	lwz r3, 0x123c(r30)
/* 8050EB64  A8 03 00 08 */	lha r0, 8(r3)
/* 8050EB68  2C 00 00 EF */	cmpwi r0, 0xef
/* 8050EB6C  40 82 00 4C */	bne lbl_8050EBB8
/* 8050EB70  C0 3F 01 2C */	lfs f1, 0x12c(r31)
/* 8050EB74  4B D5 8E 18 */	b cM_rndFX__Ff
/* 8050EB78  FC 00 08 1E */	fctiwz f0, f1
/* 8050EB7C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8050EB80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050EB84  B0 1E 09 F6 */	sth r0, 0x9f6(r30)
/* 8050EB88  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 8050EB8C  4B D5 8D C8 */	b cM_rndF__Ff
/* 8050EB90  C0 1F 01 34 */	lfs f0, 0x134(r31)
/* 8050EB94  EC 00 08 2A */	fadds f0, f0, f1
/* 8050EB98  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8050EB9C  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 8050EBA0  80 7E 12 3C */	lwz r3, 0x123c(r30)
/* 8050EBA4  C0 03 05 2C */	lfs f0, 0x52c(r3)
/* 8050EBA8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8050EBAC  FC 00 00 50 */	fneg f0, f0
/* 8050EBB0  D0 1E 09 EC */	stfs f0, 0x9ec(r30)
/* 8050EBB4  48 00 00 1C */	b lbl_8050EBD0
lbl_8050EBB8:
/* 8050EBB8  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 8050EBBC  4B D5 8D D0 */	b cM_rndFX__Ff
/* 8050EBC0  FC 00 08 1E */	fctiwz f0, f1
/* 8050EBC4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8050EBC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050EBCC  B0 1E 09 F6 */	sth r0, 0x9f6(r30)
lbl_8050EBD0:
/* 8050EBD0  38 00 00 00 */	li r0, 0
/* 8050EBD4  98 1E 09 F8 */	stb r0, 0x9f8(r30)
/* 8050EBD8  38 00 03 E8 */	li r0, 0x3e8
/* 8050EBDC  B0 1E 09 98 */	sth r0, 0x998(r30)
/* 8050EBE0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8050EBE4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8050EBE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050EBEC  7C 08 03 A6 */	mtlr r0
/* 8050EBF0  38 21 00 20 */	addi r1, r1, 0x20
/* 8050EBF4  4E 80 00 20 */	blr 
