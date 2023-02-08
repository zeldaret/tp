lbl_80B8E674:
/* 80B8E674  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B8E678  7C 08 02 A6 */	mflr r0
/* 80B8E67C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B8E680  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B8E684  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B8E688  41 82 00 10 */	beq lbl_80B8E698
/* 80B8E68C  7C 80 07 35 */	extsh. r0, r4
/* 80B8E690  40 81 00 08 */	ble lbl_80B8E698
/* 80B8E694  4B 74 06 A9 */	bl __dl__FPv
lbl_80B8E698:
/* 80B8E698  7F E3 FB 78 */	mr r3, r31
/* 80B8E69C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B8E6A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B8E6A4  7C 08 03 A6 */	mtlr r0
/* 80B8E6A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B8E6AC  4E 80 00 20 */	blr 
