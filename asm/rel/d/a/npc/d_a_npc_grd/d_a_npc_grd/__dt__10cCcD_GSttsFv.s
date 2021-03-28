lbl_809D38A8:
/* 809D38A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D38AC  7C 08 02 A6 */	mflr r0
/* 809D38B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D38B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809D38B8  7C 7F 1B 79 */	or. r31, r3, r3
/* 809D38BC  41 82 00 1C */	beq lbl_809D38D8
/* 809D38C0  3C A0 80 9D */	lis r5, __vt__10cCcD_GStts@ha
/* 809D38C4  38 05 3E 48 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 809D38C8  90 1F 00 00 */	stw r0, 0(r31)
/* 809D38CC  7C 80 07 35 */	extsh. r0, r4
/* 809D38D0  40 81 00 08 */	ble lbl_809D38D8
/* 809D38D4  4B 8F B4 68 */	b __dl__FPv
lbl_809D38D8:
/* 809D38D8  7F E3 FB 78 */	mr r3, r31
/* 809D38DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809D38E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D38E4  7C 08 03 A6 */	mtlr r0
/* 809D38E8  38 21 00 10 */	addi r1, r1, 0x10
/* 809D38EC  4E 80 00 20 */	blr 
