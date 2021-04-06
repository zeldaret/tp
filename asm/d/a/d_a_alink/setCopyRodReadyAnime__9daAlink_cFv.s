lbl_800E1840:
/* 800E1840  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E1844  7C 08 02 A6 */	mflr r0
/* 800E1848  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E184C  39 61 00 20 */	addi r11, r1, 0x20
/* 800E1850  48 28 09 8D */	bl _savegpr_29
/* 800E1854  7C 7D 1B 78 */	mr r29, r3
/* 800E1858  83 E3 27 E0 */	lwz r31, 0x27e0(r3)
/* 800E185C  3B C0 00 01 */	li r30, 1
/* 800E1860  7F E3 FB 78 */	mr r3, r31
/* 800E1864  4B F9 1F 81 */	bl LockonTruth__12dAttention_cFv
/* 800E1868  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E186C  40 82 00 14 */	bne lbl_800E1880
/* 800E1870  80 1F 03 34 */	lwz r0, 0x334(r31)
/* 800E1874  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 800E1878  40 82 00 08 */	bne lbl_800E1880
/* 800E187C  3B C0 00 00 */	li r30, 0
lbl_800E1880:
/* 800E1880  7F A3 EB 78 */	mr r3, r29
/* 800E1884  38 80 00 54 */	li r4, 0x54
/* 800E1888  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 800E188C  41 82 00 14 */	beq lbl_800E18A0
/* 800E1890  3C A0 80 39 */	lis r5, m__18daAlinkHIO_boom_c0@ha /* 0x8038E6C8@ha */
/* 800E1894  38 A5 E6 C8 */	addi r5, r5, m__18daAlinkHIO_boom_c0@l /* 0x8038E6C8@l */
/* 800E1898  C0 25 00 2C */	lfs f1, 0x2c(r5)
/* 800E189C  48 00 00 08 */	b lbl_800E18A4
lbl_800E18A0:
/* 800E18A0  C0 22 92 C0 */	lfs f1, lit_6108(r2)
lbl_800E18A4:
/* 800E18A4  C0 42 92 C4 */	lfs f2, lit_6109(r2)
/* 800E18A8  4B FC BB 01 */	bl setUpperAnimeBaseSpeed__9daAlink_cFUsff
/* 800E18AC  7F A3 EB 78 */	mr r3, r29
/* 800E18B0  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 800E18B4  81 8C 02 A0 */	lwz r12, 0x2a0(r12)
/* 800E18B8  7D 89 03 A6 */	mtctr r12
/* 800E18BC  4E 80 04 21 */	bctrl 
/* 800E18C0  2C 03 00 00 */	cmpwi r3, 0
/* 800E18C4  41 82 00 18 */	beq lbl_800E18DC
/* 800E18C8  7F A3 EB 78 */	mr r3, r29
/* 800E18CC  3C 80 00 02 */	lis r4, 0x0002 /* 0x0002006B@ha */
/* 800E18D0  38 84 00 6B */	addi r4, r4, 0x006B /* 0x0002006B@l */
/* 800E18D4  4B FD D8 19 */	bl seStartSwordCut__9daAlink_cFUl
/* 800E18D8  48 00 00 14 */	b lbl_800E18EC
lbl_800E18DC:
/* 800E18DC  7F A3 EB 78 */	mr r3, r29
/* 800E18E0  3C 80 00 02 */	lis r4, 0x0002 /* 0x0002008F@ha */
/* 800E18E4  38 84 00 8F */	addi r4, r4, 0x008F /* 0x0002008F@l */
/* 800E18E8  4B FD D8 05 */	bl seStartSwordCut__9daAlink_cFUl
lbl_800E18EC:
/* 800E18EC  C0 02 93 78 */	lfs f0, lit_8676(r2)
/* 800E18F0  D0 1D 13 6C */	stfs f0, 0x136c(r29)
/* 800E18F4  3C 00 01 00 */	lis r0, 0x100
/* 800E18F8  90 1D 12 3C */	stw r0, 0x123c(r29)
/* 800E18FC  7F A3 EB 78 */	mr r3, r29
/* 800E1900  4B FC A1 E1 */	bl initLockAt__9daAlink_cFv
/* 800E1904  39 61 00 20 */	addi r11, r1, 0x20
/* 800E1908  48 28 09 21 */	bl _restgpr_29
/* 800E190C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E1910  7C 08 03 A6 */	mtlr r0
/* 800E1914  38 21 00 20 */	addi r1, r1, 0x20
/* 800E1918  4E 80 00 20 */	blr 
