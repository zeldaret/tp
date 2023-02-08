lbl_80A30F5C:
/* 80A30F5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A30F60  7C 08 02 A6 */	mflr r0
/* 80A30F64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A30F68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A30F6C  93 C1 00 08 */	stw r30, 8(r1)
/* 80A30F70  7C 7E 1B 78 */	mr r30, r3
/* 80A30F74  7C 9F 23 78 */	mr r31, r4
/* 80A30F78  4B 5E 7D 69 */	bl fopAc_IsActor__FPv
/* 80A30F7C  2C 03 00 00 */	cmpwi r3, 0
/* 80A30F80  41 82 00 20 */	beq lbl_80A30FA0
/* 80A30F84  A8 1E 00 08 */	lha r0, 8(r30)
/* 80A30F88  2C 00 02 5A */	cmpwi r0, 0x25a
/* 80A30F8C  40 82 00 14 */	bne lbl_80A30FA0
/* 80A30F90  7C 1E F8 40 */	cmplw r30, r31
/* 80A30F94  41 82 00 0C */	beq lbl_80A30FA0
/* 80A30F98  38 00 00 18 */	li r0, 0x18
/* 80A30F9C  98 1E 15 AE */	stb r0, 0x15ae(r30)
lbl_80A30FA0:
/* 80A30FA0  38 60 00 00 */	li r3, 0
/* 80A30FA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A30FA8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A30FAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A30FB0  7C 08 03 A6 */	mtlr r0
/* 80A30FB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A30FB8  4E 80 00 20 */	blr 
