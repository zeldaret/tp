lbl_80BB1814:
/* 80BB1814  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB1818  7C 08 02 A6 */	mflr r0
/* 80BB181C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB1820  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB1824  93 C1 00 08 */	stw r30, 8(r1)
/* 80BB1828  7C 7F 1B 78 */	mr r31, r3
/* 80BB182C  88 03 0F EA */	lbz r0, 0xfea(r3)
/* 80BB1830  2C 00 00 01 */	cmpwi r0, 1
/* 80BB1834  41 82 00 B8 */	beq lbl_80BB18EC
/* 80BB1838  40 80 00 10 */	bge lbl_80BB1848
/* 80BB183C  2C 00 00 00 */	cmpwi r0, 0
/* 80BB1840  40 80 00 14 */	bge lbl_80BB1854
/* 80BB1844  48 00 01 04 */	b lbl_80BB1948
lbl_80BB1848:
/* 80BB1848  2C 00 00 03 */	cmpwi r0, 3
/* 80BB184C  40 80 00 FC */	bge lbl_80BB1948
/* 80BB1850  48 00 00 C8 */	b lbl_80BB1918
lbl_80BB1854:
/* 80BB1854  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80BB1858  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l
/* 80BB185C  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80BB1860  4B 46 8E B0 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80BB1864  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80BB1868  7C 00 18 50 */	subf r0, r0, r3
/* 80BB186C  B0 1F 0F 98 */	sth r0, 0xf98(r31)
/* 80BB1870  A8 7F 0F AE */	lha r3, 0xfae(r31)
/* 80BB1874  A8 1F 0F 9A */	lha r0, 0xf9a(r31)
/* 80BB1878  7C 03 00 50 */	subf r0, r3, r0
/* 80BB187C  B0 1F 0F 9C */	sth r0, 0xf9c(r31)
/* 80BB1880  A8 7F 0F 9E */	lha r3, 0xf9e(r31)
/* 80BB1884  A8 1F 0F AE */	lha r0, 0xfae(r31)
/* 80BB1888  7C 03 02 14 */	add r0, r3, r0
/* 80BB188C  B0 1F 0F A0 */	sth r0, 0xfa0(r31)
/* 80BB1890  A8 7F 0F A2 */	lha r3, 0xfa2(r31)
/* 80BB1894  A8 1F 0F AE */	lha r0, 0xfae(r31)
/* 80BB1898  7C 03 02 14 */	add r0, r3, r0
/* 80BB189C  B0 1F 0F A4 */	sth r0, 0xfa4(r31)
/* 80BB18A0  A8 7F 0F A6 */	lha r3, 0xfa6(r31)
/* 80BB18A4  A8 1F 0F AE */	lha r0, 0xfae(r31)
/* 80BB18A8  7C 03 02 14 */	add r0, r3, r0
/* 80BB18AC  B0 1F 0F A8 */	sth r0, 0xfa8(r31)
/* 80BB18B0  7F E3 FB 78 */	mr r3, r31
/* 80BB18B4  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80BB18B8  4B 46 8E 58 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80BB18BC  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80BB18C0  A8 1F 0F 96 */	lha r0, 0xf96(r31)
/* 80BB18C4  7C 00 18 50 */	subf r0, r0, r3
/* 80BB18C8  7C 04 00 50 */	subf r0, r4, r0
/* 80BB18CC  7C 03 07 34 */	extsh r3, r0
/* 80BB18D0  4B 7B 38 00 */	b abs
/* 80BB18D4  7C 60 07 34 */	extsh r0, r3
/* 80BB18D8  2C 00 07 D0 */	cmpwi r0, 0x7d0
/* 80BB18DC  40 80 00 6C */	bge lbl_80BB1948
/* 80BB18E0  38 00 00 01 */	li r0, 1
/* 80BB18E4  98 1F 0F EA */	stb r0, 0xfea(r31)
/* 80BB18E8  48 00 00 60 */	b lbl_80BB1948
lbl_80BB18EC:
/* 80BB18EC  A8 1F 0F 96 */	lha r0, 0xf96(r31)
/* 80BB18F0  B0 1F 0F 98 */	sth r0, 0xf98(r31)
/* 80BB18F4  38 00 00 00 */	li r0, 0
/* 80BB18F8  B0 1F 0F AC */	sth r0, 0xfac(r31)
/* 80BB18FC  B0 1F 0F AA */	sth r0, 0xfaa(r31)
/* 80BB1900  3C 60 80 BB */	lis r3, lit_4516@ha
/* 80BB1904  C0 03 38 48 */	lfs f0, lit_4516@l(r3)
/* 80BB1908  D0 1F 10 00 */	stfs f0, 0x1000(r31)
/* 80BB190C  38 00 00 02 */	li r0, 2
/* 80BB1910  98 1F 0F EA */	stb r0, 0xfea(r31)
/* 80BB1914  48 00 00 34 */	b lbl_80BB1948
lbl_80BB1918:
/* 80BB1918  A8 1F 0F 96 */	lha r0, 0xf96(r31)
/* 80BB191C  B0 1F 0F 98 */	sth r0, 0xf98(r31)
/* 80BB1920  38 00 00 00 */	li r0, 0
/* 80BB1924  B0 1F 0F AC */	sth r0, 0xfac(r31)
/* 80BB1928  B0 1F 0F AA */	sth r0, 0xfaa(r31)
/* 80BB192C  3C 80 80 BB */	lis r4, lit_4250@ha
/* 80BB1930  C0 24 38 30 */	lfs f1, lit_4250@l(r4)
/* 80BB1934  C0 1F 10 00 */	lfs f0, 0x1000(r31)
/* 80BB1938  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80BB193C  40 82 00 0C */	bne lbl_80BB1948
/* 80BB1940  98 1F 0F E5 */	stb r0, 0xfe5(r31)
/* 80BB1944  48 00 00 1D */	bl initActionAttack__9daObjBm_cFv
lbl_80BB1948:
/* 80BB1948  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB194C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BB1950  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB1954  7C 08 03 A6 */	mtlr r0
/* 80BB1958  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB195C  4E 80 00 20 */	blr 
