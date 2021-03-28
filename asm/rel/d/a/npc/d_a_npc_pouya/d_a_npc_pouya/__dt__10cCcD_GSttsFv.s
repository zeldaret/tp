lbl_80AB0DB4:
/* 80AB0DB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB0DB8  7C 08 02 A6 */	mflr r0
/* 80AB0DBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB0DC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB0DC4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AB0DC8  41 82 00 1C */	beq lbl_80AB0DE4
/* 80AB0DCC  3C A0 80 AB */	lis r5, __vt__10cCcD_GStts@ha
/* 80AB0DD0  38 05 2B B4 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80AB0DD4  90 1F 00 00 */	stw r0, 0(r31)
/* 80AB0DD8  7C 80 07 35 */	extsh. r0, r4
/* 80AB0DDC  40 81 00 08 */	ble lbl_80AB0DE4
/* 80AB0DE0  4B 81 DF 5C */	b __dl__FPv
lbl_80AB0DE4:
/* 80AB0DE4  7F E3 FB 78 */	mr r3, r31
/* 80AB0DE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB0DEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB0DF0  7C 08 03 A6 */	mtlr r0
/* 80AB0DF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB0DF8  4E 80 00 20 */	blr 
