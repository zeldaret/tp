lbl_802E9B0C:
/* 802E9B0C  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 802E9B10  7C 08 02 A6 */	mflr r0
/* 802E9B14  90 01 01 04 */	stw r0, 0x104(r1)
/* 802E9B18  93 E1 00 FC */	stw r31, 0xfc(r1)
/* 802E9B1C  93 C1 00 F8 */	stw r30, 0xf8(r1)
/* 802E9B20  7C 7E 1B 78 */	mr r30, r3
/* 802E9B24  7C 9F 23 78 */	mr r31, r4
/* 802E9B28  38 61 00 1C */	addi r3, r1, 0x1c
/* 802E9B2C  4B FF FB 45 */	bl __ct__13J2DOrthoGraphFv
/* 802E9B30  80 1F 00 00 */	lwz r0, 0(r31)
/* 802E9B34  90 01 00 18 */	stw r0, 0x18(r1)
/* 802E9B38  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E9B3C  90 01 00 10 */	stw r0, 0x10(r1)
/* 802E9B40  90 01 00 0C */	stw r0, 0xc(r1)
/* 802E9B44  90 01 00 08 */	stw r0, 8(r1)
/* 802E9B48  38 61 00 1C */	addi r3, r1, 0x1c
/* 802E9B4C  38 81 00 08 */	addi r4, r1, 8
/* 802E9B50  38 A1 00 0C */	addi r5, r1, 0xc
/* 802E9B54  38 C1 00 10 */	addi r6, r1, 0x10
/* 802E9B58  38 E1 00 14 */	addi r7, r1, 0x14
/* 802E9B5C  4B FF F5 BD */	bl setColor__14J2DGrafContextFQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColor
/* 802E9B60  38 61 00 1C */	addi r3, r1, 0x1c
/* 802E9B64  7F C4 F3 78 */	mr r4, r30
/* 802E9B68  4B FF F6 F9 */	bl func_802E9260
/* 802E9B6C  3C 60 80 3D */	lis r3, __vt__13J2DOrthoGraph@ha
/* 802E9B70  38 03 C9 E0 */	addi r0, r3, __vt__13J2DOrthoGraph@l
/* 802E9B74  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802E9B78  3C 60 80 3D */	lis r3, __vt__14J2DGrafContext@ha
/* 802E9B7C  38 03 C9 B8 */	addi r0, r3, __vt__14J2DGrafContext@l
/* 802E9B80  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802E9B84  83 E1 00 FC */	lwz r31, 0xfc(r1)
/* 802E9B88  83 C1 00 F8 */	lwz r30, 0xf8(r1)
/* 802E9B8C  80 01 01 04 */	lwz r0, 0x104(r1)
/* 802E9B90  7C 08 03 A6 */	mtlr r0
/* 802E9B94  38 21 01 00 */	addi r1, r1, 0x100
/* 802E9B98  4E 80 00 20 */	blr 
