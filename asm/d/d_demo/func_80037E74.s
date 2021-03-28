lbl_80037E74:
/* 80037E74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80037E78  7C 08 02 A6 */	mflr r0
/* 80037E7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80037E80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80037E84  93 C1 00 08 */	stw r30, 8(r1)
/* 80037E88  7C 7E 1B 79 */	or. r30, r3, r3
/* 80037E8C  7C 9F 23 78 */	mr r31, r4
/* 80037E90  41 82 00 28 */	beq lbl_80037EB8
/* 80037E94  3C 80 80 3A */	lis r4, data_803A7BE4@ha
/* 80037E98  38 04 7B E4 */	addi r0, r4, data_803A7BE4@l
/* 80037E9C  90 1E 00 00 */	stw r0, 0(r30)
/* 80037EA0  38 80 00 00 */	li r4, 0
/* 80037EA4  48 24 D5 E5 */	bl __dt__Q27JStudio13TCreateObjectFv
/* 80037EA8  7F E0 07 35 */	extsh. r0, r31
/* 80037EAC  40 81 00 0C */	ble lbl_80037EB8
/* 80037EB0  7F C3 F3 78 */	mr r3, r30
/* 80037EB4  48 29 6E 89 */	bl __dl__FPv
lbl_80037EB8:
/* 80037EB8  7F C3 F3 78 */	mr r3, r30
/* 80037EBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80037EC0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80037EC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80037EC8  7C 08 03 A6 */	mtlr r0
/* 80037ECC  38 21 00 10 */	addi r1, r1, 0x10
/* 80037ED0  4E 80 00 20 */	blr 
