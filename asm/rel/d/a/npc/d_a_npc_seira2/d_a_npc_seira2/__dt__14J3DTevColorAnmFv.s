lbl_80AD13A0:
/* 80AD13A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD13A4  7C 08 02 A6 */	mflr r0
/* 80AD13A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD13AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD13B0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AD13B4  41 82 00 10 */	beq lbl_80AD13C4
/* 80AD13B8  7C 80 07 35 */	extsh. r0, r4
/* 80AD13BC  40 81 00 08 */	ble lbl_80AD13C4
/* 80AD13C0  4B 7F D9 7D */	bl __dl__FPv
lbl_80AD13C4:
/* 80AD13C4  7F E3 FB 78 */	mr r3, r31
/* 80AD13C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD13CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD13D0  7C 08 03 A6 */	mtlr r0
/* 80AD13D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD13D8  4E 80 00 20 */	blr 
