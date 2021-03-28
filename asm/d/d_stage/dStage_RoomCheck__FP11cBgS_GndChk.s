lbl_80026FE8:
/* 80026FE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80026FEC  7C 08 02 A6 */	mflr r0
/* 80026FF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80026FF4  39 61 00 20 */	addi r11, r1, 0x20
/* 80026FF8  48 33 B1 E5 */	bl _savegpr_29
/* 80026FFC  7C 64 1B 79 */	or. r4, r3, r3
/* 80027000  8B ED 80 70 */	lbz r31, data_804505F0(r13)
/* 80027004  7F FF 07 74 */	extsb r31, r31
/* 80027008  40 82 00 0C */	bne lbl_80027014
/* 8002700C  7F E4 FB 78 */	mr r4, r31
/* 80027010  48 00 00 1C */	b lbl_8002702C
lbl_80027014:
/* 80027014  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80027018  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8002701C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80027020  38 84 00 14 */	addi r4, r4, 0x14
/* 80027024  48 04 E0 DD */	bl GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80027028  7C 64 1B 78 */	mr r4, r3
lbl_8002702C:
/* 8002702C  2C 04 00 00 */	cmpwi r4, 0
/* 80027030  40 80 00 0C */	bge lbl_8002703C
/* 80027034  38 60 00 00 */	li r3, 0
/* 80027038  48 00 00 AC */	b lbl_800270E4
lbl_8002703C:
/* 8002703C  88 0D 87 E4 */	lbz r0, struct_80450D64+0x0(r13)
/* 80027040  7C 00 07 74 */	extsb r0, r0
/* 80027044  7C 04 00 00 */	cmpw r4, r0
/* 80027048  41 82 00 14 */	beq lbl_8002705C
/* 8002704C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80027050  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80027054  38 63 4E C4 */	addi r3, r3, 0x4ec4
/* 80027058  4B FF D6 C5 */	bl zoneCountCheck__20dStage_roomControl_cCFi
lbl_8002705C:
/* 8002705C  2C 1F 00 00 */	cmpwi r31, 0
/* 80027060  40 80 00 0C */	bge lbl_8002706C
/* 80027064  8B ED 87 E4 */	lbz r31, struct_80450D64+0x0(r13)
/* 80027068  7F FF 07 74 */	extsb r31, r31
lbl_8002706C:
/* 8002706C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80027070  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 80027074  38 7D 4E 20 */	addi r3, r29, 0x4e20
/* 80027078  81 9D 4E 20 */	lwz r12, 0x4e20(r29)
/* 8002707C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80027080  7D 89 03 A6 */	mtctr r12
/* 80027084  4E 80 04 21 */	bctrl 
/* 80027088  7C 7E 1B 79 */	or. r30, r3, r3
/* 8002708C  41 82 00 54 */	beq lbl_800270E0
/* 80027090  80 1E 00 00 */	lwz r0, 0(r30)
/* 80027094  7C 00 F8 00 */	cmpw r0, r31
/* 80027098  40 81 00 48 */	ble lbl_800270E0
/* 8002709C  80 7E 00 04 */	lwz r3, 4(r30)
/* 800270A0  88 0D 87 E4 */	lbz r0, struct_80450D64+0x0(r13)
/* 800270A4  7C 00 07 74 */	extsb r0, r0
/* 800270A8  54 00 10 3A */	slwi r0, r0, 2
/* 800270AC  7C 63 00 2E */	lwzx r3, r3, r0
/* 800270B0  88 03 00 02 */	lbz r0, 2(r3)
/* 800270B4  54 03 07 BE */	clrlwi r3, r0, 0x1e
/* 800270B8  4B FF DC F9 */	bl SetTimePass__20dStage_roomControl_cFi
/* 800270BC  80 7E 00 04 */	lwz r3, 4(r30)
/* 800270C0  57 E0 10 3A */	slwi r0, r31, 2
/* 800270C4  7C A3 00 2E */	lwzx r5, r3, r0
/* 800270C8  38 7D 4E C4 */	addi r3, r29, 0x4ec4
/* 800270CC  88 85 00 00 */	lbz r4, 0(r5)
/* 800270D0  80 A5 00 04 */	lwz r5, 4(r5)
/* 800270D4  38 C0 00 00 */	li r6, 0
/* 800270D8  4B FF D4 45 */	bl loadRoom__20dStage_roomControl_cFiPUcb
/* 800270DC  48 00 00 08 */	b lbl_800270E4
lbl_800270E0:
/* 800270E0  38 60 00 01 */	li r3, 1
lbl_800270E4:
/* 800270E4  39 61 00 20 */	addi r11, r1, 0x20
/* 800270E8  48 33 B1 41 */	bl _restgpr_29
/* 800270EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800270F0  7C 08 03 A6 */	mtlr r0
/* 800270F4  38 21 00 20 */	addi r1, r1, 0x20
/* 800270F8  4E 80 00 20 */	blr 
