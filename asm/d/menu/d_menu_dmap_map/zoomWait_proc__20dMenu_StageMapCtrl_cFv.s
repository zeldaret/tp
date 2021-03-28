lbl_801C205C:
/* 801C205C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C2060  7C 08 02 A6 */	mflr r0
/* 801C2064  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C2068  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C206C  7C 7F 1B 78 */	mr r31, r3
/* 801C2070  81 83 00 00 */	lwz r12, 0(r3)
/* 801C2074  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801C2078  7D 89 03 A6 */	mtctr r12
/* 801C207C  4E 80 04 21 */	bctrl 
/* 801C2080  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C2084  41 82 00 64 */	beq lbl_801C20E8
/* 801C2088  88 1F 00 F8 */	lbz r0, 0xf8(r31)
/* 801C208C  28 00 00 00 */	cmplwi r0, 0
/* 801C2090  40 82 00 28 */	bne lbl_801C20B8
/* 801C2094  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 801C2098  FC 00 0A 10 */	fabs f0, f1
/* 801C209C  FC 40 00 18 */	frsp f2, f0
/* 801C20A0  C0 02 A6 C4 */	lfs f0, lit_4395(r2)
/* 801C20A4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801C20A8  40 81 00 10 */	ble lbl_801C20B8
/* 801C20AC  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 801C20B0  EC 00 08 2A */	fadds f0, f0, f1
/* 801C20B4  D0 1F 00 AC */	stfs f0, 0xac(r31)
lbl_801C20B8:
/* 801C20B8  88 1F 00 F9 */	lbz r0, 0xf9(r31)
/* 801C20BC  28 00 00 00 */	cmplwi r0, 0
/* 801C20C0  40 82 00 28 */	bne lbl_801C20E8
/* 801C20C4  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 801C20C8  FC 00 0A 10 */	fabs f0, f1
/* 801C20CC  FC 40 00 18 */	frsp f2, f0
/* 801C20D0  C0 02 A6 C4 */	lfs f0, lit_4395(r2)
/* 801C20D4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801C20D8  40 81 00 10 */	ble lbl_801C20E8
/* 801C20DC  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 801C20E0  EC 00 08 2A */	fadds f0, f0, f1
/* 801C20E4  D0 1F 00 B0 */	stfs f0, 0xb0(r31)
lbl_801C20E8:
/* 801C20E8  88 1F 00 F8 */	lbz r0, 0xf8(r31)
/* 801C20EC  28 00 00 00 */	cmplwi r0, 0
/* 801C20F0  40 82 00 34 */	bne lbl_801C2124
/* 801C20F4  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 801C20F8  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 801C20FC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801C2100  4C 40 13 82 */	cror 2, 0, 2
/* 801C2104  40 82 00 08 */	bne lbl_801C210C
/* 801C2108  D0 3F 00 AC */	stfs f1, 0xac(r31)
lbl_801C210C:
/* 801C210C  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 801C2110  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 801C2114  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801C2118  4C 41 13 82 */	cror 2, 1, 2
/* 801C211C  40 82 00 08 */	bne lbl_801C2124
/* 801C2120  D0 3F 00 AC */	stfs f1, 0xac(r31)
lbl_801C2124:
/* 801C2124  88 1F 00 F9 */	lbz r0, 0xf9(r31)
/* 801C2128  28 00 00 00 */	cmplwi r0, 0
/* 801C212C  40 82 00 34 */	bne lbl_801C2160
/* 801C2130  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 801C2134  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 801C2138  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801C213C  4C 40 13 82 */	cror 2, 0, 2
/* 801C2140  40 82 00 08 */	bne lbl_801C2148
/* 801C2144  D0 3F 00 B0 */	stfs f1, 0xb0(r31)
lbl_801C2148:
/* 801C2148  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 801C214C  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 801C2150  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 801C2154  4C 41 13 82 */	cror 2, 1, 2
/* 801C2158  40 82 00 08 */	bne lbl_801C2160
/* 801C215C  D0 3F 00 B0 */	stfs f1, 0xb0(r31)
lbl_801C2160:
/* 801C2160  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 801C2164  D0 1F 00 9C */	stfs f0, 0x9c(r31)
/* 801C2168  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 801C216C  D0 1F 00 A0 */	stfs f0, 0xa0(r31)
/* 801C2170  C0 02 A6 60 */	lfs f0, lit_3803(r2)
/* 801C2174  D0 1F 00 B4 */	stfs f0, 0xb4(r31)
/* 801C2178  D0 1F 00 B8 */	stfs f0, 0xb8(r31)
/* 801C217C  7F E3 FB 78 */	mr r3, r31
/* 801C2180  4B FF F1 35 */	bl moveFloor__20dMenu_StageMapCtrl_cFv
/* 801C2184  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C2188  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C218C  7C 08 03 A6 */	mtlr r0
/* 801C2190  38 21 00 10 */	addi r1, r1, 0x10
/* 801C2194  4E 80 00 20 */	blr 
