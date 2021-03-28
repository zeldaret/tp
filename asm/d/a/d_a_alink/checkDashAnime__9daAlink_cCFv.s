lbl_800A7A5C:
/* 800A7A5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A7A60  7C 08 02 A6 */	mflr r0
/* 800A7A64  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A7A68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800A7A6C  93 C1 00 08 */	stw r30, 8(r1)
/* 800A7A70  7C 7E 1B 78 */	mr r30, r3
/* 800A7A74  3B E0 00 00 */	li r31, 0
/* 800A7A78  38 80 00 13 */	li r4, 0x13
/* 800A7A7C  48 00 4A DD */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800A7A80  2C 03 00 00 */	cmpwi r3, 0
/* 800A7A84  40 82 00 18 */	bne lbl_800A7A9C
/* 800A7A88  7F C3 F3 78 */	mr r3, r30
/* 800A7A8C  38 80 00 1C */	li r4, 0x1c
/* 800A7A90  48 00 4A C9 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800A7A94  2C 03 00 00 */	cmpwi r3, 0
/* 800A7A98  41 82 00 08 */	beq lbl_800A7AA0
lbl_800A7A9C:
/* 800A7A9C  3B E0 00 01 */	li r31, 1
lbl_800A7AA0:
/* 800A7AA0  7F E3 FB 78 */	mr r3, r31
/* 800A7AA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800A7AA8  83 C1 00 08 */	lwz r30, 8(r1)
/* 800A7AAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A7AB0  7C 08 03 A6 */	mtlr r0
/* 800A7AB4  38 21 00 10 */	addi r1, r1, 0x10
/* 800A7AB8  4E 80 00 20 */	blr 
