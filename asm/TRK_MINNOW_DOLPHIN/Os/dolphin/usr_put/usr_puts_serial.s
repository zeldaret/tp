lbl_8036DB14:
/* 8036DB14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8036DB18  7C 08 02 A6 */	mflr r0
/* 8036DB1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8036DB20  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8036DB24  3B E0 00 00 */	li r31, 0
/* 8036DB28  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8036DB2C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8036DB30  7C 7D 1B 78 */	mr r29, r3
/* 8036DB34  38 60 00 00 */	li r3, 0
/* 8036DB38  48 00 00 30 */	b lbl_8036DB68
lbl_8036DB3C:
/* 8036DB3C  48 00 11 91 */	bl GetTRKConnected
/* 8036DB40  9B C1 00 08 */	stb r30, 8(r1)
/* 8036DB44  7C 7E 1B 78 */	mr r30, r3
/* 8036DB48  38 60 00 00 */	li r3, 0
/* 8036DB4C  9B E1 00 09 */	stb r31, 9(r1)
/* 8036DB50  48 00 11 71 */	bl SetTRKConnected
/* 8036DB54  38 61 00 08 */	addi r3, r1, 8
/* 8036DB58  4B C9 8F 65 */	bl OSReport
/* 8036DB5C  7F C3 F3 78 */	mr r3, r30
/* 8036DB60  48 00 11 61 */	bl SetTRKConnected
/* 8036DB64  38 60 00 00 */	li r3, 0
lbl_8036DB68:
/* 8036DB68  2C 03 00 00 */	cmpwi r3, 0
/* 8036DB6C  40 82 00 14 */	bne lbl_8036DB80
/* 8036DB70  88 1D 00 00 */	lbz r0, 0(r29)
/* 8036DB74  3B BD 00 01 */	addi r29, r29, 1
/* 8036DB78  7C 1E 07 75 */	extsb. r30, r0
/* 8036DB7C  40 82 FF C0 */	bne lbl_8036DB3C
lbl_8036DB80:
/* 8036DB80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8036DB84  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8036DB88  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8036DB8C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8036DB90  7C 08 03 A6 */	mtlr r0
/* 8036DB94  38 21 00 20 */	addi r1, r1, 0x20
/* 8036DB98  4E 80 00 20 */	blr 
