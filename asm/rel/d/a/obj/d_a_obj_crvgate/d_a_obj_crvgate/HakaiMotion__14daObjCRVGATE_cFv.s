lbl_80BD21E4:
/* 80BD21E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD21E8  7C 08 02 A6 */	mflr r0
/* 80BD21EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD21F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BD21F4  7C 7F 1B 78 */	mr r31, r3
/* 80BD21F8  A8 03 06 46 */	lha r0, 0x646(r3)
/* 80BD21FC  2C 00 A0 00 */	cmpwi r0, -24576
/* 80BD2200  40 80 00 14 */	bge lbl_80BD2214
/* 80BD2204  A8 7F 06 48 */	lha r3, 0x648(r31)
/* 80BD2208  38 03 60 00 */	addi r0, r3, 0x6000
/* 80BD220C  20 00 A0 00 */	subfic r0, r0, -24576
/* 80BD2210  B0 1F 06 48 */	sth r0, 0x648(r31)
lbl_80BD2214:
/* 80BD2214  38 7F 06 46 */	addi r3, r31, 0x646
/* 80BD2218  A8 9F 06 48 */	lha r4, 0x648(r31)
/* 80BD221C  38 A0 00 06 */	li r5, 6
/* 80BD2220  38 C0 20 00 */	li r6, 0x2000
/* 80BD2224  38 E0 00 50 */	li r7, 0x50
/* 80BD2228  4B 69 E3 19 */	bl cLib_addCalcAngleS__FPsssss
/* 80BD222C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80BD2230  38 63 06 46 */	addi r3, r3, 0x646
/* 80BD2234  A8 1F 06 48 */	lha r0, 0x648(r31)
/* 80BD2238  7C 00 00 D0 */	neg r0, r0
/* 80BD223C  7C 04 07 34 */	extsh r4, r0
/* 80BD2240  38 A0 00 06 */	li r5, 6
/* 80BD2244  38 C0 20 00 */	li r6, 0x2000
/* 80BD2248  38 E0 00 50 */	li r7, 0x50
/* 80BD224C  4B 69 E2 F5 */	bl cLib_addCalcAngleS__FPsssss
/* 80BD2250  C0 3F 05 E4 */	lfs f1, 0x5e4(r31)
/* 80BD2254  C0 1F 06 18 */	lfs f0, 0x618(r31)
/* 80BD2258  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD225C  4C 40 13 82 */	cror 2, 0, 2
/* 80BD2260  40 82 00 54 */	bne lbl_80BD22B4
/* 80BD2264  88 7F 05 AB */	lbz r3, 0x5ab(r31)
/* 80BD2268  38 03 00 01 */	addi r0, r3, 1
/* 80BD226C  98 1F 05 AB */	stb r0, 0x5ab(r31)
/* 80BD2270  C0 1F 06 18 */	lfs f0, 0x618(r31)
/* 80BD2274  D0 1F 05 E4 */	stfs f0, 0x5e4(r31)
/* 80BD2278  38 00 40 00 */	li r0, 0x4000
/* 80BD227C  B0 1F 05 D8 */	sth r0, 0x5d8(r31)
/* 80BD2280  88 1F 05 AB */	lbz r0, 0x5ab(r31)
/* 80BD2284  28 00 00 03 */	cmplwi r0, 3
/* 80BD2288  40 81 00 18 */	ble lbl_80BD22A0
/* 80BD228C  7F E3 FB 78 */	mr r3, r31
/* 80BD2290  4B FF E8 ED */	bl SetOpen__14daObjCRVGATE_cFv
/* 80BD2294  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80BD2298  4B FF E8 E5 */	bl SetOpen__14daObjCRVGATE_cFv
/* 80BD229C  48 00 00 18 */	b lbl_80BD22B4
lbl_80BD22A0:
/* 80BD22A0  3C 60 80 BD */	lis r3, lit_4663@ha /* 0x80BD317C@ha */
/* 80BD22A4  C0 23 31 7C */	lfs f1, lit_4663@l(r3)  /* 0x80BD317C@l */
/* 80BD22A8  C0 1F 05 F0 */	lfs f0, 0x5f0(r31)
/* 80BD22AC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BD22B0  D0 1F 05 F0 */	stfs f0, 0x5f0(r31)
lbl_80BD22B4:
/* 80BD22B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BD22B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD22BC  7C 08 03 A6 */	mtlr r0
/* 80BD22C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD22C4  4E 80 00 20 */	blr 
