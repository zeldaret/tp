lbl_8079BD14:
/* 8079BD14  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8079BD18  7C 08 02 A6 */	mflr r0
/* 8079BD1C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8079BD20  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8079BD24  7C 7F 1B 78 */	mr r31, r3
/* 8079BD28  7C 80 07 75 */	extsb. r0, r4
/* 8079BD2C  41 82 00 48 */	beq lbl_8079BD74
/* 8079BD30  88 1F 05 B7 */	lbz r0, 0x5b7(r31)
/* 8079BD34  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8079BD38  3C 60 80 7A */	lis r3, col_d@ha /* 0x8079DC3C@ha */
/* 8079BD3C  38 83 DC 3C */	addi r4, r3, col_d@l /* 0x8079DC3C@l */
/* 8079BD40  7C 04 04 2E */	lfsx f0, r4, r0
/* 8079BD44  D0 1F 06 B8 */	stfs f0, 0x6b8(r31)
/* 8079BD48  88 1F 05 B7 */	lbz r0, 0x5b7(r31)
/* 8079BD4C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8079BD50  7C 64 02 14 */	add r3, r4, r0
/* 8079BD54  C0 03 00 04 */	lfs f0, 4(r3)
/* 8079BD58  D0 1F 06 BC */	stfs f0, 0x6bc(r31)
/* 8079BD5C  88 1F 05 B7 */	lbz r0, 0x5b7(r31)
/* 8079BD60  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8079BD64  7C 64 02 14 */	add r3, r4, r0
/* 8079BD68  C0 03 00 08 */	lfs f0, 8(r3)
/* 8079BD6C  D0 1F 06 C0 */	stfs f0, 0x6c0(r31)
/* 8079BD70  48 00 01 6C */	b lbl_8079BEDC
lbl_8079BD74:
/* 8079BD74  3C 60 80 7A */	lis r3, l_HIO@ha /* 0x8079DBD4@ha */
/* 8079BD78  38 83 DB D4 */	addi r4, r3, l_HIO@l /* 0x8079DBD4@l */
/* 8079BD7C  88 04 00 08 */	lbz r0, 8(r4)
/* 8079BD80  28 00 00 00 */	cmplwi r0, 0
/* 8079BD84  41 82 00 CC */	beq lbl_8079BE50
/* 8079BD88  38 7F 06 B8 */	addi r3, r31, 0x6b8
/* 8079BD8C  A8 04 00 0A */	lha r0, 0xa(r4)
/* 8079BD90  3C 80 80 7A */	lis r4, lit_5184@ha /* 0x8079D6E0@ha */
/* 8079BD94  C8 24 D6 E0 */	lfd f1, lit_5184@l(r4)  /* 0x8079D6E0@l */
/* 8079BD98  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8079BD9C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8079BDA0  3C 00 43 30 */	lis r0, 0x4330
/* 8079BDA4  90 01 00 08 */	stw r0, 8(r1)
/* 8079BDA8  C8 01 00 08 */	lfd f0, 8(r1)
/* 8079BDAC  EC 20 08 28 */	fsubs f1, f0, f1
/* 8079BDB0  3C 80 80 7A */	lis r4, lit_3792@ha /* 0x8079D5B8@ha */
/* 8079BDB4  C0 44 D5 B8 */	lfs f2, lit_3792@l(r4)  /* 0x8079D5B8@l */
/* 8079BDB8  3C 80 80 7A */	lis r4, lit_4259@ha /* 0x8079D644@ha */
/* 8079BDBC  C0 64 D6 44 */	lfs f3, lit_4259@l(r4)  /* 0x8079D644@l */
/* 8079BDC0  4B AD 3C 7D */	bl cLib_addCalc2__FPffff
/* 8079BDC4  38 7F 06 BC */	addi r3, r31, 0x6bc
/* 8079BDC8  3C 80 80 7A */	lis r4, l_HIO@ha /* 0x8079DBD4@ha */
/* 8079BDCC  38 84 DB D4 */	addi r4, r4, l_HIO@l /* 0x8079DBD4@l */
/* 8079BDD0  A8 04 00 0C */	lha r0, 0xc(r4)
/* 8079BDD4  3C 80 80 7A */	lis r4, lit_5184@ha /* 0x8079D6E0@ha */
/* 8079BDD8  C8 24 D6 E0 */	lfd f1, lit_5184@l(r4)  /* 0x8079D6E0@l */
/* 8079BDDC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8079BDE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8079BDE4  3C 00 43 30 */	lis r0, 0x4330
/* 8079BDE8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8079BDEC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8079BDF0  EC 20 08 28 */	fsubs f1, f0, f1
/* 8079BDF4  3C 80 80 7A */	lis r4, lit_3792@ha /* 0x8079D5B8@ha */
/* 8079BDF8  C0 44 D5 B8 */	lfs f2, lit_3792@l(r4)  /* 0x8079D5B8@l */
/* 8079BDFC  3C 80 80 7A */	lis r4, lit_4259@ha /* 0x8079D644@ha */
/* 8079BE00  C0 64 D6 44 */	lfs f3, lit_4259@l(r4)  /* 0x8079D644@l */
/* 8079BE04  4B AD 3C 39 */	bl cLib_addCalc2__FPffff
/* 8079BE08  38 7F 06 C0 */	addi r3, r31, 0x6c0
/* 8079BE0C  3C 80 80 7A */	lis r4, l_HIO@ha /* 0x8079DBD4@ha */
/* 8079BE10  38 84 DB D4 */	addi r4, r4, l_HIO@l /* 0x8079DBD4@l */
/* 8079BE14  A8 04 00 0E */	lha r0, 0xe(r4)
/* 8079BE18  3C 80 80 7A */	lis r4, lit_5184@ha /* 0x8079D6E0@ha */
/* 8079BE1C  C8 24 D6 E0 */	lfd f1, lit_5184@l(r4)  /* 0x8079D6E0@l */
/* 8079BE20  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8079BE24  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8079BE28  3C 00 43 30 */	lis r0, 0x4330
/* 8079BE2C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8079BE30  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8079BE34  EC 20 08 28 */	fsubs f1, f0, f1
/* 8079BE38  3C 80 80 7A */	lis r4, lit_3792@ha /* 0x8079D5B8@ha */
/* 8079BE3C  C0 44 D5 B8 */	lfs f2, lit_3792@l(r4)  /* 0x8079D5B8@l */
/* 8079BE40  3C 80 80 7A */	lis r4, lit_4259@ha /* 0x8079D644@ha */
/* 8079BE44  C0 64 D6 44 */	lfs f3, lit_4259@l(r4)  /* 0x8079D644@l */
/* 8079BE48  4B AD 3B F5 */	bl cLib_addCalc2__FPffff
/* 8079BE4C  48 00 00 90 */	b lbl_8079BEDC
lbl_8079BE50:
/* 8079BE50  38 7F 06 B8 */	addi r3, r31, 0x6b8
/* 8079BE54  88 1F 05 B7 */	lbz r0, 0x5b7(r31)
/* 8079BE58  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8079BE5C  3C 80 80 7A */	lis r4, col_d@ha /* 0x8079DC3C@ha */
/* 8079BE60  38 84 DC 3C */	addi r4, r4, col_d@l /* 0x8079DC3C@l */
/* 8079BE64  7C 24 04 2E */	lfsx f1, r4, r0
/* 8079BE68  3C 80 80 7A */	lis r4, lit_3792@ha /* 0x8079D5B8@ha */
/* 8079BE6C  C0 44 D5 B8 */	lfs f2, lit_3792@l(r4)  /* 0x8079D5B8@l */
/* 8079BE70  3C 80 80 7A */	lis r4, lit_4259@ha /* 0x8079D644@ha */
/* 8079BE74  C0 64 D6 44 */	lfs f3, lit_4259@l(r4)  /* 0x8079D644@l */
/* 8079BE78  4B AD 3B C5 */	bl cLib_addCalc2__FPffff
/* 8079BE7C  38 7F 06 BC */	addi r3, r31, 0x6bc
/* 8079BE80  3C 80 80 7A */	lis r4, col_d@ha /* 0x8079DC3C@ha */
/* 8079BE84  38 84 DC 3C */	addi r4, r4, col_d@l /* 0x8079DC3C@l */
/* 8079BE88  88 1F 05 B7 */	lbz r0, 0x5b7(r31)
/* 8079BE8C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8079BE90  7C 84 02 14 */	add r4, r4, r0
/* 8079BE94  C0 24 00 04 */	lfs f1, 4(r4)
/* 8079BE98  3C 80 80 7A */	lis r4, lit_3792@ha /* 0x8079D5B8@ha */
/* 8079BE9C  C0 44 D5 B8 */	lfs f2, lit_3792@l(r4)  /* 0x8079D5B8@l */
/* 8079BEA0  3C 80 80 7A */	lis r4, lit_4259@ha /* 0x8079D644@ha */
/* 8079BEA4  C0 64 D6 44 */	lfs f3, lit_4259@l(r4)  /* 0x8079D644@l */
/* 8079BEA8  4B AD 3B 95 */	bl cLib_addCalc2__FPffff
/* 8079BEAC  38 7F 06 C0 */	addi r3, r31, 0x6c0
/* 8079BEB0  3C 80 80 7A */	lis r4, col_d@ha /* 0x8079DC3C@ha */
/* 8079BEB4  38 84 DC 3C */	addi r4, r4, col_d@l /* 0x8079DC3C@l */
/* 8079BEB8  88 1F 05 B7 */	lbz r0, 0x5b7(r31)
/* 8079BEBC  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8079BEC0  7C 84 02 14 */	add r4, r4, r0
/* 8079BEC4  C0 24 00 08 */	lfs f1, 8(r4)
/* 8079BEC8  3C 80 80 7A */	lis r4, lit_3792@ha /* 0x8079D5B8@ha */
/* 8079BECC  C0 44 D5 B8 */	lfs f2, lit_3792@l(r4)  /* 0x8079D5B8@l */
/* 8079BED0  3C 80 80 7A */	lis r4, lit_4259@ha /* 0x8079D644@ha */
/* 8079BED4  C0 64 D6 44 */	lfs f3, lit_4259@l(r4)  /* 0x8079D644@l */
/* 8079BED8  4B AD 3B 65 */	bl cLib_addCalc2__FPffff
lbl_8079BEDC:
/* 8079BEDC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8079BEE0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8079BEE4  7C 08 03 A6 */	mtlr r0
/* 8079BEE8  38 21 00 30 */	addi r1, r1, 0x30
/* 8079BEEC  4E 80 00 20 */	blr 
