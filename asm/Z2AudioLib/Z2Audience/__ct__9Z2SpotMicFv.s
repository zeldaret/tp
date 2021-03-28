lbl_802BCD28:
/* 802BCD28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BCD2C  7C 08 02 A6 */	mflr r0
/* 802BCD30  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BCD34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802BCD38  7C 7F 1B 78 */	mr r31, r3
/* 802BCD3C  C0 02 C1 24 */	lfs f0, lit_1334(r2)
/* 802BCD40  D0 03 00 00 */	stfs f0, 0(r3)
/* 802BCD44  C0 02 C1 28 */	lfs f0, lit_1335(r2)
/* 802BCD48  D0 03 00 04 */	stfs f0, 4(r3)
/* 802BCD4C  C0 02 C0 A0 */	lfs f0, lit_848(r2)
/* 802BCD50  D0 03 00 08 */	stfs f0, 8(r3)
/* 802BCD54  C0 02 C1 2C */	lfs f0, lit_1336(r2)
/* 802BCD58  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 802BCD5C  38 00 00 00 */	li r0, 0
/* 802BCD60  90 03 00 14 */	stw r0, 0x14(r3)
/* 802BCD64  38 00 00 01 */	li r0, 1
/* 802BCD68  98 03 00 24 */	stb r0, 0x24(r3)
/* 802BCD6C  98 03 00 25 */	stb r0, 0x25(r3)
/* 802BCD70  C0 42 C1 30 */	lfs f2, lit_1337(r2)
/* 802BCD74  C0 23 00 04 */	lfs f1, 4(r3)
/* 802BCD78  C0 03 00 00 */	lfs f0, 0(r3)
/* 802BCD7C  EC 01 00 28 */	fsubs f0, f1, f0
/* 802BCD80  EC 02 00 24 */	fdivs f0, f2, f0
/* 802BCD84  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 802BCD88  38 80 00 00 */	li r4, 0
/* 802BCD8C  48 00 00 1D */	bl clearMicState__9Z2SpotMicFi
/* 802BCD90  7F E3 FB 78 */	mr r3, r31
/* 802BCD94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802BCD98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BCD9C  7C 08 03 A6 */	mtlr r0
/* 802BCDA0  38 21 00 10 */	addi r1, r1, 0x10
/* 802BCDA4  4E 80 00 20 */	blr 
