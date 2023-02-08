lbl_80A37430:
/* 80A37430  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A37434  7C 08 02 A6 */	mflr r0
/* 80A37438  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A3743C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A37440  93 C1 00 08 */	stw r30, 8(r1)
/* 80A37444  7C 7F 1B 78 */	mr r31, r3
/* 80A37448  80 63 05 BC */	lwz r3, 0x5bc(r3)
/* 80A3744C  80 63 00 04 */	lwz r3, 4(r3)
/* 80A37450  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A37454  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A37458  38 63 05 D0 */	addi r3, r3, 0x5d0
/* 80A3745C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A37460  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A37464  4B 90 F0 4D */	bl PSMTXCopy
/* 80A37468  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A3746C  3B C3 D4 70 */	addi r30, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A37470  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80A37474  D0 1F 15 E4 */	stfs f0, 0x15e4(r31)
/* 80A37478  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80A3747C  D0 1F 15 E8 */	stfs f0, 0x15e8(r31)
/* 80A37480  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80A37484  D0 1F 15 EC */	stfs f0, 0x15ec(r31)
/* 80A37488  C0 3F 15 E8 */	lfs f1, 0x15e8(r31)
/* 80A3748C  3C 60 80 A4 */	lis r3, lit_4326@ha /* 0x80A40908@ha */
/* 80A37490  C0 03 09 08 */	lfs f0, lit_4326@l(r3)  /* 0x80A40908@l */
/* 80A37494  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A37498  D0 1F 15 E8 */	stfs f0, 0x15e8(r31)
/* 80A3749C  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80A374A0  B0 1F 15 F0 */	sth r0, 0x15f0(r31)
/* 80A374A4  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A374A8  B0 1F 15 F2 */	sth r0, 0x15f2(r31)
/* 80A374AC  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80A374B0  B0 1F 15 F4 */	sth r0, 0x15f4(r31)
/* 80A374B4  A8 7F 15 F2 */	lha r3, 0x15f2(r31)
/* 80A374B8  38 03 80 00 */	addi r0, r3, -32768
/* 80A374BC  B0 1F 15 F2 */	sth r0, 0x15f2(r31)
/* 80A374C0  38 00 00 01 */	li r0, 1
/* 80A374C4  98 1F 15 E0 */	stb r0, 0x15e0(r31)
/* 80A374C8  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80A374CC  80 63 00 04 */	lwz r3, 4(r3)
/* 80A374D0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A374D4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A374D8  38 63 05 10 */	addi r3, r3, 0x510
/* 80A374DC  7F C4 F3 78 */	mr r4, r30
/* 80A374E0  4B 90 EF D1 */	bl PSMTXCopy
/* 80A374E4  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80A374E8  D0 1F 16 40 */	stfs f0, 0x1640(r31)
/* 80A374EC  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80A374F0  D0 1F 16 44 */	stfs f0, 0x1644(r31)
/* 80A374F4  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80A374F8  D0 1F 16 48 */	stfs f0, 0x1648(r31)
/* 80A374FC  C0 3F 16 44 */	lfs f1, 0x1644(r31)
/* 80A37500  3C 60 80 A4 */	lis r3, lit_4326@ha /* 0x80A40908@ha */
/* 80A37504  C0 03 09 08 */	lfs f0, lit_4326@l(r3)  /* 0x80A40908@l */
/* 80A37508  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A3750C  D0 1F 16 44 */	stfs f0, 0x1644(r31)
/* 80A37510  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80A37514  B0 1F 16 4C */	sth r0, 0x164c(r31)
/* 80A37518  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A3751C  B0 1F 16 4E */	sth r0, 0x164e(r31)
/* 80A37520  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80A37524  B0 1F 16 50 */	sth r0, 0x1650(r31)
/* 80A37528  A8 7F 16 4E */	lha r3, 0x164e(r31)
/* 80A3752C  38 03 80 00 */	addi r0, r3, -32768
/* 80A37530  B0 1F 16 4E */	sth r0, 0x164e(r31)
/* 80A37534  38 00 00 01 */	li r0, 1
/* 80A37538  98 1F 16 3C */	stb r0, 0x163c(r31)
/* 80A3753C  38 60 00 01 */	li r3, 1
/* 80A37540  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A37544  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A37548  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A3754C  7C 08 03 A6 */	mtlr r0
/* 80A37550  38 21 00 10 */	addi r1, r1, 0x10
/* 80A37554  4E 80 00 20 */	blr 
