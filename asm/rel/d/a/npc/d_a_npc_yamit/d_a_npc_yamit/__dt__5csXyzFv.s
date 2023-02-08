lbl_80B4BF88:
/* 80B4BF88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4BF8C  7C 08 02 A6 */	mflr r0
/* 80B4BF90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4BF94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B4BF98  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B4BF9C  41 82 00 10 */	beq lbl_80B4BFAC
/* 80B4BFA0  7C 80 07 35 */	extsh. r0, r4
/* 80B4BFA4  40 81 00 08 */	ble lbl_80B4BFAC
/* 80B4BFA8  4B 78 2D 95 */	bl __dl__FPv
lbl_80B4BFAC:
/* 80B4BFAC  7F E3 FB 78 */	mr r3, r31
/* 80B4BFB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B4BFB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4BFB8  7C 08 03 A6 */	mtlr r0
/* 80B4BFBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4BFC0  4E 80 00 20 */	blr 
