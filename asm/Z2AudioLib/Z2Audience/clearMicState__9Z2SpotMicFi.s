lbl_802BCDA8:
/* 802BCDA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BCDAC  7C 08 02 A6 */	mflr r0
/* 802BCDB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BCDB4  38 00 00 00 */	li r0, 0
/* 802BCDB8  54 85 10 3A */	slwi r5, r4, 2
/* 802BCDBC  7C A3 2A 14 */	add r5, r3, r5
/* 802BCDC0  90 05 00 10 */	stw r0, 0x10(r5)
/* 802BCDC4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 802BCDC8  D0 05 00 18 */	stfs f0, 0x18(r5)
/* 802BCDCC  7C A3 22 14 */	add r5, r3, r4
/* 802BCDD0  98 05 00 26 */	stb r0, 0x26(r5)
/* 802BCDD4  48 00 00 15 */	bl calcVolumeFactor__9Z2SpotMicFi
/* 802BCDD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BCDDC  7C 08 03 A6 */	mtlr r0
/* 802BCDE0  38 21 00 10 */	addi r1, r1, 0x10
/* 802BCDE4  4E 80 00 20 */	blr 
