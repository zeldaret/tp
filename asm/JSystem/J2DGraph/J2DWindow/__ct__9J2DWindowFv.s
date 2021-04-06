lbl_802F9A7C:
/* 802F9A7C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802F9A80  7C 08 02 A6 */	mflr r0
/* 802F9A84  90 01 00 34 */	stw r0, 0x34(r1)
/* 802F9A88  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802F9A8C  7C 7F 1B 78 */	mr r31, r3
/* 802F9A90  4B FF C1 69 */	bl __ct__7J2DPaneFv
/* 802F9A94  3C 60 80 3D */	lis r3, __vt__9J2DWindow@ha /* 0x803CD108@ha */
/* 802F9A98  38 03 D1 08 */	addi r0, r3, __vt__9J2DWindow@l /* 0x803CD108@l */
/* 802F9A9C  90 1F 00 00 */	stw r0, 0(r31)
/* 802F9AA0  38 60 00 00 */	li r3, 0
/* 802F9AA4  90 7F 01 00 */	stw r3, 0x100(r31)
/* 802F9AA8  90 7F 01 04 */	stw r3, 0x104(r31)
/* 802F9AAC  90 7F 01 08 */	stw r3, 0x108(r31)
/* 802F9AB0  90 7F 01 0C */	stw r3, 0x10c(r31)
/* 802F9AB4  90 7F 01 10 */	stw r3, 0x110(r31)
/* 802F9AB8  90 7F 01 24 */	stw r3, 0x124(r31)
/* 802F9ABC  38 00 FF FF */	li r0, -1
/* 802F9AC0  90 1F 01 28 */	stw r0, 0x128(r31)
/* 802F9AC4  90 1F 01 2C */	stw r0, 0x12c(r31)
/* 802F9AC8  90 1F 01 30 */	stw r0, 0x130(r31)
/* 802F9ACC  90 1F 01 34 */	stw r0, 0x134(r31)
/* 802F9AD0  90 1F 01 38 */	stw r0, 0x138(r31)
/* 802F9AD4  90 1F 01 3C */	stw r0, 0x13c(r31)
/* 802F9AD8  98 7F 01 44 */	stb r3, 0x144(r31)
/* 802F9ADC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F9AE0  90 01 00 08 */	stw r0, 8(r1)
/* 802F9AE4  90 01 00 18 */	stw r0, 0x18(r1)
/* 802F9AE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F9AEC  90 01 00 10 */	stw r0, 0x10(r1)
/* 802F9AF0  90 01 00 0C */	stw r0, 0xc(r1)
/* 802F9AF4  7F E3 FB 78 */	mr r3, r31
/* 802F9AF8  38 81 00 0C */	addi r4, r1, 0xc
/* 802F9AFC  38 A1 00 10 */	addi r5, r1, 0x10
/* 802F9B00  38 C1 00 14 */	addi r6, r1, 0x14
/* 802F9B04  38 E1 00 18 */	addi r7, r1, 0x18
/* 802F9B08  48 00 16 25 */	bl setContentsColor__9J2DWindowFQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColor
/* 802F9B0C  38 00 00 00 */	li r0, 0
/* 802F9B10  90 01 00 20 */	stw r0, 0x20(r1)
/* 802F9B14  88 01 00 20 */	lbz r0, 0x20(r1)
/* 802F9B18  98 1F 01 3C */	stb r0, 0x13c(r31)
/* 802F9B1C  88 01 00 21 */	lbz r0, 0x21(r1)
/* 802F9B20  98 1F 01 3D */	stb r0, 0x13d(r31)
/* 802F9B24  88 01 00 22 */	lbz r0, 0x22(r1)
/* 802F9B28  98 1F 01 3E */	stb r0, 0x13e(r31)
/* 802F9B2C  88 01 00 23 */	lbz r0, 0x23(r1)
/* 802F9B30  98 1F 01 3F */	stb r0, 0x13f(r31)
/* 802F9B34  38 00 FF FF */	li r0, -1
/* 802F9B38  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802F9B3C  88 01 00 1C */	lbz r0, 0x1c(r1)
/* 802F9B40  98 1F 01 38 */	stb r0, 0x138(r31)
/* 802F9B44  88 01 00 1D */	lbz r0, 0x1d(r1)
/* 802F9B48  98 1F 01 39 */	stb r0, 0x139(r31)
/* 802F9B4C  88 01 00 1E */	lbz r0, 0x1e(r1)
/* 802F9B50  98 1F 01 3A */	stb r0, 0x13a(r31)
/* 802F9B54  88 01 00 1F */	lbz r0, 0x1f(r1)
/* 802F9B58  98 1F 01 3B */	stb r0, 0x13b(r31)
/* 802F9B5C  7F E3 FB 78 */	mr r3, r31
/* 802F9B60  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802F9B64  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802F9B68  7C 08 03 A6 */	mtlr r0
/* 802F9B6C  38 21 00 30 */	addi r1, r1, 0x30
/* 802F9B70  4E 80 00 20 */	blr 
