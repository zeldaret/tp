lbl_80A4738C:
/* 80A4738C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A47390  7C 08 02 A6 */	mflr r0
/* 80A47394  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A47398  39 61 00 20 */	addi r11, r1, 0x20
/* 80A4739C  4B 91 AE 38 */	b _savegpr_27
/* 80A473A0  7C 7B 1B 78 */	mr r27, r3
/* 80A473A4  7C 9C 23 78 */	mr r28, r4
/* 80A473A8  3B C0 00 00 */	li r30, 0
/* 80A473AC  3B A0 FF FF */	li r29, -1
/* 80A473B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A473B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A473B8  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80A473BC  7F E3 FB 78 */	mr r3, r31
/* 80A473C0  3C A0 80 A5 */	lis r5, struct_80A487DC+0x0@ha
/* 80A473C4  38 A5 87 DC */	addi r5, r5, struct_80A487DC+0x0@l
/* 80A473C8  38 A5 00 71 */	addi r5, r5, 0x71
/* 80A473CC  38 C0 00 03 */	li r6, 3
/* 80A473D0  4B 60 0D 1C */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A473D4  28 03 00 00 */	cmplwi r3, 0
/* 80A473D8  41 82 00 08 */	beq lbl_80A473E0
/* 80A473DC  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80A473E0:
/* 80A473E0  7F E3 FB 78 */	mr r3, r31
/* 80A473E4  7F 84 E3 78 */	mr r4, r28
/* 80A473E8  4B 60 09 64 */	b getIsAddvance__16dEvent_manager_cFi
/* 80A473EC  2C 1D 00 00 */	cmpwi r29, 0
/* 80A473F0  41 82 00 08 */	beq lbl_80A473F8
/* 80A473F4  48 00 00 1C */	b lbl_80A47410
lbl_80A473F8:
/* 80A473F8  7F 63 DB 78 */	mr r3, r27
/* 80A473FC  81 9B 0E 3C */	lwz r12, 0xe3c(r27)
/* 80A47400  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80A47404  7D 89 03 A6 */	mtctr r12
/* 80A47408  4E 80 04 21 */	bctrl 
/* 80A4740C  3B C0 00 01 */	li r30, 1
lbl_80A47410:
/* 80A47410  7F C3 F3 78 */	mr r3, r30
/* 80A47414  39 61 00 20 */	addi r11, r1, 0x20
/* 80A47418  4B 91 AE 08 */	b _restgpr_27
/* 80A4741C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A47420  7C 08 03 A6 */	mtlr r0
/* 80A47424  38 21 00 20 */	addi r1, r1, 0x20
/* 80A47428  4E 80 00 20 */	blr 
