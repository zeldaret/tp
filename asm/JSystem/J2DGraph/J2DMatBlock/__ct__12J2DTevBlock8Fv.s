lbl_802EED64:
/* 802EED64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EED68  7C 08 02 A6 */	mflr r0
/* 802EED6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EED70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802EED74  7C 7F 1B 78 */	mr r31, r3
/* 802EED78  3C 60 80 3D */	lis r3, __vt__11J2DTevBlock@ha
/* 802EED7C  38 03 CE 74 */	addi r0, r3, __vt__11J2DTevBlock@l
/* 802EED80  90 1F 00 00 */	stw r0, 0(r31)
/* 802EED84  3C 60 80 3D */	lis r3, __vt__12J2DTevBlock8@ha
/* 802EED88  38 03 CB 84 */	addi r0, r3, __vt__12J2DTevBlock8@l
/* 802EED8C  90 1F 00 00 */	stw r0, 0(r31)
/* 802EED90  38 7F 00 16 */	addi r3, r31, 0x16
/* 802EED94  3C 80 80 2F */	lis r4, __ct__11J2DTevOrderFv@ha
/* 802EED98  38 84 1B 70 */	addi r4, r4, __ct__11J2DTevOrderFv@l
/* 802EED9C  38 A0 00 00 */	li r5, 0
/* 802EEDA0  38 C0 00 04 */	li r6, 4
/* 802EEDA4  38 E0 00 08 */	li r7, 8
/* 802EEDA8  48 07 2F B9 */	bl __construct_array
/* 802EEDAC  38 7F 00 36 */	addi r3, r31, 0x36
/* 802EEDB0  3C 80 80 2F */	lis r4, __ct__13J2DGXColorS10Fv@ha
/* 802EEDB4  38 84 1B 90 */	addi r4, r4, __ct__13J2DGXColorS10Fv@l
/* 802EEDB8  38 A0 00 00 */	li r5, 0
/* 802EEDBC  38 C0 00 08 */	li r6, 8
/* 802EEDC0  38 E0 00 04 */	li r7, 4
/* 802EEDC4  48 07 2F 9D */	bl __construct_array
/* 802EEDC8  38 7F 00 57 */	addi r3, r31, 0x57
/* 802EEDCC  3C 80 80 2F */	lis r4, __ct__11J2DTevStageFv@ha
/* 802EEDD0  38 84 19 40 */	addi r4, r4, __ct__11J2DTevStageFv@l
/* 802EEDD4  38 A0 00 00 */	li r5, 0
/* 802EEDD8  38 C0 00 08 */	li r6, 8
/* 802EEDDC  38 E0 00 08 */	li r7, 8
/* 802EEDE0  48 07 2F 81 */	bl __construct_array
/* 802EEDE4  38 7F 00 98 */	addi r3, r31, 0x98
/* 802EEDE8  3C 80 80 19 */	lis r4, __ct__Q28JUtility6TColorFv@ha
/* 802EEDEC  38 84 39 60 */	addi r4, r4, __ct__Q28JUtility6TColorFv@l
/* 802EEDF0  38 A0 00 00 */	li r5, 0
/* 802EEDF4  38 C0 00 04 */	li r6, 4
/* 802EEDF8  38 E0 00 04 */	li r7, 4
/* 802EEDFC  48 07 2F 65 */	bl __construct_array
/* 802EEE00  38 7F 00 B8 */	addi r3, r31, 0xb8
/* 802EEE04  3C 80 80 2F */	lis r4, __ct__19J2DTevSwapModeTableFv@ha
/* 802EEE08  38 84 19 34 */	addi r4, r4, __ct__19J2DTevSwapModeTableFv@l
/* 802EEE0C  38 A0 00 00 */	li r5, 0
/* 802EEE10  38 C0 00 01 */	li r6, 1
/* 802EEE14  38 E0 00 04 */	li r7, 4
/* 802EEE18  48 07 2F 49 */	bl __construct_array
/* 802EEE1C  38 7F 00 BC */	addi r3, r31, 0xbc
/* 802EEE20  3C 80 80 2F */	lis r4, __ct__14J2DIndTevStageFv@ha
/* 802EEE24  38 84 18 A0 */	addi r4, r4, __ct__14J2DIndTevStageFv@l
/* 802EEE28  38 A0 00 00 */	li r5, 0
/* 802EEE2C  38 C0 00 04 */	li r6, 4
/* 802EEE30  38 E0 00 08 */	li r7, 8
/* 802EEE34  48 07 2F 2D */	bl __construct_array
/* 802EEE38  38 60 00 00 */	li r3, 0
/* 802EEE3C  7C 64 1B 78 */	mr r4, r3
/* 802EEE40  38 00 00 08 */	li r0, 8
/* 802EEE44  7C 09 03 A6 */	mtctr r0
lbl_802EEE48:
/* 802EEE48  38 03 00 DC */	addi r0, r3, 0xdc
/* 802EEE4C  7C 9F 01 2E */	stwx r4, r31, r0
/* 802EEE50  38 63 00 04 */	addi r3, r3, 4
/* 802EEE54  42 00 FF F4 */	bdnz lbl_802EEE48
/* 802EEE58  38 00 00 00 */	li r0, 0
/* 802EEE5C  98 1F 01 20 */	stb r0, 0x120(r31)
/* 802EEE60  7F E3 FB 78 */	mr r3, r31
/* 802EEE64  81 9F 00 00 */	lwz r12, 0(r31)
/* 802EEE68  81 8C 00 08 */	lwz r12, 8(r12)
/* 802EEE6C  7D 89 03 A6 */	mtctr r12
/* 802EEE70  4E 80 04 21 */	bctrl 
/* 802EEE74  7F E3 FB 78 */	mr r3, r31
/* 802EEE78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802EEE7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EEE80  7C 08 03 A6 */	mtlr r0
/* 802EEE84  38 21 00 10 */	addi r1, r1, 0x10
/* 802EEE88  4E 80 00 20 */	blr 
