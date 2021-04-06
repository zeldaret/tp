lbl_80AF7F58:
/* 80AF7F58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF7F5C  7C 08 02 A6 */	mflr r0
/* 80AF7F60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF7F64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF7F68  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AF7F6C  41 82 00 10 */	beq lbl_80AF7F7C
/* 80AF7F70  7C 80 07 35 */	extsh. r0, r4
/* 80AF7F74  40 81 00 08 */	ble lbl_80AF7F7C
/* 80AF7F78  4B 7D 6D C5 */	bl __dl__FPv
lbl_80AF7F7C:
/* 80AF7F7C  7F E3 FB 78 */	mr r3, r31
/* 80AF7F80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF7F84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF7F88  7C 08 03 A6 */	mtlr r0
/* 80AF7F8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF7F90  4E 80 00 20 */	blr 
