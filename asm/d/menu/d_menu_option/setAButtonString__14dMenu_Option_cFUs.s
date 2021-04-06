lbl_801E7E98:
/* 801E7E98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801E7E9C  7C 08 02 A6 */	mflr r0
/* 801E7EA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801E7EA4  39 61 00 20 */	addi r11, r1, 0x20
/* 801E7EA8  48 17 A3 29 */	bl _savegpr_26
/* 801E7EAC  7C 7F 1B 78 */	mr r31, r3
/* 801E7EB0  54 9B 04 3E */	clrlwi r27, r4, 0x10
/* 801E7EB4  A0 03 03 DC */	lhz r0, 0x3dc(r3)
/* 801E7EB8  7C 1B 00 40 */	cmplw r27, r0
/* 801E7EBC  41 82 00 C8 */	beq lbl_801E7F84
/* 801E7EC0  B0 9F 03 DC */	sth r4, 0x3dc(r31)
/* 801E7EC4  28 1B 00 00 */	cmplwi r27, 0
/* 801E7EC8  40 82 00 5C */	bne lbl_801E7F24
/* 801E7ECC  3B 60 00 00 */	li r27, 0
/* 801E7ED0  3B C0 00 00 */	li r30, 0
/* 801E7ED4  3C 60 80 39 */	lis r3, text_a_tag_6194@ha /* 0x80397588@ha */
/* 801E7ED8  3B A3 75 88 */	addi r29, r3, text_a_tag_6194@l /* 0x80397588@l */
/* 801E7EDC  3C 60 80 39 */	lis r3, d_menu_d_menu_option__stringBase0@ha /* 0x803975D8@ha */
/* 801E7EE0  3B 83 75 D8 */	addi r28, r3, d_menu_d_menu_option__stringBase0@l /* 0x803975D8@l */
lbl_801E7EE4:
/* 801E7EE4  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801E7EE8  7C 9D F2 14 */	add r4, r29, r30
/* 801E7EEC  80 A4 00 00 */	lwz r5, 0(r4)
/* 801E7EF0  80 C4 00 04 */	lwz r6, 4(r4)
/* 801E7EF4  81 83 00 00 */	lwz r12, 0(r3)
/* 801E7EF8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E7EFC  7D 89 03 A6 */	mtctr r12
/* 801E7F00  4E 80 04 21 */	bctrl 
/* 801E7F04  48 11 87 55 */	bl getStringPtr__10J2DTextBoxCFv
/* 801E7F08  38 9C 00 1D */	addi r4, r28, 0x1d
/* 801E7F0C  48 18 0C 21 */	bl strcpy
/* 801E7F10  3B 7B 00 01 */	addi r27, r27, 1
/* 801E7F14  2C 1B 00 05 */	cmpwi r27, 5
/* 801E7F18  3B DE 00 08 */	addi r30, r30, 8
/* 801E7F1C  41 80 FF C8 */	blt lbl_801E7EE4
/* 801E7F20  48 00 00 64 */	b lbl_801E7F84
lbl_801E7F24:
/* 801E7F24  3B 40 00 00 */	li r26, 0
/* 801E7F28  3B C0 00 00 */	li r30, 0
/* 801E7F2C  3C 60 80 39 */	lis r3, text_a_tag_6194@ha /* 0x80397588@ha */
/* 801E7F30  3B 83 75 88 */	addi r28, r3, text_a_tag_6194@l /* 0x80397588@l */
/* 801E7F34  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801E7F38  3B A3 01 88 */	addi r29, r3, g_meter2_info@l /* 0x80430188@l */
lbl_801E7F3C:
/* 801E7F3C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801E7F40  7C 9C F2 14 */	add r4, r28, r30
/* 801E7F44  80 A4 00 00 */	lwz r5, 0(r4)
/* 801E7F48  80 C4 00 04 */	lwz r6, 4(r4)
/* 801E7F4C  81 83 00 00 */	lwz r12, 0(r3)
/* 801E7F50  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E7F54  7D 89 03 A6 */	mtctr r12
/* 801E7F58  4E 80 04 21 */	bctrl 
/* 801E7F5C  48 11 86 FD */	bl getStringPtr__10J2DTextBoxCFv
/* 801E7F60  7C 65 1B 78 */	mr r5, r3
/* 801E7F64  7F A3 EB 78 */	mr r3, r29
/* 801E7F68  7F 64 DB 78 */	mr r4, r27
/* 801E7F6C  38 C0 00 00 */	li r6, 0
/* 801E7F70  48 03 45 D5 */	bl getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 801E7F74  3B 5A 00 01 */	addi r26, r26, 1
/* 801E7F78  2C 1A 00 05 */	cmpwi r26, 5
/* 801E7F7C  3B DE 00 08 */	addi r30, r30, 8
/* 801E7F80  41 80 FF BC */	blt lbl_801E7F3C
lbl_801E7F84:
/* 801E7F84  39 61 00 20 */	addi r11, r1, 0x20
/* 801E7F88  48 17 A2 95 */	bl _restgpr_26
/* 801E7F8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801E7F90  7C 08 03 A6 */	mtlr r0
/* 801E7F94  38 21 00 20 */	addi r1, r1, 0x20
/* 801E7F98  4E 80 00 20 */	blr 
