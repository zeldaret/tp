lbl_80AF1F74:
/* 80AF1F74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF1F78  7C 08 02 A6 */	mflr r0
/* 80AF1F7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF1F80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF1F84  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AF1F88  41 82 00 10 */	beq lbl_80AF1F98
/* 80AF1F8C  7C 80 07 35 */	extsh. r0, r4
/* 80AF1F90  40 81 00 08 */	ble lbl_80AF1F98
/* 80AF1F94  4B 7D CD A9 */	bl __dl__FPv
lbl_80AF1F98:
/* 80AF1F98  7F E3 FB 78 */	mr r3, r31
/* 80AF1F9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF1FA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF1FA4  7C 08 03 A6 */	mtlr r0
/* 80AF1FA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF1FAC  4E 80 00 20 */	blr 
