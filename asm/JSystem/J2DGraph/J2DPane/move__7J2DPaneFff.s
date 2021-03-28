lbl_802F6F60:
/* 802F6F60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F6F64  7C 08 02 A6 */	mflr r0
/* 802F6F68  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F6F6C  C0 63 00 28 */	lfs f3, 0x28(r3)
/* 802F6F70  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 802F6F74  EC 83 00 28 */	fsubs f4, f3, f0
/* 802F6F78  C0 63 00 2C */	lfs f3, 0x2c(r3)
/* 802F6F7C  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 802F6F80  EC 63 00 28 */	fsubs f3, f3, f0
/* 802F6F84  D0 21 00 08 */	stfs f1, 8(r1)
/* 802F6F88  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 802F6F8C  EC 01 20 2A */	fadds f0, f1, f4
/* 802F6F90  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802F6F94  EC 02 18 2A */	fadds f0, f2, f3
/* 802F6F98  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802F6F9C  38 81 00 08 */	addi r4, r1, 8
/* 802F6FA0  4B FF FD 79 */	bl func_802F6D18
/* 802F6FA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F6FA8  7C 08 03 A6 */	mtlr r0
/* 802F6FAC  38 21 00 20 */	addi r1, r1, 0x20
/* 802F6FB0  4E 80 00 20 */	blr 
