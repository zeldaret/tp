lbl_801E15C8:
/* 801E15C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801E15CC  7C 08 02 A6 */	mflr r0
/* 801E15D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801E15D4  39 61 00 20 */	addi r11, r1, 0x20
/* 801E15D8  48 18 0B FD */	bl _savegpr_27
/* 801E15DC  7C 7B 1B 78 */	mr r27, r3
/* 801E15E0  54 9D 04 3F */	clrlwi. r29, r4, 0x10
/* 801E15E4  40 82 00 3C */	bne lbl_801E1620
/* 801E15E8  3B A0 00 00 */	li r29, 0
/* 801E15EC  3B E0 00 00 */	li r31, 0
/* 801E15F0  3C 60 80 39 */	lis r3, d_menu_d_menu_letter__stringBase0@ha
/* 801E15F4  3B C3 6D C0 */	addi r30, r3, d_menu_d_menu_letter__stringBase0@l
lbl_801E15F8:
/* 801E15F8  38 1F 02 A0 */	addi r0, r31, 0x2a0
/* 801E15FC  7C 7B 00 2E */	lwzx r3, r27, r0
/* 801E1600  48 11 F0 59 */	bl getStringPtr__10J2DTextBoxCFv
/* 801E1604  38 9E 00 3B */	addi r4, r30, 0x3b
/* 801E1608  48 18 75 25 */	bl strcpy
/* 801E160C  3B BD 00 01 */	addi r29, r29, 1
/* 801E1610  2C 1D 00 05 */	cmpwi r29, 5
/* 801E1614  3B FF 00 04 */	addi r31, r31, 4
/* 801E1618  41 80 FF E0 */	blt lbl_801E15F8
/* 801E161C  48 00 00 44 */	b lbl_801E1660
lbl_801E1620:
/* 801E1620  3B 80 00 00 */	li r28, 0
/* 801E1624  3B E0 00 00 */	li r31, 0
/* 801E1628  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801E162C  3B C3 01 88 */	addi r30, r3, g_meter2_info@l
lbl_801E1630:
/* 801E1630  38 1F 02 A0 */	addi r0, r31, 0x2a0
/* 801E1634  7C 7B 00 2E */	lwzx r3, r27, r0
/* 801E1638  48 11 F0 21 */	bl getStringPtr__10J2DTextBoxCFv
/* 801E163C  7C 65 1B 78 */	mr r5, r3
/* 801E1640  7F C3 F3 78 */	mr r3, r30
/* 801E1644  7F A4 EB 78 */	mr r4, r29
/* 801E1648  38 C0 00 00 */	li r6, 0
/* 801E164C  48 03 AE F9 */	bl getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 801E1650  3B 9C 00 01 */	addi r28, r28, 1
/* 801E1654  2C 1C 00 05 */	cmpwi r28, 5
/* 801E1658  3B FF 00 04 */	addi r31, r31, 4
/* 801E165C  41 80 FF D4 */	blt lbl_801E1630
lbl_801E1660:
/* 801E1660  39 61 00 20 */	addi r11, r1, 0x20
/* 801E1664  48 18 0B BD */	bl _restgpr_27
/* 801E1668  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801E166C  7C 08 03 A6 */	mtlr r0
/* 801E1670  38 21 00 20 */	addi r1, r1, 0x20
/* 801E1674  4E 80 00 20 */	blr 
