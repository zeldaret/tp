lbl_8007ADF0:
/* 8007ADF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8007ADF4  7C 08 02 A6 */	mflr r0
/* 8007ADF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8007ADFC  39 61 00 20 */	addi r11, r1, 0x20
/* 8007AE00  48 2E 73 D5 */	bl _savegpr_27
/* 8007AE04  7C 7B 1B 78 */	mr r27, r3
/* 8007AE08  7C 9C 23 78 */	mr r28, r4
/* 8007AE0C  7C BD 2B 78 */	mr r29, r5
lbl_8007AE10:
/* 8007AE10  83 DB 00 98 */	lwz r30, 0x98(r27)
/* 8007AE14  57 9F 18 38 */	slwi r31, r28, 3
/* 8007AE18  7F 63 DB 78 */	mr r3, r27
/* 8007AE1C  7F 84 E3 78 */	mr r4, r28
/* 8007AE20  80 BD 00 00 */	lwz r5, 0(r29)
/* 8007AE24  81 9B 00 04 */	lwz r12, 4(r27)
/* 8007AE28  81 8C 00 FC */	lwz r12, 0xfc(r12)
/* 8007AE2C  7D 89 03 A6 */	mtctr r12
/* 8007AE30  4E 80 04 21 */	bctrl 
/* 8007AE34  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007AE38  40 82 00 40 */	bne lbl_8007AE78
/* 8007AE3C  80 7B 00 A0 */	lwz r3, 0xa0(r27)
/* 8007AE40  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8007AE44  1C 1C 00 0A */	mulli r0, r28, 0xa
/* 8007AE48  7C E3 02 14 */	add r7, r3, r0
/* 8007AE4C  7F A3 EB 78 */	mr r3, r29
/* 8007AE50  80 9B 00 9C */	lwz r4, 0x9c(r27)
/* 8007AE54  A0 A7 00 00 */	lhz r5, 0(r7)
/* 8007AE58  A0 C7 00 02 */	lhz r6, 2(r7)
/* 8007AE5C  A0 E7 00 04 */	lhz r7, 4(r7)
/* 8007AE60  81 1B 00 94 */	lwz r8, 0x94(r27)
/* 8007AE64  1C 1C 00 18 */	mulli r0, r28, 0x18
/* 8007AE68  7D 08 02 14 */	add r8, r8, r0
/* 8007AE6C  81 9D 00 30 */	lwz r12, 0x30(r29)
/* 8007AE70  7D 89 03 A6 */	mtctr r12
/* 8007AE74  4E 80 04 21 */	bctrl 
lbl_8007AE78:
/* 8007AE78  7C 1E FA 2E */	lhzx r0, r30, r31
/* 8007AE7C  28 00 FF FF */	cmplwi r0, 0xffff
/* 8007AE80  41 82 00 0C */	beq lbl_8007AE8C
/* 8007AE84  7C 1C 03 78 */	mr r28, r0
/* 8007AE88  4B FF FF 88 */	b lbl_8007AE10
lbl_8007AE8C:
/* 8007AE8C  39 61 00 20 */	addi r11, r1, 0x20
/* 8007AE90  48 2E 73 91 */	bl _restgpr_27
/* 8007AE94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8007AE98  7C 08 03 A6 */	mtlr r0
/* 8007AE9C  38 21 00 20 */	addi r1, r1, 0x20
/* 8007AEA0  4E 80 00 20 */	blr 
