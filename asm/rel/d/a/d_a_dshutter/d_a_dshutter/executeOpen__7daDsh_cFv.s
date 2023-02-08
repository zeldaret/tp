lbl_80467988:
/* 80467988  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046798C  7C 08 02 A6 */	mflr r0
/* 80467990  90 01 00 14 */	stw r0, 0x14(r1)
/* 80467994  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80467998  7C 7F 1B 78 */	mr r31, r3
/* 8046799C  A8 03 05 B8 */	lha r0, 0x5b8(r3)
/* 804679A0  2C 00 00 00 */	cmpwi r0, 0
/* 804679A4  41 82 00 20 */	beq lbl_804679C4
/* 804679A8  3C 60 80 46 */	lis r3, lit_3802@ha /* 0x80467F38@ha */
/* 804679AC  C0 23 7F 38 */	lfs f1, lit_3802@l(r3)  /* 0x80467F38@l */
/* 804679B0  4B DF FF DD */	bl cM_rndFX__Ff
/* 804679B4  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 804679B8  EC 00 08 2A */	fadds f0, f0, f1
/* 804679BC  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 804679C0  48 00 00 8C */	b lbl_80467A4C
lbl_804679C4:
/* 804679C4  38 7F 04 FC */	addi r3, r31, 0x4fc
/* 804679C8  3C 80 80 45 */	lis r4, OPEN_SPEED__7daDsh_c@ha /* 0x80451D38@ha */
/* 804679CC  C0 24 1D 38 */	lfs f1, OPEN_SPEED__7daDsh_c@l(r4)  /* 0x80451D38@l */
/* 804679D0  C0 5F 05 30 */	lfs f2, 0x530(r31)
/* 804679D4  4B E0 8D 6D */	bl cLib_chaseF__FPfff
/* 804679D8  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 804679DC  C0 1F 04 FC */	lfs f0, 0x4fc(r31)
/* 804679E0  EC 01 00 2A */	fadds f0, f1, f0
/* 804679E4  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 804679E8  C0 3F 04 AC */	lfs f1, 0x4ac(r31)
/* 804679EC  3C 60 80 45 */	lis r3, OPEN_SIZE__7daDsh_c@ha /* 0x80451D30@ha */
/* 804679F0  C0 03 1D 30 */	lfs f0, OPEN_SIZE__7daDsh_c@l(r3)  /* 0x80451D30@l */
/* 804679F4  EC 21 00 28 */	fsubs f1, f1, f0
/* 804679F8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 804679FC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80467A00  40 80 00 4C */	bge lbl_80467A4C
/* 80467A04  D0 3F 04 D4 */	stfs f1, 0x4d4(r31)
/* 80467A08  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 80467A0C  3C 60 80 45 */	lis r3, OPEN_BOUND_SPEED__7daDsh_c@ha /* 0x80451D3C@ha */
/* 80467A10  C0 03 1D 3C */	lfs f0, OPEN_BOUND_SPEED__7daDsh_c@l(r3)  /* 0x80451D3C@l */
/* 80467A14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80467A18  40 80 00 24 */	bge lbl_80467A3C
/* 80467A1C  3C 60 80 45 */	lis r3, OPEN_BOUND_RATIO__7daDsh_c@ha /* 0x80451D40@ha */
/* 80467A20  C0 03 1D 40 */	lfs f0, OPEN_BOUND_RATIO__7daDsh_c@l(r3)  /* 0x80451D40@l */
/* 80467A24  EC 01 00 32 */	fmuls f0, f1, f0
/* 80467A28  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80467A2C  3C 60 80 46 */	lis r3, lit_3803@ha /* 0x80467F3C@ha */
/* 80467A30  C0 03 7F 3C */	lfs f0, lit_3803@l(r3)  /* 0x80467F3C@l */
/* 80467A34  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80467A38  48 00 00 14 */	b lbl_80467A4C
lbl_80467A3C:
/* 80467A3C  7F E3 FB 78 */	mr r3, r31
/* 80467A40  3C 80 80 47 */	lis r4, l_closeWaitAction@ha /* 0x804680E0@ha */
/* 80467A44  38 84 80 E0 */	addi r4, r4, l_closeWaitAction@l /* 0x804680E0@l */
/* 80467A48  4B FF FC C1 */	bl setAction__7daDsh_cFPQ27daDsh_c8action_c
lbl_80467A4C:
/* 80467A4C  38 60 00 01 */	li r3, 1
/* 80467A50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80467A54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80467A58  7C 08 03 A6 */	mtlr r0
/* 80467A5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80467A60  4E 80 00 20 */	blr 
