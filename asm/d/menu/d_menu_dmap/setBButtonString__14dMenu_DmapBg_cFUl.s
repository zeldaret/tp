lbl_801B8EBC:
/* 801B8EBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801B8EC0  7C 08 02 A6 */	mflr r0
/* 801B8EC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801B8EC8  39 61 00 20 */	addi r11, r1, 0x20
/* 801B8ECC  48 1A 93 0D */	bl _savegpr_28
/* 801B8ED0  7C 7C 1B 78 */	mr r28, r3
/* 801B8ED4  7C 9D 23 78 */	mr r29, r4
/* 801B8ED8  3B C0 00 00 */	li r30, 0
/* 801B8EDC  3B E0 00 00 */	li r31, 0
lbl_801B8EE0:
/* 801B8EE0  28 1D 00 00 */	cmplwi r29, 0
/* 801B8EE4  40 82 00 44 */	bne lbl_801B8F28
/* 801B8EE8  80 7C 0C B4 */	lwz r3, 0xcb4(r28)
/* 801B8EEC  3C 80 80 39 */	lis r4, cont_bt_4211@ha
/* 801B8EF0  38 04 55 F0 */	addi r0, r4, cont_bt_4211@l
/* 801B8EF4  7C 80 FA 14 */	add r4, r0, r31
/* 801B8EF8  80 A4 00 00 */	lwz r5, 0(r4)
/* 801B8EFC  80 C4 00 04 */	lwz r6, 4(r4)
/* 801B8F00  81 83 00 00 */	lwz r12, 0(r3)
/* 801B8F04  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B8F08  7D 89 03 A6 */	mtctr r12
/* 801B8F0C  4E 80 04 21 */	bctrl 
/* 801B8F10  48 14 77 49 */	bl getStringPtr__10J2DTextBoxCFv
/* 801B8F14  3C 80 80 39 */	lis r4, d_menu_d_menu_dmap__stringBase0@ha
/* 801B8F18  38 84 57 60 */	addi r4, r4, d_menu_d_menu_dmap__stringBase0@l
/* 801B8F1C  38 84 00 6F */	addi r4, r4, 0x6f
/* 801B8F20  48 1A FC 0D */	bl strcpy
/* 801B8F24  48 00 00 48 */	b lbl_801B8F6C
lbl_801B8F28:
/* 801B8F28  80 7C 0C B4 */	lwz r3, 0xcb4(r28)
/* 801B8F2C  3C 80 80 39 */	lis r4, cont_bt_4211@ha
/* 801B8F30  38 04 55 F0 */	addi r0, r4, cont_bt_4211@l
/* 801B8F34  7C 80 FA 14 */	add r4, r0, r31
/* 801B8F38  80 A4 00 00 */	lwz r5, 0(r4)
/* 801B8F3C  80 C4 00 04 */	lwz r6, 4(r4)
/* 801B8F40  81 83 00 00 */	lwz r12, 0(r3)
/* 801B8F44  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B8F48  7D 89 03 A6 */	mtctr r12
/* 801B8F4C  4E 80 04 21 */	bctrl 
/* 801B8F50  48 14 77 09 */	bl getStringPtr__10J2DTextBoxCFv
/* 801B8F54  7C 65 1B 78 */	mr r5, r3
/* 801B8F58  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801B8F5C  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801B8F60  7F A4 EB 78 */	mr r4, r29
/* 801B8F64  38 C0 00 00 */	li r6, 0
/* 801B8F68  48 06 35 DD */	bl getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
lbl_801B8F6C:
/* 801B8F6C  3B DE 00 01 */	addi r30, r30, 1
/* 801B8F70  2C 1E 00 05 */	cmpwi r30, 5
/* 801B8F74  3B FF 00 08 */	addi r31, r31, 8
/* 801B8F78  41 80 FF 68 */	blt lbl_801B8EE0
/* 801B8F7C  39 61 00 20 */	addi r11, r1, 0x20
/* 801B8F80  48 1A 92 A5 */	bl _restgpr_28
/* 801B8F84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801B8F88  7C 08 03 A6 */	mtlr r0
/* 801B8F8C  38 21 00 20 */	addi r1, r1, 0x20
/* 801B8F90  4E 80 00 20 */	blr 
