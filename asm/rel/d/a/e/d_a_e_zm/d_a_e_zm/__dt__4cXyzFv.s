lbl_80832CA8:
/* 80832CA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80832CAC  7C 08 02 A6 */	mflr r0
/* 80832CB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80832CB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80832CB8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80832CBC  41 82 00 10 */	beq lbl_80832CCC
/* 80832CC0  7C 80 07 35 */	extsh. r0, r4
/* 80832CC4  40 81 00 08 */	ble lbl_80832CCC
/* 80832CC8  4B A9 C0 74 */	b __dl__FPv
lbl_80832CCC:
/* 80832CCC  7F E3 FB 78 */	mr r3, r31
/* 80832CD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80832CD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80832CD8  7C 08 03 A6 */	mtlr r0
/* 80832CDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80832CE0  4E 80 00 20 */	blr 
