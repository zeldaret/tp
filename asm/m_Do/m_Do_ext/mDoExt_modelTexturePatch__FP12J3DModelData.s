lbl_8000DB10:
/* 8000DB10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8000DB14  7C 08 02 A6 */	mflr r0
/* 8000DB18  90 01 00 24 */	stw r0, 0x24(r1)
/* 8000DB1C  39 61 00 20 */	addi r11, r1, 0x20
/* 8000DB20  48 35 46 B1 */	bl _savegpr_26
/* 8000DB24  7C 7A 1B 78 */	mr r26, r3
/* 8000DB28  80 03 00 6C */	lwz r0, 0x6c(r3)
/* 8000DB2C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8000DB30  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 8000DB34  90 03 00 58 */	stw r0, 0x58(r3)
/* 8000DB38  3B 80 00 00 */	li r28, 0
/* 8000DB3C  3C 60 80 43 */	lis r3, sGDLObj__17J3DDisplayListObj@ha /* 0x80434C70@ha */
/* 8000DB40  3B E3 4C 70 */	addi r31, r3, sGDLObj__17J3DDisplayListObj@l /* 0x80434C70@l */
/* 8000DB44  48 00 00 5C */	b lbl_8000DBA0
lbl_8000DB48:
/* 8000DB48  80 7A 00 60 */	lwz r3, 0x60(r26)
/* 8000DB4C  57 80 13 BA */	rlwinm r0, r28, 2, 0xe, 0x1d
/* 8000DB50  7C 63 00 2E */	lwzx r3, r3, r0
/* 8000DB54  83 C3 00 2C */	lwz r30, 0x2c(r3)
/* 8000DB58  83 A3 00 48 */	lwz r29, 0x48(r3)
/* 8000DB5C  48 32 FB 99 */	bl OSDisableInterrupts
/* 8000DB60  7C 7B 1B 78 */	mr r27, r3
/* 8000DB64  7F E3 FB 78 */	mr r3, r31
/* 8000DB68  80 9D 00 00 */	lwz r4, 0(r29)
/* 8000DB6C  80 BD 00 08 */	lwz r5, 8(r29)
/* 8000DB70  48 35 34 29 */	bl GDInitGDLObj
/* 8000DB74  93 ED 94 00 */	stw r31, __GDCurrentDL(r13)
/* 8000DB78  7F C3 F3 78 */	mr r3, r30
/* 8000DB7C  81 9E 00 00 */	lwz r12, 0(r30)
/* 8000DB80  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8000DB84  7D 89 03 A6 */	mtctr r12
/* 8000DB88  4E 80 04 21 */	bctrl 
/* 8000DB8C  7F 63 DB 78 */	mr r3, r27
/* 8000DB90  48 32 FB 8D */	bl OSRestoreInterrupts
/* 8000DB94  38 00 00 00 */	li r0, 0
/* 8000DB98  90 0D 94 00 */	stw r0, __GDCurrentDL(r13)
/* 8000DB9C  3B 9C 00 01 */	addi r28, r28, 1
lbl_8000DBA0:
/* 8000DBA0  57 83 04 3E */	clrlwi r3, r28, 0x10
/* 8000DBA4  A0 1A 00 5C */	lhz r0, 0x5c(r26)
/* 8000DBA8  7C 03 00 40 */	cmplw r3, r0
/* 8000DBAC  41 80 FF 9C */	blt lbl_8000DB48
/* 8000DBB0  39 61 00 20 */	addi r11, r1, 0x20
/* 8000DBB4  48 35 46 69 */	bl _restgpr_26
/* 8000DBB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8000DBBC  7C 08 03 A6 */	mtlr r0
/* 8000DBC0  38 21 00 20 */	addi r1, r1, 0x20
/* 8000DBC4  4E 80 00 20 */	blr 
