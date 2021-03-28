lbl_8030FDE8:
/* 8030FDE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030FDEC  7C 08 02 A6 */	mflr r0
/* 8030FDF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030FDF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8030FDF8  7C 7F 1B 78 */	mr r31, r3
/* 8030FDFC  48 01 43 99 */	bl makeTexCoordTable__Fv
/* 8030FE00  48 01 45 15 */	bl makeTevSwapTable__Fv
/* 8030FE04  48 01 44 39 */	bl makeAlphaCmpTable__Fv
/* 8030FE08  48 01 44 A1 */	bl makeZModeTable__Fv
/* 8030FE0C  38 00 00 00 */	li r0, 0
/* 8030FE10  90 1F 00 34 */	stw r0, 0x34(r31)
/* 8030FE14  7F E3 FB 78 */	mr r3, r31
/* 8030FE18  48 03 66 6D */	bl PSMTXIdentity
/* 8030FE1C  38 00 00 01 */	li r0, 1
/* 8030FE20  90 1F 00 50 */	stw r0, 0x50(r31)
/* 8030FE24  38 80 00 00 */	li r4, 0
/* 8030FE28  90 9F 00 54 */	stw r4, 0x54(r31)
/* 8030FE2C  90 9F 00 38 */	stw r4, 0x38(r31)
/* 8030FE30  90 9F 00 44 */	stw r4, 0x44(r31)
/* 8030FE34  7C 83 23 78 */	mr r3, r4
/* 8030FE38  38 00 00 02 */	li r0, 2
/* 8030FE3C  7C 09 03 A6 */	mtctr r0
lbl_8030FE40:
/* 8030FE40  38 03 00 48 */	addi r0, r3, 0x48
/* 8030FE44  7C 9F 01 2E */	stwx r4, r31, r0
/* 8030FE48  38 63 00 04 */	addi r3, r3, 4
/* 8030FE4C  42 00 FF F4 */	bdnz lbl_8030FE40
/* 8030FE50  38 C0 00 00 */	li r6, 0
/* 8030FE54  90 DF 00 58 */	stw r6, 0x58(r31)
/* 8030FE58  90 DF 00 3C */	stw r6, 0x3c(r31)
/* 8030FE5C  90 DF 00 40 */	stw r6, 0x40(r31)
/* 8030FE60  90 DF 01 04 */	stw r6, 0x104(r31)
/* 8030FE64  90 DF 01 08 */	stw r6, 0x108(r31)
/* 8030FE68  90 DF 01 0C */	stw r6, 0x10c(r31)
/* 8030FE6C  90 DF 01 10 */	stw r6, 0x110(r31)
/* 8030FE70  90 DF 01 14 */	stw r6, 0x114(r31)
/* 8030FE74  38 60 00 00 */	li r3, 0
/* 8030FE78  38 A0 00 01 */	li r5, 1
/* 8030FE7C  3C 80 80 43 */	lis r4, sTexCoordScaleTable__6J3DSys@ha
/* 8030FE80  38 84 4C 2C */	addi r4, r4, sTexCoordScaleTable__6J3DSys@l
/* 8030FE84  38 00 00 08 */	li r0, 8
/* 8030FE88  7C 09 03 A6 */	mtctr r0
lbl_8030FE8C:
/* 8030FE8C  7C E4 1A 14 */	add r7, r4, r3
/* 8030FE90  B0 A7 00 00 */	sth r5, 0(r7)
/* 8030FE94  B0 A7 00 02 */	sth r5, 2(r7)
/* 8030FE98  B0 C7 00 04 */	sth r6, 4(r7)
/* 8030FE9C  B0 C7 00 06 */	sth r6, 6(r7)
/* 8030FEA0  38 63 00 08 */	addi r3, r3, 8
/* 8030FEA4  42 00 FF E8 */	bdnz lbl_8030FE8C
/* 8030FEA8  7F E3 FB 78 */	mr r3, r31
/* 8030FEAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8030FEB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030FEB4  7C 08 03 A6 */	mtlr r0
/* 8030FEB8  38 21 00 10 */	addi r1, r1, 0x10
/* 8030FEBC  4E 80 00 20 */	blr 
