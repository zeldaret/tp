lbl_8046AE70:
/* 8046AE70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046AE74  7C 08 02 A6 */	mflr r0
/* 8046AE78  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046AE7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046AE80  7C 7F 1B 79 */	or. r31, r3, r3
/* 8046AE84  41 82 00 1C */	beq lbl_8046AEA0
/* 8046AE88  3C A0 80 47 */	lis r5, __vt__8cM3dGCyl@ha /* 0x8046B2C4@ha */
/* 8046AE8C  38 05 B2 C4 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x8046B2C4@l */
/* 8046AE90  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8046AE94  7C 80 07 35 */	extsh. r0, r4
/* 8046AE98  40 81 00 08 */	ble lbl_8046AEA0
/* 8046AE9C  4B E6 3E A1 */	bl __dl__FPv
lbl_8046AEA0:
/* 8046AEA0  7F E3 FB 78 */	mr r3, r31
/* 8046AEA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046AEA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046AEAC  7C 08 03 A6 */	mtlr r0
/* 8046AEB0  38 21 00 10 */	addi r1, r1, 0x10
/* 8046AEB4  4E 80 00 20 */	blr 
