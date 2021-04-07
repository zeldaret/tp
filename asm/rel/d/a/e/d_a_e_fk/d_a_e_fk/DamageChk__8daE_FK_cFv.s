lbl_806BA188:
/* 806BA188  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806BA18C  7C 08 02 A6 */	mflr r0
/* 806BA190  90 01 00 14 */	stw r0, 0x14(r1)
/* 806BA194  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806BA198  93 C1 00 08 */	stw r30, 8(r1)
/* 806BA19C  7C 7F 1B 78 */	mr r31, r3
/* 806BA1A0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806BA1A4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806BA1A8  83 C4 5D AC */	lwz r30, 0x5dac(r4)
/* 806BA1AC  A8 03 05 62 */	lha r0, 0x562(r3)
/* 806BA1B0  2C 00 00 00 */	cmpwi r0, 0
/* 806BA1B4  41 81 00 80 */	bgt lbl_806BA234
/* 806BA1B8  38 80 00 08 */	li r4, 8
/* 806BA1BC  38 A0 00 00 */	li r5, 0
/* 806BA1C0  3C C0 80 6C */	lis r6, lit_4139@ha /* 0x806BB7B4@ha */
/* 806BA1C4  C0 26 B7 B4 */	lfs f1, lit_4139@l(r6)  /* 0x806BB7B4@l */
/* 806BA1C8  3C C0 80 6C */	lis r6, lit_3828@ha /* 0x806BB6D8@ha */
/* 806BA1CC  C0 46 B6 D8 */	lfs f2, lit_3828@l(r6)  /* 0x806BB6D8@l */
/* 806BA1D0  4B FF F8 59 */	bl SetAnm__8daE_FK_cFiiff
/* 806BA1D4  38 00 00 04 */	li r0, 4
/* 806BA1D8  98 1F 06 15 */	stb r0, 0x615(r31)
/* 806BA1DC  38 00 00 00 */	li r0, 0
/* 806BA1E0  98 1F 06 16 */	stb r0, 0x616(r31)
/* 806BA1E4  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 806BA1E8  80 1F 06 44 */	lwz r0, 0x644(r31)
/* 806BA1EC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806BA1F0  90 1F 06 44 */	stw r0, 0x644(r31)
/* 806BA1F4  80 1F 07 7C */	lwz r0, 0x77c(r31)
/* 806BA1F8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806BA1FC  90 1F 07 7C */	stw r0, 0x77c(r31)
/* 806BA200  3C 60 80 6C */	lis r3, data_806BB938@ha /* 0x806BB938@ha */
/* 806BA204  38 63 B9 38 */	addi r3, r3, data_806BB938@l /* 0x806BB938@l */
/* 806BA208  A8 63 00 00 */	lha r3, 0(r3)
/* 806BA20C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 806BA210  7C 03 00 51 */	subf. r0, r3, r0
/* 806BA214  41 80 00 14 */	blt lbl_806BA228
/* 806BA218  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 806BA21C  38 03 20 00 */	addi r0, r3, 0x2000
/* 806BA220  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 806BA224  48 00 00 10 */	b lbl_806BA234
lbl_806BA228:
/* 806BA228  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 806BA22C  38 03 E0 00 */	addi r0, r3, -8192
/* 806BA230  B0 1F 04 DE */	sth r0, 0x4de(r31)
lbl_806BA234:
/* 806BA234  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806BA238  83 C1 00 08 */	lwz r30, 8(r1)
/* 806BA23C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806BA240  7C 08 03 A6 */	mtlr r0
/* 806BA244  38 21 00 10 */	addi r1, r1, 0x10
/* 806BA248  4E 80 00 20 */	blr 
