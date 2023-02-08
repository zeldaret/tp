lbl_8023DADC:
/* 8023DADC  94 21 F9 E0 */	stwu r1, -0x620(r1)
/* 8023DAE0  7C 08 02 A6 */	mflr r0
/* 8023DAE4  90 01 06 24 */	stw r0, 0x624(r1)
/* 8023DAE8  39 61 06 20 */	addi r11, r1, 0x620
/* 8023DAEC  48 12 46 ED */	bl _savegpr_28
/* 8023DAF0  7C 7F 1B 78 */	mr r31, r3
/* 8023DAF4  3B 80 00 00 */	li r28, 0
/* 8023DAF8  80 63 00 08 */	lwz r3, 8(r3)
/* 8023DAFC  83 A3 00 04 */	lwz r29, 4(r3)
/* 8023DB00  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8023DB04  28 03 00 00 */	cmplwi r3, 0
/* 8023DB08  41 82 00 08 */	beq lbl_8023DB10
/* 8023DB0C  83 83 00 04 */	lwz r28, 4(r3)
lbl_8023DB10:
/* 8023DB10  83 DF 00 3C */	lwz r30, 0x3c(r31)
/* 8023DB14  4B DD 6E DD */	bl mDoExt_getMesgFont__Fv
/* 8023DB18  7C 66 1B 78 */	mr r6, r3
/* 8023DB1C  80 7F 00 54 */	lwz r3, 0x54(r31)
/* 8023DB20  38 1F 00 5C */	addi r0, r31, 0x5c
/* 8023DB24  90 01 00 08 */	stw r0, 8(r1)
/* 8023DB28  7F A4 EB 78 */	mr r4, r29
/* 8023DB2C  7F 85 E3 78 */	mr r5, r28
/* 8023DB30  7F C7 F3 78 */	mr r7, r30
/* 8023DB34  39 01 04 10 */	addi r8, r1, 0x410
/* 8023DB38  39 21 02 10 */	addi r9, r1, 0x210
/* 8023DB3C  39 41 00 10 */	addi r10, r1, 0x10
/* 8023DB40  4B FF A5 B5 */	bl getString__12dMsgObject_cFUlP10J2DTextBoxP10J2DTextBoxP7JUTFontP10COutFont_cPcPcPcPs
/* 8023DB44  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8023DB48  41 82 00 84 */	beq lbl_8023DBCC
/* 8023DB4C  80 7F 00 08 */	lwz r3, 8(r31)
/* 8023DB50  80 63 00 04 */	lwz r3, 4(r3)
/* 8023DB54  48 0C 2B 05 */	bl getStringPtr__10J2DTextBoxCFv
/* 8023DB58  38 81 04 10 */	addi r4, r1, 0x410
/* 8023DB5C  48 12 AF D1 */	bl strcpy
/* 8023DB60  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8023DB64  80 63 00 04 */	lwz r3, 4(r3)
/* 8023DB68  48 0C 2A F1 */	bl getStringPtr__10J2DTextBoxCFv
/* 8023DB6C  38 81 00 10 */	addi r4, r1, 0x10
/* 8023DB70  48 12 AF BD */	bl strcpy
/* 8023DB74  3B 80 00 00 */	li r28, 0
/* 8023DB78  3B C0 00 00 */	li r30, 0
lbl_8023DB7C:
/* 8023DB7C  38 1E 00 10 */	addi r0, r30, 0x10
/* 8023DB80  7C 7F 00 2E */	lwzx r3, r31, r0
/* 8023DB84  28 03 00 00 */	cmplwi r3, 0
/* 8023DB88  41 82 00 14 */	beq lbl_8023DB9C
/* 8023DB8C  80 63 00 04 */	lwz r3, 4(r3)
/* 8023DB90  48 0C 2A C9 */	bl getStringPtr__10J2DTextBoxCFv
/* 8023DB94  38 81 02 10 */	addi r4, r1, 0x210
/* 8023DB98  48 12 AF 95 */	bl strcpy
lbl_8023DB9C:
/* 8023DB9C  3B 9C 00 01 */	addi r28, r28, 1
/* 8023DBA0  2C 1C 00 02 */	cmpwi r28, 2
/* 8023DBA4  3B DE 00 04 */	addi r30, r30, 4
/* 8023DBA8  41 80 FF D4 */	blt lbl_8023DB7C
/* 8023DBAC  88 1F 00 67 */	lbz r0, 0x67(r31)
/* 8023DBB0  28 00 00 00 */	cmplwi r0, 0
/* 8023DBB4  41 82 00 10 */	beq lbl_8023DBC4
/* 8023DBB8  80 6D 85 F0 */	lwz r3, data_80450B70(r13)
/* 8023DBBC  38 80 00 00 */	li r4, 0
/* 8023DBC0  48 08 E3 A1 */	bl setTextCount__12Z2SpeechMgr2Fs
lbl_8023DBC4:
/* 8023DBC4  38 00 00 02 */	li r0, 2
/* 8023DBC8  98 1F 00 60 */	stb r0, 0x60(r31)
lbl_8023DBCC:
/* 8023DBCC  39 61 06 20 */	addi r11, r1, 0x620
/* 8023DBD0  48 12 46 55 */	bl _restgpr_28
/* 8023DBD4  80 01 06 24 */	lwz r0, 0x624(r1)
/* 8023DBD8  7C 08 03 A6 */	mtlr r0
/* 8023DBDC  38 21 06 20 */	addi r1, r1, 0x620
/* 8023DBE0  4E 80 00 20 */	blr 
