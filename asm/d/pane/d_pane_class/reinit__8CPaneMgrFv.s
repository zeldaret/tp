lbl_80253B2C:
/* 80253B2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80253B30  7C 08 02 A6 */	mflr r0
/* 80253B34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80253B38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80253B3C  7C 7F 1B 78 */	mr r31, r3
/* 80253B40  80 63 00 04 */	lwz r3, 4(r3)
/* 80253B44  48 0A 35 BD */	bl getBounds__7J2DPaneFv
/* 80253B48  C0 03 00 00 */	lfs f0, 0(r3)
/* 80253B4C  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 80253B50  80 7F 00 04 */	lwz r3, 4(r31)
/* 80253B54  48 0A 35 AD */	bl getBounds__7J2DPaneFv
/* 80253B58  C0 03 00 04 */	lfs f0, 4(r3)
/* 80253B5C  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 80253B60  7F E3 FB 78 */	mr r3, r31
/* 80253B64  48 00 07 85 */	bl getGlobalPosX__8CPaneMgrFv
/* 80253B68  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 80253B6C  7F E3 FB 78 */	mr r3, r31
/* 80253B70  48 00 07 F5 */	bl getGlobalPosY__8CPaneMgrFv
/* 80253B74  D0 3F 00 30 */	stfs f1, 0x30(r31)
/* 80253B78  80 7F 00 04 */	lwz r3, 4(r31)
/* 80253B7C  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 80253B80  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80253B84  EC 01 00 28 */	fsubs f0, f1, f0
/* 80253B88  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 80253B8C  80 7F 00 04 */	lwz r3, 4(r31)
/* 80253B90  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 80253B94  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 80253B98  EC 01 00 28 */	fsubs f0, f1, f0
/* 80253B9C  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 80253BA0  80 7F 00 04 */	lwz r3, 4(r31)
/* 80253BA4  C0 03 00 CC */	lfs f0, 0xcc(r3)
/* 80253BA8  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 80253BAC  80 7F 00 04 */	lwz r3, 4(r31)
/* 80253BB0  C0 03 00 D0 */	lfs f0, 0xd0(r3)
/* 80253BB4  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 80253BB8  80 7F 00 04 */	lwz r3, 4(r31)
/* 80253BBC  C0 03 00 D4 */	lfs f0, 0xd4(r3)
/* 80253BC0  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 80253BC4  80 7F 00 04 */	lwz r3, 4(r31)
/* 80253BC8  C0 03 00 D8 */	lfs f0, 0xd8(r3)
/* 80253BCC  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 80253BD0  80 7F 00 04 */	lwz r3, 4(r31)
/* 80253BD4  C0 03 00 C0 */	lfs f0, 0xc0(r3)
/* 80253BD8  D0 1F 00 4C */	stfs f0, 0x4c(r31)
/* 80253BDC  80 7F 00 04 */	lwz r3, 4(r31)
/* 80253BE0  C0 03 00 C4 */	lfs f0, 0xc4(r3)
/* 80253BE4  D0 1F 00 50 */	stfs f0, 0x50(r31)
/* 80253BE8  80 7F 00 04 */	lwz r3, 4(r31)
/* 80253BEC  C0 03 00 C8 */	lfs f0, 0xc8(r3)
/* 80253BF0  D0 1F 00 54 */	stfs f0, 0x54(r31)
/* 80253BF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80253BF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80253BFC  7C 08 03 A6 */	mtlr r0
/* 80253C00  38 21 00 10 */	addi r1, r1, 0x10
/* 80253C04  4E 80 00 20 */	blr 
