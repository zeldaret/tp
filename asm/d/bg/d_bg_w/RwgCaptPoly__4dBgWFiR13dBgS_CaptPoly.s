lbl_8007D858:
/* 8007D858  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8007D85C  7C 08 02 A6 */	mflr r0
/* 8007D860  90 01 00 24 */	stw r0, 0x24(r1)
/* 8007D864  39 61 00 20 */	addi r11, r1, 0x20
/* 8007D868  48 2E 49 71 */	bl _savegpr_28
/* 8007D86C  7C 7C 1B 78 */	mr r28, r3
/* 8007D870  7C 89 23 78 */	mr r9, r4
/* 8007D874  7C BD 2B 78 */	mr r29, r5
lbl_8007D878:
/* 8007D878  83 DC 00 98 */	lwz r30, 0x98(r28)
/* 8007D87C  55 3F 18 38 */	slwi r31, r9, 3
/* 8007D880  80 7C 00 A0 */	lwz r3, 0xa0(r28)
/* 8007D884  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8007D888  1C 09 00 0A */	mulli r0, r9, 0xa
/* 8007D88C  7C E3 02 14 */	add r7, r3, r0
/* 8007D890  7F A3 EB 78 */	mr r3, r29
/* 8007D894  80 9C 00 9C */	lwz r4, 0x9c(r28)
/* 8007D898  A0 A7 00 00 */	lhz r5, 0(r7)
/* 8007D89C  A0 C7 00 02 */	lhz r6, 2(r7)
/* 8007D8A0  A0 E7 00 04 */	lhz r7, 4(r7)
/* 8007D8A4  81 1C 00 94 */	lwz r8, 0x94(r28)
/* 8007D8A8  1C 09 00 18 */	mulli r0, r9, 0x18
/* 8007D8AC  7D 08 02 14 */	add r8, r8, r0
/* 8007D8B0  81 9D 00 48 */	lwz r12, 0x48(r29)
/* 8007D8B4  7D 89 03 A6 */	mtctr r12
/* 8007D8B8  4E 80 04 21 */	bctrl 
/* 8007D8BC  7C 1E FA 2E */	lhzx r0, r30, r31
/* 8007D8C0  28 00 FF FF */	cmplwi r0, 0xffff
/* 8007D8C4  41 82 00 0C */	beq lbl_8007D8D0
/* 8007D8C8  7C 09 03 78 */	mr r9, r0
/* 8007D8CC  4B FF FF AC */	b lbl_8007D878
lbl_8007D8D0:
/* 8007D8D0  39 61 00 20 */	addi r11, r1, 0x20
/* 8007D8D4  48 2E 49 51 */	bl _restgpr_28
/* 8007D8D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8007D8DC  7C 08 03 A6 */	mtlr r0
/* 8007D8E0  38 21 00 20 */	addi r1, r1, 0x20
/* 8007D8E4  4E 80 00 20 */	blr 
