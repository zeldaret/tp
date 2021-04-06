lbl_8024FDF4:
/* 8024FDF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8024FDF8  7C 08 02 A6 */	mflr r0
/* 8024FDFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8024FE00  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8024FE04  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8024FE08  7C 7E 1B 78 */	mr r30, r3
/* 8024FE0C  88 83 02 B0 */	lbz r4, 0x2b0(r3)
/* 8024FE10  48 00 12 39 */	bl getMenuPosIdx__7dName_cFUc
/* 8024FE14  54 7F 10 3A */	slwi r31, r3, 2
/* 8024FE18  7C 7E FA 14 */	add r3, r30, r31
/* 8024FE1C  80 63 02 84 */	lwz r3, 0x284(r3)
/* 8024FE20  88 9E 02 A4 */	lbz r4, 0x2a4(r30)
/* 8024FE24  3C A0 80 43 */	lis r5, g_nmHIO@ha /* 0x80430734@ha */
/* 8024FE28  38 A5 07 34 */	addi r5, r5, g_nmHIO@l /* 0x80430734@l */
/* 8024FE2C  C0 25 00 08 */	lfs f1, 8(r5)
/* 8024FE30  C0 42 B3 C0 */	lfs f2, lit_3820(r2)
/* 8024FE34  38 A0 00 00 */	li r5, 0
/* 8024FE38  48 00 49 95 */	bl scaleAnime__8CPaneMgrFsffUc
/* 8024FE3C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8024FE40  28 00 00 01 */	cmplwi r0, 1
/* 8024FE44  40 82 00 58 */	bne lbl_8024FE9C
/* 8024FE48  38 00 00 96 */	li r0, 0x96
/* 8024FE4C  98 01 00 08 */	stb r0, 8(r1)
/* 8024FE50  98 01 00 09 */	stb r0, 9(r1)
/* 8024FE54  98 01 00 0A */	stb r0, 0xa(r1)
/* 8024FE58  38 00 00 FF */	li r0, 0xff
/* 8024FE5C  98 01 00 0B */	stb r0, 0xb(r1)
/* 8024FE60  80 01 00 08 */	lwz r0, 8(r1)
/* 8024FE64  90 01 00 0C */	stw r0, 0xc(r1)
/* 8024FE68  7C 7E FA 14 */	add r3, r30, r31
/* 8024FE6C  80 63 02 94 */	lwz r3, 0x294(r3)
/* 8024FE70  38 81 00 0C */	addi r4, r1, 0xc
/* 8024FE74  81 83 00 00 */	lwz r12, 0(r3)
/* 8024FE78  81 8C 00 A8 */	lwz r12, 0xa8(r12)
/* 8024FE7C  7D 89 03 A6 */	mtctr r12
/* 8024FE80  4E 80 04 21 */	bctrl 
/* 8024FE84  7F C3 F3 78 */	mr r3, r30
/* 8024FE88  48 00 03 FD */	bl menuCursorMove__7dName_cFv
/* 8024FE8C  38 00 00 04 */	li r0, 4
/* 8024FE90  98 1E 02 AB */	stb r0, 0x2ab(r30)
/* 8024FE94  88 1E 02 AB */	lbz r0, 0x2ab(r30)
/* 8024FE98  98 1E 02 AD */	stb r0, 0x2ad(r30)
lbl_8024FE9C:
/* 8024FE9C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8024FEA0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8024FEA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8024FEA8  7C 08 03 A6 */	mtlr r0
/* 8024FEAC  38 21 00 20 */	addi r1, r1, 0x20
/* 8024FEB0  4E 80 00 20 */	blr 
