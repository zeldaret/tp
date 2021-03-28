lbl_80A01CAC:
/* 80A01CAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A01CB0  7C 08 02 A6 */	mflr r0
/* 80A01CB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A01CB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A01CBC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A01CC0  41 82 00 10 */	beq lbl_80A01CD0
/* 80A01CC4  7C 80 07 35 */	extsh. r0, r4
/* 80A01CC8  40 81 00 08 */	ble lbl_80A01CD0
/* 80A01CCC  4B 8C D0 70 */	b __dl__FPv
lbl_80A01CD0:
/* 80A01CD0  7F E3 FB 78 */	mr r3, r31
/* 80A01CD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A01CD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A01CDC  7C 08 03 A6 */	mtlr r0
/* 80A01CE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A01CE4  4E 80 00 20 */	blr 
