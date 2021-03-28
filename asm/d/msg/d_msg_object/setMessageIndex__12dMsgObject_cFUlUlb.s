lbl_80233D04:
/* 80233D04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80233D08  7C 08 02 A6 */	mflr r0
/* 80233D0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80233D10  39 61 00 20 */	addi r11, r1, 0x20
/* 80233D14  48 12 E4 C1 */	bl _savegpr_27
/* 80233D18  7C 7D 1B 78 */	mr r29, r3
/* 80233D1C  7C BB 2B 78 */	mr r27, r5
/* 80233D20  7C DF 33 78 */	mr r31, r6
/* 80233D24  90 83 01 58 */	stw r4, 0x158(r3)
/* 80233D28  48 00 02 B1 */	bl getRevoMessageIndex__12dMsgObject_cFUl
/* 80233D2C  7C 7E 1B 78 */	mr r30, r3
/* 80233D30  88 1D 04 CC */	lbz r0, 0x4cc(r29)
/* 80233D34  28 00 00 00 */	cmplwi r0, 0
/* 80233D38  40 82 00 0C */	bne lbl_80233D44
/* 80233D3C  38 00 00 01 */	li r0, 1
/* 80233D40  98 1D 04 CB */	stb r0, 0x4cb(r29)
lbl_80233D44:
/* 80233D44  93 DD 01 54 */	stw r30, 0x154(r29)
/* 80233D48  93 7D 01 5C */	stw r27, 0x15c(r29)
/* 80233D4C  38 00 00 00 */	li r0, 0
/* 80233D50  98 1D 04 D1 */	stb r0, 0x4d1(r29)
/* 80233D54  80 9D 01 40 */	lwz r4, 0x140(r29)
/* 80233D58  80 1D 01 3C */	lwz r0, 0x13c(r29)
/* 80233D5C  7C 04 00 40 */	cmplw r4, r0
/* 80233D60  41 82 00 2C */	beq lbl_80233D8C
/* 80233D64  28 04 00 00 */	cmplwi r4, 0
/* 80233D68  41 82 00 24 */	beq lbl_80233D8C
/* 80233D6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80233D70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80233D74  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80233D78  4B E0 F9 15 */	bl setPtT__14dEvt_control_cFPv
/* 80233D7C  38 00 00 01 */	li r0, 1
/* 80233D80  98 1D 04 D1 */	stb r0, 0x4d1(r29)
/* 80233D84  80 1D 01 40 */	lwz r0, 0x140(r29)
/* 80233D88  90 1D 01 3C */	stw r0, 0x13c(r29)
lbl_80233D8C:
/* 80233D8C  7F A3 EB 78 */	mr r3, r29
/* 80233D90  80 9D 01 54 */	lwz r4, 0x154(r29)
/* 80233D94  48 00 03 A9 */	bl getMessageGroup__12dMsgObject_cFUl
/* 80233D98  48 00 43 2D */	bl changeGroup__12dMsgObject_cFs
/* 80233D9C  38 00 00 00 */	li r0, 0
/* 80233DA0  B0 1D 01 72 */	sth r0, 0x172(r29)
/* 80233DA4  A8 1D 01 72 */	lha r0, 0x172(r29)
/* 80233DA8  80 7D 01 18 */	lwz r3, 0x118(r29)
/* 80233DAC  B0 03 05 DA */	sth r0, 0x5da(r3)
/* 80233DB0  80 7D 01 30 */	lwz r3, 0x130(r29)
/* 80233DB4  3B 83 00 20 */	addi r28, r3, 0x20
/* 80233DB8  80 03 00 24 */	lwz r0, 0x24(r3)
/* 80233DBC  7F 7C 02 14 */	add r27, r28, r0
/* 80233DC0  7F A3 EB 78 */	mr r3, r29
/* 80233DC4  7F C4 F3 78 */	mr r4, r30
/* 80233DC8  48 00 01 BD */	bl getMessageIndex__12dMsgObject_cFUl
/* 80233DCC  1C 03 00 14 */	mulli r0, r3, 0x14
/* 80233DD0  7C 7C 02 14 */	add r3, r28, r0
/* 80233DD4  88 03 00 1F */	lbz r0, 0x1f(r3)
/* 80233DD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80233DDC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80233DE0  90 03 5E EC */	stw r0, 0x5eec(r3)
/* 80233DE4  80 9D 01 5C */	lwz r4, 0x15c(r29)
/* 80233DE8  28 04 03 E8 */	cmplwi r4, 0x3e8
/* 80233DEC  40 82 00 14 */	bne lbl_80233E00
/* 80233DF0  38 00 00 00 */	li r0, 0
/* 80233DF4  80 7D 01 18 */	lwz r3, 0x118(r29)
/* 80233DF8  90 03 05 C4 */	stw r0, 0x5c4(r3)
/* 80233DFC  48 00 00 40 */	b lbl_80233E3C
lbl_80233E00:
/* 80233E00  7F A3 EB 78 */	mr r3, r29
/* 80233E04  48 00 01 81 */	bl getMessageIndex__12dMsgObject_cFUl
/* 80233E08  28 03 02 64 */	cmplwi r3, 0x264
/* 80233E0C  40 82 00 14 */	bne lbl_80233E20
/* 80233E10  38 00 00 00 */	li r0, 0
/* 80233E14  80 7D 01 18 */	lwz r3, 0x118(r29)
/* 80233E18  90 03 05 C4 */	stw r0, 0x5c4(r3)
/* 80233E1C  48 00 00 20 */	b lbl_80233E3C
lbl_80233E20:
/* 80233E20  1C 03 00 14 */	mulli r0, r3, 0x14
/* 80233E24  7C 7C 02 14 */	add r3, r28, r0
/* 80233E28  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80233E2C  38 03 00 08 */	addi r0, r3, 8
/* 80233E30  7C 1B 02 14 */	add r0, r27, r0
/* 80233E34  80 7D 01 18 */	lwz r3, 0x118(r29)
/* 80233E38  90 03 05 C4 */	stw r0, 0x5c4(r3)
lbl_80233E3C:
/* 80233E3C  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80233E40  41 82 00 18 */	beq lbl_80233E58
/* 80233E44  80 7D 01 14 */	lwz r3, 0x114(r29)
/* 80233E48  80 9D 01 54 */	lwz r4, 0x154(r29)
/* 80233E4C  38 A0 00 00 */	li r5, 0
/* 80233E50  38 C0 00 00 */	li r6, 0
/* 80233E54  48 07 3A A1 */	bl setMessageID__Q28JMessage8TControlFUlUlPb
lbl_80233E58:
/* 80233E58  39 61 00 20 */	addi r11, r1, 0x20
/* 80233E5C  48 12 E3 C5 */	bl _restgpr_27
/* 80233E60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80233E64  7C 08 03 A6 */	mtlr r0
/* 80233E68  38 21 00 20 */	addi r1, r1, 0x20
/* 80233E6C  4E 80 00 20 */	blr 
