lbl_80C8C354:
/* 80C8C354  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80C8C358  38 00 00 00 */	li r0, 0
/* 80C8C35C  88 C3 05 C4 */	lbz r6, 0x5c4(r3)
/* 80C8C360  3C A0 80 C9 */	lis r5, lit_3722@ha
/* 80C8C364  C8 05 CC 18 */	lfd f0, lit_3722@l(r5)
/* 80C8C368  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80C8C36C  3C C0 43 30 */	lis r6, 0x4330
/* 80C8C370  90 C1 00 08 */	stw r6, 8(r1)
/* 80C8C374  C8 21 00 08 */	lfd f1, 8(r1)
/* 80C8C378  EC 61 00 28 */	fsubs f3, f1, f0
/* 80C8C37C  88 A3 05 C5 */	lbz r5, 0x5c5(r3)
/* 80C8C380  90 A1 00 14 */	stw r5, 0x14(r1)
/* 80C8C384  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80C8C388  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 80C8C38C  EC 41 00 28 */	fsubs f2, f1, f0
/* 80C8C390  3C A0 80 C9 */	lis r5, lit_3777@ha
/* 80C8C394  C0 25 CC 20 */	lfs f1, lit_3777@l(r5)
/* 80C8C398  EC 22 08 28 */	fsubs f1, f2, f1
/* 80C8C39C  EC 23 08 24 */	fdivs f1, f3, f1
/* 80C8C3A0  2C 04 00 00 */	cmpwi r4, 0
/* 80C8C3A4  41 82 01 0C */	beq lbl_80C8C4B0
/* 80C8C3A8  3C 80 80 C9 */	lis r4, l_HIO@ha
/* 80C8C3AC  38 A4 CD 8C */	addi r5, r4, l_HIO@l
/* 80C8C3B0  88 E5 00 0D */	lbz r7, 0xd(r5)
/* 80C8C3B4  90 E1 00 14 */	stw r7, 0x14(r1)
/* 80C8C3B8  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80C8C3BC  C8 41 00 10 */	lfd f2, 0x10(r1)
/* 80C8C3C0  EC 82 00 28 */	fsubs f4, f2, f0
/* 80C8C3C4  88 85 00 11 */	lbz r4, 0x11(r5)
/* 80C8C3C8  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C8C3CC  90 C1 00 08 */	stw r6, 8(r1)
/* 80C8C3D0  C8 41 00 08 */	lfd f2, 8(r1)
/* 80C8C3D4  EC 62 00 28 */	fsubs f3, f2, f0
/* 80C8C3D8  90 E1 00 1C */	stw r7, 0x1c(r1)
/* 80C8C3DC  90 C1 00 18 */	stw r6, 0x18(r1)
/* 80C8C3E0  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 80C8C3E4  EC 42 00 28 */	fsubs f2, f2, f0
/* 80C8C3E8  EC 43 10 28 */	fsubs f2, f3, f2
/* 80C8C3EC  EC 41 00 B2 */	fmuls f2, f1, f2
/* 80C8C3F0  EC 44 10 2A */	fadds f2, f4, f2
/* 80C8C3F4  FC 40 10 1E */	fctiwz f2, f2
/* 80C8C3F8  D8 41 00 20 */	stfd f2, 0x20(r1)
/* 80C8C3FC  80 81 00 24 */	lwz r4, 0x24(r1)
/* 80C8C400  98 83 05 BD */	stb r4, 0x5bd(r3)
/* 80C8C404  88 E5 00 0E */	lbz r7, 0xe(r5)
/* 80C8C408  90 E1 00 2C */	stw r7, 0x2c(r1)
/* 80C8C40C  90 C1 00 28 */	stw r6, 0x28(r1)
/* 80C8C410  C8 41 00 28 */	lfd f2, 0x28(r1)
/* 80C8C414  EC 82 00 28 */	fsubs f4, f2, f0
/* 80C8C418  88 85 00 12 */	lbz r4, 0x12(r5)
/* 80C8C41C  90 81 00 34 */	stw r4, 0x34(r1)
/* 80C8C420  90 C1 00 30 */	stw r6, 0x30(r1)
/* 80C8C424  C8 41 00 30 */	lfd f2, 0x30(r1)
/* 80C8C428  EC 62 00 28 */	fsubs f3, f2, f0
/* 80C8C42C  90 E1 00 3C */	stw r7, 0x3c(r1)
/* 80C8C430  90 C1 00 38 */	stw r6, 0x38(r1)
/* 80C8C434  C8 41 00 38 */	lfd f2, 0x38(r1)
/* 80C8C438  EC 42 00 28 */	fsubs f2, f2, f0
/* 80C8C43C  EC 43 10 28 */	fsubs f2, f3, f2
/* 80C8C440  EC 41 00 B2 */	fmuls f2, f1, f2
/* 80C8C444  EC 44 10 2A */	fadds f2, f4, f2
/* 80C8C448  FC 40 10 1E */	fctiwz f2, f2
/* 80C8C44C  D8 41 00 40 */	stfd f2, 0x40(r1)
/* 80C8C450  80 81 00 44 */	lwz r4, 0x44(r1)
/* 80C8C454  98 83 05 BE */	stb r4, 0x5be(r3)
/* 80C8C458  88 E5 00 0F */	lbz r7, 0xf(r5)
/* 80C8C45C  90 E1 00 4C */	stw r7, 0x4c(r1)
/* 80C8C460  90 C1 00 48 */	stw r6, 0x48(r1)
/* 80C8C464  C8 41 00 48 */	lfd f2, 0x48(r1)
/* 80C8C468  EC 82 00 28 */	fsubs f4, f2, f0
/* 80C8C46C  88 85 00 13 */	lbz r4, 0x13(r5)
/* 80C8C470  90 81 00 54 */	stw r4, 0x54(r1)
/* 80C8C474  90 C1 00 50 */	stw r6, 0x50(r1)
/* 80C8C478  C8 41 00 50 */	lfd f2, 0x50(r1)
/* 80C8C47C  EC 62 00 28 */	fsubs f3, f2, f0
/* 80C8C480  90 E1 00 5C */	stw r7, 0x5c(r1)
/* 80C8C484  90 C1 00 58 */	stw r6, 0x58(r1)
/* 80C8C488  C8 41 00 58 */	lfd f2, 0x58(r1)
/* 80C8C48C  EC 02 00 28 */	fsubs f0, f2, f0
/* 80C8C490  EC 03 00 28 */	fsubs f0, f3, f0
/* 80C8C494  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C8C498  EC 04 00 2A */	fadds f0, f4, f0
/* 80C8C49C  FC 00 00 1E */	fctiwz f0, f0
/* 80C8C4A0  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 80C8C4A4  80 81 00 64 */	lwz r4, 0x64(r1)
/* 80C8C4A8  98 83 05 BF */	stb r4, 0x5bf(r3)
/* 80C8C4AC  48 00 01 08 */	b lbl_80C8C5B4
lbl_80C8C4B0:
/* 80C8C4B0  3C 80 80 C9 */	lis r4, l_HIO@ha
/* 80C8C4B4  38 A4 CD 8C */	addi r5, r4, l_HIO@l
/* 80C8C4B8  88 85 00 11 */	lbz r4, 0x11(r5)
/* 80C8C4BC  90 81 00 64 */	stw r4, 0x64(r1)
/* 80C8C4C0  90 C1 00 60 */	stw r6, 0x60(r1)
/* 80C8C4C4  C8 41 00 60 */	lfd f2, 0x60(r1)
/* 80C8C4C8  EC 82 00 28 */	fsubs f4, f2, f0
/* 80C8C4CC  90 81 00 5C */	stw r4, 0x5c(r1)
/* 80C8C4D0  90 C1 00 58 */	stw r6, 0x58(r1)
/* 80C8C4D4  C8 41 00 58 */	lfd f2, 0x58(r1)
/* 80C8C4D8  EC 62 00 28 */	fsubs f3, f2, f0
/* 80C8C4DC  88 85 00 0D */	lbz r4, 0xd(r5)
/* 80C8C4E0  90 81 00 54 */	stw r4, 0x54(r1)
/* 80C8C4E4  90 C1 00 50 */	stw r6, 0x50(r1)
/* 80C8C4E8  C8 41 00 50 */	lfd f2, 0x50(r1)
/* 80C8C4EC  EC 42 00 28 */	fsubs f2, f2, f0
/* 80C8C4F0  EC 43 10 28 */	fsubs f2, f3, f2
/* 80C8C4F4  EC 41 00 B2 */	fmuls f2, f1, f2
/* 80C8C4F8  EC 44 10 28 */	fsubs f2, f4, f2
/* 80C8C4FC  FC 40 10 1E */	fctiwz f2, f2
/* 80C8C500  D8 41 00 48 */	stfd f2, 0x48(r1)
/* 80C8C504  80 81 00 4C */	lwz r4, 0x4c(r1)
/* 80C8C508  98 83 05 BD */	stb r4, 0x5bd(r3)
/* 80C8C50C  88 85 00 12 */	lbz r4, 0x12(r5)
/* 80C8C510  90 81 00 44 */	stw r4, 0x44(r1)
/* 80C8C514  90 C1 00 40 */	stw r6, 0x40(r1)
/* 80C8C518  C8 41 00 40 */	lfd f2, 0x40(r1)
/* 80C8C51C  EC 82 00 28 */	fsubs f4, f2, f0
/* 80C8C520  90 81 00 3C */	stw r4, 0x3c(r1)
/* 80C8C524  90 C1 00 38 */	stw r6, 0x38(r1)
/* 80C8C528  C8 41 00 38 */	lfd f2, 0x38(r1)
/* 80C8C52C  EC 62 00 28 */	fsubs f3, f2, f0
/* 80C8C530  88 85 00 0E */	lbz r4, 0xe(r5)
/* 80C8C534  90 81 00 34 */	stw r4, 0x34(r1)
/* 80C8C538  90 C1 00 30 */	stw r6, 0x30(r1)
/* 80C8C53C  C8 41 00 30 */	lfd f2, 0x30(r1)
/* 80C8C540  EC 42 00 28 */	fsubs f2, f2, f0
/* 80C8C544  EC 43 10 28 */	fsubs f2, f3, f2
/* 80C8C548  EC 41 00 B2 */	fmuls f2, f1, f2
/* 80C8C54C  EC 44 10 28 */	fsubs f2, f4, f2
/* 80C8C550  FC 40 10 1E */	fctiwz f2, f2
/* 80C8C554  D8 41 00 28 */	stfd f2, 0x28(r1)
/* 80C8C558  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 80C8C55C  98 83 05 BE */	stb r4, 0x5be(r3)
/* 80C8C560  88 85 00 13 */	lbz r4, 0x13(r5)
/* 80C8C564  90 81 00 24 */	stw r4, 0x24(r1)
/* 80C8C568  90 C1 00 20 */	stw r6, 0x20(r1)
/* 80C8C56C  C8 41 00 20 */	lfd f2, 0x20(r1)
/* 80C8C570  EC 82 00 28 */	fsubs f4, f2, f0
/* 80C8C574  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C8C578  90 C1 00 18 */	stw r6, 0x18(r1)
/* 80C8C57C  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 80C8C580  EC 62 00 28 */	fsubs f3, f2, f0
/* 80C8C584  88 85 00 0F */	lbz r4, 0xf(r5)
/* 80C8C588  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C8C58C  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80C8C590  C8 41 00 10 */	lfd f2, 0x10(r1)
/* 80C8C594  EC 02 00 28 */	fsubs f0, f2, f0
/* 80C8C598  EC 03 00 28 */	fsubs f0, f3, f0
/* 80C8C59C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C8C5A0  EC 04 00 28 */	fsubs f0, f4, f0
/* 80C8C5A4  FC 00 00 1E */	fctiwz f0, f0
/* 80C8C5A8  D8 01 00 08 */	stfd f0, 8(r1)
/* 80C8C5AC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80C8C5B0  98 83 05 BF */	stb r4, 0x5bf(r3)
lbl_80C8C5B4:
/* 80C8C5B4  88 83 05 C4 */	lbz r4, 0x5c4(r3)
/* 80C8C5B8  38 84 00 01 */	addi r4, r4, 1
/* 80C8C5BC  98 83 05 C4 */	stb r4, 0x5c4(r3)
/* 80C8C5C0  88 83 05 C4 */	lbz r4, 0x5c4(r3)
/* 80C8C5C4  88 63 05 C5 */	lbz r3, 0x5c5(r3)
/* 80C8C5C8  38 63 FF FF */	addi r3, r3, -1
/* 80C8C5CC  7C 04 18 00 */	cmpw r4, r3
/* 80C8C5D0  40 81 00 08 */	ble lbl_80C8C5D8
/* 80C8C5D4  38 00 00 01 */	li r0, 1
lbl_80C8C5D8:
/* 80C8C5D8  7C 03 03 78 */	mr r3, r0
/* 80C8C5DC  38 21 00 70 */	addi r1, r1, 0x70
/* 80C8C5E0  4E 80 00 20 */	blr 
