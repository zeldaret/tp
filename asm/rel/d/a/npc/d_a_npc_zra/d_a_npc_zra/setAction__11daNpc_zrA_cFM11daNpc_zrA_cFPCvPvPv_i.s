lbl_80B7DB20:
/* 80B7DB20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B7DB24  7C 08 02 A6 */	mflr r0
/* 80B7DB28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B7DB2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B7DB30  93 C1 00 08 */	stw r30, 8(r1)
/* 80B7DB34  7C 7E 1B 78 */	mr r30, r3
/* 80B7DB38  7C 9F 23 78 */	mr r31, r4
/* 80B7DB3C  38 00 00 03 */	li r0, 3
/* 80B7DB40  B0 03 14 E6 */	sth r0, 0x14e6(r3)
/* 80B7DB44  38 7E 14 80 */	addi r3, r30, 0x1480
/* 80B7DB48  4B 7E 44 D1 */	bl __ptmf_test
/* 80B7DB4C  2C 03 00 00 */	cmpwi r3, 0
/* 80B7DB50  41 82 00 18 */	beq lbl_80B7DB68
/* 80B7DB54  7F C3 F3 78 */	mr r3, r30
/* 80B7DB58  38 80 00 00 */	li r4, 0
/* 80B7DB5C  39 9E 14 80 */	addi r12, r30, 0x1480
/* 80B7DB60  4B 7E 45 25 */	bl __ptmf_scall
/* 80B7DB64  60 00 00 00 */	nop 
lbl_80B7DB68:
/* 80B7DB68  38 00 00 00 */	li r0, 0
/* 80B7DB6C  B0 1E 14 E6 */	sth r0, 0x14e6(r30)
/* 80B7DB70  80 7F 00 00 */	lwz r3, 0(r31)
/* 80B7DB74  80 1F 00 04 */	lwz r0, 4(r31)
/* 80B7DB78  90 7E 14 80 */	stw r3, 0x1480(r30)
/* 80B7DB7C  90 1E 14 84 */	stw r0, 0x1484(r30)
/* 80B7DB80  80 1F 00 08 */	lwz r0, 8(r31)
/* 80B7DB84  90 1E 14 88 */	stw r0, 0x1488(r30)
/* 80B7DB88  38 7E 14 80 */	addi r3, r30, 0x1480
/* 80B7DB8C  4B 7E 44 8D */	bl __ptmf_test
/* 80B7DB90  2C 03 00 00 */	cmpwi r3, 0
/* 80B7DB94  41 82 00 18 */	beq lbl_80B7DBAC
/* 80B7DB98  7F C3 F3 78 */	mr r3, r30
/* 80B7DB9C  38 80 00 00 */	li r4, 0
/* 80B7DBA0  39 9E 14 80 */	addi r12, r30, 0x1480
/* 80B7DBA4  4B 7E 44 E1 */	bl __ptmf_scall
/* 80B7DBA8  60 00 00 00 */	nop 
lbl_80B7DBAC:
/* 80B7DBAC  38 60 00 01 */	li r3, 1
/* 80B7DBB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B7DBB4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B7DBB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B7DBBC  7C 08 03 A6 */	mtlr r0
/* 80B7DBC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B7DBC4  4E 80 00 20 */	blr 
