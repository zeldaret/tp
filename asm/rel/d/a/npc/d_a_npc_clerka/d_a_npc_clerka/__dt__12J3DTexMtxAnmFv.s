lbl_80992CA8:
/* 80992CA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80992CAC  7C 08 02 A6 */	mflr r0
/* 80992CB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80992CB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80992CB8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80992CBC  41 82 00 10 */	beq lbl_80992CCC
/* 80992CC0  7C 80 07 35 */	extsh. r0, r4
/* 80992CC4  40 81 00 08 */	ble lbl_80992CCC
/* 80992CC8  4B 93 C0 75 */	bl __dl__FPv
lbl_80992CCC:
/* 80992CCC  7F E3 FB 78 */	mr r3, r31
/* 80992CD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80992CD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80992CD8  7C 08 03 A6 */	mtlr r0
/* 80992CDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80992CE0  4E 80 00 20 */	blr 
