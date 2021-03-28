lbl_801B7EB8:
/* 801B7EB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B7EBC  7C 08 02 A6 */	mflr r0
/* 801B7EC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B7EC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B7EC8  7C 7F 1B 79 */	or. r31, r3, r3
/* 801B7ECC  41 82 00 1C */	beq lbl_801B7EE8
/* 801B7ED0  3C A0 80 3C */	lis r5, __vt__20dMenu_Collect2DTop_c@ha
/* 801B7ED4  38 05 C7 68 */	addi r0, r5, __vt__20dMenu_Collect2DTop_c@l
/* 801B7ED8  90 1F 00 00 */	stw r0, 0(r31)
/* 801B7EDC  7C 80 07 35 */	extsh. r0, r4
/* 801B7EE0  40 81 00 08 */	ble lbl_801B7EE8
/* 801B7EE4  48 11 6E 59 */	bl __dl__FPv
lbl_801B7EE8:
/* 801B7EE8  7F E3 FB 78 */	mr r3, r31
/* 801B7EEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B7EF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B7EF4  7C 08 03 A6 */	mtlr r0
/* 801B7EF8  38 21 00 10 */	addi r1, r1, 0x10
/* 801B7EFC  4E 80 00 20 */	blr 
