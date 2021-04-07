lbl_802E8B08:
/* 802E8B08  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802E8B0C  7C 08 02 A6 */	mflr r0
/* 802E8B10  90 01 00 34 */	stw r0, 0x34(r1)
/* 802E8B14  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802E8B18  7C 7F 1B 78 */	mr r31, r3
/* 802E8B1C  3C 80 80 3D */	lis r4, __vt__14J2DGrafContext@ha /* 0x803CC9B8@ha */
/* 802E8B20  38 04 C9 B8 */	addi r0, r4, __vt__14J2DGrafContext@l /* 0x803CC9B8@l */
/* 802E8B24  90 03 00 00 */	stw r0, 0(r3)
/* 802E8B28  D0 23 00 04 */	stfs f1, 4(r3)
/* 802E8B2C  D0 43 00 08 */	stfs f2, 8(r3)
/* 802E8B30  EC 01 18 2A */	fadds f0, f1, f3
/* 802E8B34  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 802E8B38  EC 62 20 2A */	fadds f3, f2, f4
/* 802E8B3C  D0 63 00 10 */	stfs f3, 0x10(r3)
/* 802E8B40  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 802E8B44  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 802E8B48  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 802E8B4C  D0 63 00 20 */	stfs f3, 0x20(r3)
/* 802E8B50  38 00 FF FF */	li r0, -1
/* 802E8B54  90 03 00 24 */	stw r0, 0x24(r3)
/* 802E8B58  90 03 00 28 */	stw r0, 0x28(r3)
/* 802E8B5C  90 03 00 2C */	stw r0, 0x2c(r3)
/* 802E8B60  90 03 00 30 */	stw r0, 0x30(r3)
/* 802E8B64  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802E8B68  90 01 00 08 */	stw r0, 8(r1)
/* 802E8B6C  90 01 00 18 */	stw r0, 0x18(r1)
/* 802E8B70  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E8B74  90 01 00 10 */	stw r0, 0x10(r1)
/* 802E8B78  90 01 00 0C */	stw r0, 0xc(r1)
/* 802E8B7C  38 81 00 0C */	addi r4, r1, 0xc
/* 802E8B80  38 A1 00 10 */	addi r5, r1, 0x10
/* 802E8B84  38 C1 00 14 */	addi r6, r1, 0x14
/* 802E8B88  38 E1 00 18 */	addi r7, r1, 0x18
/* 802E8B8C  48 00 05 8D */	bl setColor__14J2DGrafContextFQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColor
/* 802E8B90  7F E3 FB 78 */	mr r3, r31
/* 802E8B94  38 80 00 06 */	li r4, 6
/* 802E8B98  48 00 06 9D */	bl setLineWidth__14J2DGrafContextFUc
/* 802E8B9C  7F E3 FB 78 */	mr r3, r31
/* 802E8BA0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802E8BA4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802E8BA8  7C 08 03 A6 */	mtlr r0
/* 802E8BAC  38 21 00 30 */	addi r1, r1, 0x30
/* 802E8BB0  4E 80 00 20 */	blr 
