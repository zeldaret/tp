lbl_80039AAC:
/* 80039AAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80039AB0  7C 08 02 A6 */	mflr r0
/* 80039AB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80039AB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80039ABC  93 C1 00 08 */	stw r30, 8(r1)
/* 80039AC0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80039AC4  7C 9F 23 78 */	mr r31, r4
/* 80039AC8  41 82 00 28 */	beq lbl_80039AF0
/* 80039ACC  3C 80 80 3A */	lis r4, __vt__14dDemo_system_c@ha
/* 80039AD0  38 04 79 44 */	addi r0, r4, __vt__14dDemo_system_c@l
/* 80039AD4  90 1E 00 00 */	stw r0, 0(r30)
/* 80039AD8  38 80 00 00 */	li r4, 0
/* 80039ADC  48 24 73 B5 */	bl __dt__Q26JStage7TSystemFv
/* 80039AE0  7F E0 07 35 */	extsh. r0, r31
/* 80039AE4  40 81 00 0C */	ble lbl_80039AF0
/* 80039AE8  7F C3 F3 78 */	mr r3, r30
/* 80039AEC  48 29 52 51 */	bl __dl__FPv
lbl_80039AF0:
/* 80039AF0  7F C3 F3 78 */	mr r3, r30
/* 80039AF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80039AF8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80039AFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80039B00  7C 08 03 A6 */	mtlr r0
/* 80039B04  38 21 00 10 */	addi r1, r1, 0x10
/* 80039B08  4E 80 00 20 */	blr 
