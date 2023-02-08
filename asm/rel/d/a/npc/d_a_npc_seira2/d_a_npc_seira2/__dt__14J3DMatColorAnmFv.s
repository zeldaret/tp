lbl_80AD14B4:
/* 80AD14B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD14B8  7C 08 02 A6 */	mflr r0
/* 80AD14BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD14C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD14C4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AD14C8  41 82 00 10 */	beq lbl_80AD14D8
/* 80AD14CC  7C 80 07 35 */	extsh. r0, r4
/* 80AD14D0  40 81 00 08 */	ble lbl_80AD14D8
/* 80AD14D4  4B 7F D8 69 */	bl __dl__FPv
lbl_80AD14D8:
/* 80AD14D8  7F E3 FB 78 */	mr r3, r31
/* 80AD14DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD14E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD14E4  7C 08 03 A6 */	mtlr r0
/* 80AD14E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD14EC  4E 80 00 20 */	blr 
