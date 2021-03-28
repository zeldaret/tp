lbl_8024CCAC:
/* 8024CCAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8024CCB0  7C 08 02 A6 */	mflr r0
/* 8024CCB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8024CCB8  39 61 00 20 */	addi r11, r1, 0x20
/* 8024CCBC  48 11 55 19 */	bl _savegpr_27
/* 8024CCC0  7C BB 2B 78 */	mr r27, r5
/* 8024CCC4  38 84 00 04 */	addi r4, r4, 4
/* 8024CCC8  4B FF E4 69 */	bl getParam__10dMsgFlow_cFPUc
/* 8024CCCC  7C 7F 1B 78 */	mr r31, r3
/* 8024CCD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8024CCD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8024CCD8  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 8024CCDC  38 63 4E C4 */	addi r3, r3, 0x4ec4
/* 8024CCE0  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 8024CCE4  7C 04 07 74 */	extsb r4, r0
/* 8024CCE8  4B DD 76 9D */	bl getStatusRoomDt__20dStage_roomControl_cFi
/* 8024CCEC  7C 7D 1B 78 */	mr r29, r3
/* 8024CCF0  81 83 00 00 */	lwz r12, 0(r3)
/* 8024CCF4  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8024CCF8  7D 89 03 A6 */	mtctr r12
/* 8024CCFC  4E 80 04 21 */	bctrl 
/* 8024CD00  83 83 00 04 */	lwz r28, 4(r3)
/* 8024CD04  3B 60 00 00 */	li r27, 0
/* 8024CD08  48 00 00 40 */	b lbl_8024CD48
lbl_8024CD0C:
/* 8024CD0C  A8 1C 00 1C */	lha r0, 0x1c(r28)
/* 8024CD10  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8024CD14  7C 00 F8 00 */	cmpw r0, r31
/* 8024CD18  40 82 00 28 */	bne lbl_8024CD40
/* 8024CD1C  7F C3 F3 78 */	mr r3, r30
/* 8024CD20  38 9C 00 0C */	addi r4, r28, 0xc
/* 8024CD24  A8 BE 04 DE */	lha r5, 0x4de(r30)
/* 8024CD28  38 C0 00 00 */	li r6, 0
/* 8024CD2C  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8024CD30  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8024CD34  7D 89 03 A6 */	mtctr r12
/* 8024CD38  4E 80 04 21 */	bctrl 
/* 8024CD3C  48 00 00 2C */	b lbl_8024CD68
lbl_8024CD40:
/* 8024CD40  3B 7B 00 01 */	addi r27, r27, 1
/* 8024CD44  3B 9C 00 20 */	addi r28, r28, 0x20
lbl_8024CD48:
/* 8024CD48  7F A3 EB 78 */	mr r3, r29
/* 8024CD4C  81 9D 00 00 */	lwz r12, 0(r29)
/* 8024CD50  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8024CD54  7D 89 03 A6 */	mtctr r12
/* 8024CD58  4E 80 04 21 */	bctrl 
/* 8024CD5C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8024CD60  7C 1B 00 00 */	cmpw r27, r0
/* 8024CD64  41 80 FF A8 */	blt lbl_8024CD0C
lbl_8024CD68:
/* 8024CD68  38 60 00 01 */	li r3, 1
/* 8024CD6C  39 61 00 20 */	addi r11, r1, 0x20
/* 8024CD70  48 11 54 B1 */	bl _restgpr_27
/* 8024CD74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8024CD78  7C 08 03 A6 */	mtlr r0
/* 8024CD7C  38 21 00 20 */	addi r1, r1, 0x20
/* 8024CD80  4E 80 00 20 */	blr 
