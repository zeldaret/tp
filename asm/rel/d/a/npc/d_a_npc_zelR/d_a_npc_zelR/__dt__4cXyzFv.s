lbl_80B70C9C:
/* 80B70C9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B70CA0  7C 08 02 A6 */	mflr r0
/* 80B70CA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B70CA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B70CAC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B70CB0  41 82 00 10 */	beq lbl_80B70CC0
/* 80B70CB4  7C 80 07 35 */	extsh. r0, r4
/* 80B70CB8  40 81 00 08 */	ble lbl_80B70CC0
/* 80B70CBC  4B 75 E0 80 */	b __dl__FPv
lbl_80B70CC0:
/* 80B70CC0  7F E3 FB 78 */	mr r3, r31
/* 80B70CC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B70CC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B70CCC  7C 08 03 A6 */	mtlr r0
/* 80B70CD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B70CD4  4E 80 00 20 */	blr 
