lbl_80AD72B4:
/* 80AD72B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD72B8  7C 08 02 A6 */	mflr r0
/* 80AD72BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD72C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD72C4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AD72C8  41 82 00 10 */	beq lbl_80AD72D8
/* 80AD72CC  7C 80 07 35 */	extsh. r0, r4
/* 80AD72D0  40 81 00 08 */	ble lbl_80AD72D8
/* 80AD72D4  4B 7F 7A 69 */	bl __dl__FPv
lbl_80AD72D8:
/* 80AD72D8  7F E3 FB 78 */	mr r3, r31
/* 80AD72DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD72E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD72E4  7C 08 03 A6 */	mtlr r0
/* 80AD72E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD72EC  4E 80 00 20 */	blr 
