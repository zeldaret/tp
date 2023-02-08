lbl_8010DB28:
/* 8010DB28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8010DB2C  7C 08 02 A6 */	mflr r0
/* 8010DB30  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010DB34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8010DB38  7C 7F 1B 78 */	mr r31, r3
/* 8010DB3C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8010DB40  81 8C 01 98 */	lwz r12, 0x198(r12)
/* 8010DB44  7D 89 03 A6 */	mtctr r12
/* 8010DB48  4E 80 04 21 */	bctrl 
/* 8010DB4C  28 03 00 00 */	cmplwi r3, 0
/* 8010DB50  41 82 00 60 */	beq lbl_8010DBB0
/* 8010DB54  80 BF 28 18 */	lwz r5, 0x2818(r31)
/* 8010DB58  28 05 00 00 */	cmplwi r5, 0
/* 8010DB5C  41 82 00 54 */	beq lbl_8010DBB0
/* 8010DB60  38 60 00 00 */	li r3, 0
/* 8010DB64  38 80 00 01 */	li r4, 1
/* 8010DB68  88 05 05 71 */	lbz r0, 0x571(r5)
/* 8010DB6C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8010DB70  40 82 00 18 */	bne lbl_8010DB88
/* 8010DB74  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8010DB78  C0 05 05 78 */	lfs f0, 0x578(r5)
/* 8010DB7C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8010DB80  41 82 00 08 */	beq lbl_8010DB88
/* 8010DB84  7C 64 1B 78 */	mr r4, r3
lbl_8010DB88:
/* 8010DB88  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8010DB8C  40 82 00 14 */	bne lbl_8010DBA0
/* 8010DB90  88 05 0A 6F */	lbz r0, 0xa6f(r5)
/* 8010DB94  28 00 00 00 */	cmplwi r0, 0
/* 8010DB98  40 82 00 08 */	bne lbl_8010DBA0
/* 8010DB9C  38 60 00 01 */	li r3, 1
lbl_8010DBA0:
/* 8010DBA0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010DBA4  41 82 00 0C */	beq lbl_8010DBB0
/* 8010DBA8  38 60 00 01 */	li r3, 1
/* 8010DBAC  48 00 00 08 */	b lbl_8010DBB4
lbl_8010DBB0:
/* 8010DBB0  38 60 00 00 */	li r3, 0
lbl_8010DBB4:
/* 8010DBB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8010DBB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8010DBBC  7C 08 03 A6 */	mtlr r0
/* 8010DBC0  38 21 00 10 */	addi r1, r1, 0x10
/* 8010DBC4  4E 80 00 20 */	blr 
