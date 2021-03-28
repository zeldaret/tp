lbl_801B8DE4:
/* 801B8DE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801B8DE8  7C 08 02 A6 */	mflr r0
/* 801B8DEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801B8DF0  39 61 00 20 */	addi r11, r1, 0x20
/* 801B8DF4  48 1A 93 E5 */	bl _savegpr_28
/* 801B8DF8  7C 7C 1B 78 */	mr r28, r3
/* 801B8DFC  7C 9D 23 78 */	mr r29, r4
/* 801B8E00  3B C0 00 00 */	li r30, 0
/* 801B8E04  3B E0 00 00 */	li r31, 0
lbl_801B8E08:
/* 801B8E08  28 1D 00 00 */	cmplwi r29, 0
/* 801B8E0C  40 82 00 44 */	bne lbl_801B8E50
/* 801B8E10  80 7C 0C B4 */	lwz r3, 0xcb4(r28)
/* 801B8E14  3C 80 80 39 */	lis r4, cont_at_4196@ha
/* 801B8E18  38 04 55 C8 */	addi r0, r4, cont_at_4196@l
/* 801B8E1C  7C 80 FA 14 */	add r4, r0, r31
/* 801B8E20  80 A4 00 00 */	lwz r5, 0(r4)
/* 801B8E24  80 C4 00 04 */	lwz r6, 4(r4)
/* 801B8E28  81 83 00 00 */	lwz r12, 0(r3)
/* 801B8E2C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B8E30  7D 89 03 A6 */	mtctr r12
/* 801B8E34  4E 80 04 21 */	bctrl 
/* 801B8E38  48 14 78 21 */	bl getStringPtr__10J2DTextBoxCFv
/* 801B8E3C  3C 80 80 39 */	lis r4, d_menu_d_menu_dmap__stringBase0@ha
/* 801B8E40  38 84 57 60 */	addi r4, r4, d_menu_d_menu_dmap__stringBase0@l
/* 801B8E44  38 84 00 6F */	addi r4, r4, 0x6f
/* 801B8E48  48 1A FC E5 */	bl strcpy
/* 801B8E4C  48 00 00 48 */	b lbl_801B8E94
lbl_801B8E50:
/* 801B8E50  80 7C 0C B4 */	lwz r3, 0xcb4(r28)
/* 801B8E54  3C 80 80 39 */	lis r4, cont_at_4196@ha
/* 801B8E58  38 04 55 C8 */	addi r0, r4, cont_at_4196@l
/* 801B8E5C  7C 80 FA 14 */	add r4, r0, r31
/* 801B8E60  80 A4 00 00 */	lwz r5, 0(r4)
/* 801B8E64  80 C4 00 04 */	lwz r6, 4(r4)
/* 801B8E68  81 83 00 00 */	lwz r12, 0(r3)
/* 801B8E6C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B8E70  7D 89 03 A6 */	mtctr r12
/* 801B8E74  4E 80 04 21 */	bctrl 
/* 801B8E78  48 14 77 E1 */	bl getStringPtr__10J2DTextBoxCFv
/* 801B8E7C  7C 65 1B 78 */	mr r5, r3
/* 801B8E80  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801B8E84  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801B8E88  7F A4 EB 78 */	mr r4, r29
/* 801B8E8C  38 C0 00 00 */	li r6, 0
/* 801B8E90  48 06 36 B5 */	bl getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
lbl_801B8E94:
/* 801B8E94  3B DE 00 01 */	addi r30, r30, 1
/* 801B8E98  2C 1E 00 05 */	cmpwi r30, 5
/* 801B8E9C  3B FF 00 08 */	addi r31, r31, 8
/* 801B8EA0  41 80 FF 68 */	blt lbl_801B8E08
/* 801B8EA4  39 61 00 20 */	addi r11, r1, 0x20
/* 801B8EA8  48 1A 93 7D */	bl _restgpr_28
/* 801B8EAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801B8EB0  7C 08 03 A6 */	mtlr r0
/* 801B8EB4  38 21 00 20 */	addi r1, r1, 0x20
/* 801B8EB8  4E 80 00 20 */	blr 
