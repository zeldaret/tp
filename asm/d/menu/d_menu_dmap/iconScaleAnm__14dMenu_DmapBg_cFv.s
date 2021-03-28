lbl_801B8954:
/* 801B8954  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B8958  7C 08 02 A6 */	mflr r0
/* 801B895C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B8960  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B8964  93 C1 00 08 */	stw r30, 8(r1)
/* 801B8968  7C 7E 1B 78 */	mr r30, r3
/* 801B896C  3B E0 00 00 */	li r31, 0
/* 801B8970  88 83 0D D2 */	lbz r4, 0xdd2(r3)
/* 801B8974  88 63 0D D1 */	lbz r3, 0xdd1(r3)
/* 801B8978  7C 04 18 40 */	cmplw r4, r3
/* 801B897C  40 81 00 0C */	ble lbl_801B8988
/* 801B8980  38 60 00 01 */	li r3, 1
/* 801B8984  48 00 00 70 */	b lbl_801B89F4
lbl_801B8988:
/* 801B8988  38 A0 00 04 */	li r5, 4
/* 801B898C  4B E6 77 D5 */	bl fopMsgM_valueIncrease__FiiUc
/* 801B8990  C0 5E 0D AC */	lfs f2, 0xdac(r30)
/* 801B8994  C0 1E 0D B0 */	lfs f0, 0xdb0(r30)
/* 801B8998  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801B899C  40 81 00 18 */	ble lbl_801B89B4
/* 801B89A0  C0 02 A6 00 */	lfs f0, lit_4133(r2)
/* 801B89A4  EC 40 00 72 */	fmuls f2, f0, f1
/* 801B89A8  C0 02 A5 EC */	lfs f0, lit_3963(r2)
/* 801B89AC  EC 60 08 28 */	fsubs f3, f0, f1
/* 801B89B0  48 00 00 14 */	b lbl_801B89C4
lbl_801B89B4:
/* 801B89B4  C0 02 A5 EC */	lfs f0, lit_3963(r2)
/* 801B89B8  EC 20 08 28 */	fsubs f1, f0, f1
/* 801B89BC  FC 40 08 90 */	fmr f2, f1
/* 801B89C0  EC 60 08 28 */	fsubs f3, f0, f1
lbl_801B89C4:
/* 801B89C4  38 7E 00 04 */	addi r3, r30, 4
/* 801B89C8  38 80 00 01 */	li r4, 1
/* 801B89CC  48 00 B4 F9 */	bl iconScale__16dMenuMapCommon_cFifff
/* 801B89D0  88 7E 0D D2 */	lbz r3, 0xdd2(r30)
/* 801B89D4  38 03 00 01 */	addi r0, r3, 1
/* 801B89D8  98 1E 0D D2 */	stb r0, 0xdd2(r30)
/* 801B89DC  88 7E 0D D2 */	lbz r3, 0xdd2(r30)
/* 801B89E0  88 1E 0D D1 */	lbz r0, 0xdd1(r30)
/* 801B89E4  7C 03 00 40 */	cmplw r3, r0
/* 801B89E8  41 80 00 08 */	blt lbl_801B89F0
/* 801B89EC  3B E0 00 01 */	li r31, 1
lbl_801B89F0:
/* 801B89F0  7F E3 FB 78 */	mr r3, r31
lbl_801B89F4:
/* 801B89F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B89F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 801B89FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B8A00  7C 08 03 A6 */	mtlr r0
/* 801B8A04  38 21 00 10 */	addi r1, r1, 0x10
/* 801B8A08  4E 80 00 20 */	blr 
