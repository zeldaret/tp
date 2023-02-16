lbl_802BBB48:
/* 802BBB48  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802BBB4C  7C 08 02 A6 */	mflr r0
/* 802BBB50  90 01 00 34 */	stw r0, 0x34(r1)
/* 802BBB54  39 61 00 30 */	addi r11, r1, 0x30
/* 802BBB58  48 0A 66 85 */	bl _savegpr_29
/* 802BBB5C  7C 9D 23 78 */	mr r29, r4
/* 802BBB60  7C BE 2B 78 */	mr r30, r5
/* 802BBB64  80 04 00 00 */	lwz r0, 0(r4)
/* 802BBB68  90 01 00 0C */	stw r0, 0xc(r1)
/* 802BBB6C  80 6D 85 D8 */	lwz r3, __OSReport_disable-0x40(r13)
/* 802BBB70  38 81 00 0C */	addi r4, r1, 0xc
/* 802BBB74  4B FE B7 19 */	bl getData__13JAUSoundTableCF10JAISoundID
/* 802BBB78  7C 7F 1B 78 */	mr r31, r3
/* 802BBB7C  80 1D 00 00 */	lwz r0, 0(r29)
/* 802BBB80  90 01 00 08 */	stw r0, 8(r1)
/* 802BBB84  80 6D 85 D8 */	lwz r3, __OSReport_disable-0x40(r13)
/* 802BBB88  38 81 00 08 */	addi r4, r1, 8
/* 802BBB8C  4B FE B5 D5 */	bl getTypeID__13JAUSoundTableCF10JAISoundID
/* 802BBB90  28 1F 00 00 */	cmplwi r31, 0
/* 802BBB94  41 82 00 34 */	beq lbl_802BBBC8
/* 802BBB98  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 802BBB9C  41 82 00 2C */	beq lbl_802BBBC8
/* 802BBBA0  C0 42 C0 98 */	lfs f2, lit_1070(r2)
/* 802BBBA4  88 1F 00 01 */	lbz r0, 1(r31)
/* 802BBBA8  C8 22 C0 88 */	lfd f1, lit_973(r2)
/* 802BBBAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BBBB0  3C 00 43 30 */	lis r0, 0x4330
/* 802BBBB4  90 01 00 10 */	stw r0, 0x10(r1)
/* 802BBBB8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802BBBBC  EC 00 08 28 */	fsubs f0, f0, f1
/* 802BBBC0  EC 02 00 32 */	fmuls f0, f2, f0
/* 802BBBC4  D0 1E 00 3C */	stfs f0, 0x3c(r30)
lbl_802BBBC8:
/* 802BBBC8  39 61 00 30 */	addi r11, r1, 0x30
/* 802BBBCC  48 0A 66 5D */	bl _restgpr_29
/* 802BBBD0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802BBBD4  7C 08 03 A6 */	mtlr r0
/* 802BBBD8  38 21 00 30 */	addi r1, r1, 0x30
/* 802BBBDC  4E 80 00 20 */	blr 
