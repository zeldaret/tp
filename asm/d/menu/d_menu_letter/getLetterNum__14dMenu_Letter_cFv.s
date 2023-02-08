lbl_801E1678:
/* 801E1678  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801E167C  7C 08 02 A6 */	mflr r0
/* 801E1680  90 01 00 24 */	stw r0, 0x24(r1)
/* 801E1684  39 61 00 20 */	addi r11, r1, 0x20
/* 801E1688  48 18 0B 49 */	bl _savegpr_26
/* 801E168C  3B 60 00 00 */	li r27, 0
/* 801E1690  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801E1694  3B A3 EB C8 */	addi r29, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801E1698  A8 1D 07 60 */	lha r0, 0x760(r29)
/* 801E169C  2C 00 00 00 */	cmpwi r0, 0
/* 801E16A0  40 81 00 84 */	ble lbl_801E1724
/* 801E16A4  3B 40 00 00 */	li r26, 0
/* 801E16A8  3B E0 00 00 */	li r31, 0
/* 801E16AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801E16B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801E16B4  3B 83 01 1C */	addi r28, r3, 0x11c
/* 801E16B8  3C 60 80 3C */	lis r3, letter_data__12dMenu_Letter@ha /* 0x803BF81C@ha */
/* 801E16BC  3B C3 F8 1C */	addi r30, r3, letter_data__12dMenu_Letter@l /* 0x803BF81C@l */
/* 801E16C0  48 00 00 54 */	b lbl_801E1714
lbl_801E16C4:
/* 801E16C4  7C 7E FA 14 */	add r3, r30, r31
/* 801E16C8  A0 03 00 00 */	lhz r0, 0(r3)
/* 801E16CC  28 00 00 00 */	cmplwi r0, 0
/* 801E16D0  40 82 00 1C */	bne lbl_801E16EC
/* 801E16D4  A0 03 00 02 */	lhz r0, 2(r3)
/* 801E16D8  28 00 00 00 */	cmplwi r0, 0
/* 801E16DC  40 82 00 10 */	bne lbl_801E16EC
/* 801E16E0  A0 03 00 04 */	lhz r0, 4(r3)
/* 801E16E4  28 00 00 00 */	cmplwi r0, 0
/* 801E16E8  41 82 00 24 */	beq lbl_801E170C
lbl_801E16EC:
/* 801E16EC  7F 83 E3 78 */	mr r3, r28
/* 801E16F0  7F 44 D3 78 */	mr r4, r26
/* 801E16F4  4B E5 2D 35 */	bl onLetterGetFlag__17dSv_letter_info_cFi
/* 801E16F8  38 9A 00 01 */	addi r4, r26, 1
/* 801E16FC  57 63 06 3E */	clrlwi r3, r27, 0x18
/* 801E1700  38 03 00 10 */	addi r0, r3, 0x10
/* 801E1704  7C 9C 01 AE */	stbx r4, r28, r0
/* 801E1708  3B 7B 00 01 */	addi r27, r27, 1
lbl_801E170C:
/* 801E170C  3B 5A 00 01 */	addi r26, r26, 1
/* 801E1710  3B FF 00 08 */	addi r31, r31, 8
lbl_801E1714:
/* 801E1714  A8 1D 07 60 */	lha r0, 0x760(r29)
/* 801E1718  7C 1A 00 00 */	cmpw r26, r0
/* 801E171C  41 80 FF A8 */	blt lbl_801E16C4
/* 801E1720  48 00 00 0C */	b lbl_801E172C
lbl_801E1724:
/* 801E1724  48 03 CF C1 */	bl dMeter2Info_getRecieveLetterNum__Fv
/* 801E1728  7C 7B 1B 78 */	mr r27, r3
lbl_801E172C:
/* 801E172C  7F 63 DB 78 */	mr r3, r27
/* 801E1730  39 61 00 20 */	addi r11, r1, 0x20
/* 801E1734  48 18 0A E9 */	bl _restgpr_26
/* 801E1738  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801E173C  7C 08 03 A6 */	mtlr r0
/* 801E1740  38 21 00 20 */	addi r1, r1, 0x20
/* 801E1744  4E 80 00 20 */	blr 
