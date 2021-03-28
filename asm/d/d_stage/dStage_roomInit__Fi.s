lbl_80024D10:
/* 80024D10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80024D14  7C 08 02 A6 */	mflr r0
/* 80024D18  90 01 00 24 */	stw r0, 0x24(r1)
/* 80024D1C  39 61 00 20 */	addi r11, r1, 0x20
/* 80024D20  48 33 D4 BD */	bl _savegpr_29
/* 80024D24  7C 7D 1B 78 */	mr r29, r3
/* 80024D28  4B FF F6 C1 */	bl setStayNo__20dStage_roomControl_cFi
/* 80024D2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80024D30  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80024D34  38 7E 4E 20 */	addi r3, r30, 0x4e20
/* 80024D38  81 9E 4E 20 */	lwz r12, 0x4e20(r30)
/* 80024D3C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80024D40  7D 89 03 A6 */	mtctr r12
/* 80024D44  4E 80 04 21 */	bctrl 
/* 80024D48  7C 7F 1B 79 */	or. r31, r3, r3
/* 80024D4C  41 82 00 48 */	beq lbl_80024D94
/* 80024D50  80 1F 00 00 */	lwz r0, 0(r31)
/* 80024D54  7C 00 E8 00 */	cmpw r0, r29
/* 80024D58  40 81 00 3C */	ble lbl_80024D94
/* 80024D5C  80 7F 00 04 */	lwz r3, 4(r31)
/* 80024D60  57 BD 10 3A */	slwi r29, r29, 2
/* 80024D64  7C 63 E8 2E */	lwzx r3, r3, r29
/* 80024D68  88 03 00 02 */	lbz r0, 2(r3)
/* 80024D6C  54 03 07 BE */	clrlwi r3, r0, 0x1e
/* 80024D70  48 00 00 41 */	bl SetTimePass__20dStage_roomControl_cFi
/* 80024D74  80 7F 00 04 */	lwz r3, 4(r31)
/* 80024D78  7C A3 E8 2E */	lwzx r5, r3, r29
/* 80024D7C  38 7E 4E C4 */	addi r3, r30, 0x4ec4
/* 80024D80  88 85 00 00 */	lbz r4, 0(r5)
/* 80024D84  80 A5 00 04 */	lwz r5, 4(r5)
/* 80024D88  38 C0 00 01 */	li r6, 1
/* 80024D8C  4B FF F7 91 */	bl loadRoom__20dStage_roomControl_cFiPUcb
/* 80024D90  48 00 00 08 */	b lbl_80024D98
lbl_80024D94:
/* 80024D94  38 60 00 01 */	li r3, 1
lbl_80024D98:
/* 80024D98  39 61 00 20 */	addi r11, r1, 0x20
/* 80024D9C  48 33 D4 8D */	bl _restgpr_29
/* 80024DA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80024DA4  7C 08 03 A6 */	mtlr r0
/* 80024DA8  38 21 00 20 */	addi r1, r1, 0x20
/* 80024DAC  4E 80 00 20 */	blr 
