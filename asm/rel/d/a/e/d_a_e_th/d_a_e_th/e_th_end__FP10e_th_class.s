lbl_807B18C0:
/* 807B18C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807B18C4  7C 08 02 A6 */	mflr r0
/* 807B18C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 807B18CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807B18D0  93 C1 00 08 */	stw r30, 8(r1)
/* 807B18D4  7C 7E 1B 78 */	mr r30, r3
/* 807B18D8  3C 60 80 7B */	lis r3, lit_3906@ha
/* 807B18DC  3B E3 44 9C */	addi r31, r3, lit_3906@l
/* 807B18E0  38 00 00 05 */	li r0, 5
/* 807B18E4  B0 1E 06 A4 */	sth r0, 0x6a4(r30)
/* 807B18E8  A8 1E 05 B4 */	lha r0, 0x5b4(r30)
/* 807B18EC  2C 00 00 02 */	cmpwi r0, 2
/* 807B18F0  41 82 00 84 */	beq lbl_807B1974
/* 807B18F4  40 80 00 14 */	bge lbl_807B1908
/* 807B18F8  2C 00 00 00 */	cmpwi r0, 0
/* 807B18FC  41 82 00 78 */	beq lbl_807B1974
/* 807B1900  40 80 00 14 */	bge lbl_807B1914
/* 807B1904  48 00 00 70 */	b lbl_807B1974
lbl_807B1908:
/* 807B1908  2C 00 00 04 */	cmpwi r0, 4
/* 807B190C  40 80 00 68 */	bge lbl_807B1974
/* 807B1910  48 00 00 54 */	b lbl_807B1964
lbl_807B1914:
/* 807B1914  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 807B1918  38 80 00 01 */	li r4, 1
/* 807B191C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807B1920  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807B1924  40 82 00 18 */	bne lbl_807B193C
/* 807B1928  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807B192C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807B1930  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807B1934  41 82 00 08 */	beq lbl_807B193C
/* 807B1938  38 80 00 00 */	li r4, 0
lbl_807B193C:
/* 807B193C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807B1940  41 82 00 34 */	beq lbl_807B1974
/* 807B1944  38 00 00 02 */	li r0, 2
/* 807B1948  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 807B194C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807B1950  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807B1954  38 63 09 58 */	addi r3, r3, 0x958
/* 807B1958  38 80 00 07 */	li r4, 7
/* 807B195C  4B 88 2F BC */	b onDungeonItem__12dSv_memBit_cFi
/* 807B1960  48 00 00 14 */	b lbl_807B1974
lbl_807B1964:
/* 807B1964  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 807B1968  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 807B196C  EC 01 00 2A */	fadds f0, f1, f0
/* 807B1970  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
lbl_807B1974:
/* 807B1974  88 1E 0D 8F */	lbz r0, 0xd8f(r30)
/* 807B1978  7C 00 07 75 */	extsb. r0, r0
/* 807B197C  41 82 00 18 */	beq lbl_807B1994
/* 807B1980  38 7E 0D 90 */	addi r3, r30, 0xd90
/* 807B1984  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 807B1988  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807B198C  C0 7F 00 AC */	lfs f3, 0xac(r31)
/* 807B1990  4B AB E0 AC */	b cLib_addCalc2__FPffff
lbl_807B1994:
/* 807B1994  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807B1998  83 C1 00 08 */	lwz r30, 8(r1)
/* 807B199C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807B19A0  7C 08 03 A6 */	mtlr r0
/* 807B19A4  38 21 00 10 */	addi r1, r1, 0x10
/* 807B19A8  4E 80 00 20 */	blr 
