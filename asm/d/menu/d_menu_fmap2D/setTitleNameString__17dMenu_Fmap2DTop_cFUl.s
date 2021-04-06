lbl_801D6F38:
/* 801D6F38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D6F3C  7C 08 02 A6 */	mflr r0
/* 801D6F40  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D6F44  39 61 00 20 */	addi r11, r1, 0x20
/* 801D6F48  48 18 B2 91 */	bl _savegpr_28
/* 801D6F4C  7C 7C 1B 78 */	mr r28, r3
/* 801D6F50  7C 9D 23 78 */	mr r29, r4
/* 801D6F54  3B C0 00 00 */	li r30, 0
/* 801D6F58  3B E0 00 00 */	li r31, 0
lbl_801D6F5C:
/* 801D6F5C  28 1D 00 00 */	cmplwi r29, 0
/* 801D6F60  40 82 00 44 */	bne lbl_801D6FA4
/* 801D6F64  80 7C 00 08 */	lwz r3, 8(r28)
/* 801D6F68  3C 80 80 39 */	lis r4, ffont_name_6110@ha /* 0x803964B8@ha */
/* 801D6F6C  38 04 64 B8 */	addi r0, r4, ffont_name_6110@l /* 0x803964B8@l */
/* 801D6F70  7C 80 FA 14 */	add r4, r0, r31
/* 801D6F74  80 A4 00 00 */	lwz r5, 0(r4)
/* 801D6F78  80 C4 00 04 */	lwz r6, 4(r4)
/* 801D6F7C  81 83 00 00 */	lwz r12, 0(r3)
/* 801D6F80  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D6F84  7D 89 03 A6 */	mtctr r12
/* 801D6F88  4E 80 04 21 */	bctrl 
/* 801D6F8C  48 12 96 CD */	bl getStringPtr__10J2DTextBoxCFv
/* 801D6F90  3C 80 80 39 */	lis r4, d_menu_d_menu_fmap2D__stringBase0@ha /* 0x803965D0@ha */
/* 801D6F94  38 84 65 D0 */	addi r4, r4, d_menu_d_menu_fmap2D__stringBase0@l /* 0x803965D0@l */
/* 801D6F98  38 84 00 BB */	addi r4, r4, 0xbb
/* 801D6F9C  48 19 1B 91 */	bl strcpy
/* 801D6FA0  48 00 00 48 */	b lbl_801D6FE8
lbl_801D6FA4:
/* 801D6FA4  80 7C 00 08 */	lwz r3, 8(r28)
/* 801D6FA8  3C 80 80 39 */	lis r4, ffont_name_6110@ha /* 0x803964B8@ha */
/* 801D6FAC  38 04 64 B8 */	addi r0, r4, ffont_name_6110@l /* 0x803964B8@l */
/* 801D6FB0  7C 80 FA 14 */	add r4, r0, r31
/* 801D6FB4  80 A4 00 00 */	lwz r5, 0(r4)
/* 801D6FB8  80 C4 00 04 */	lwz r6, 4(r4)
/* 801D6FBC  81 83 00 00 */	lwz r12, 0(r3)
/* 801D6FC0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D6FC4  7D 89 03 A6 */	mtctr r12
/* 801D6FC8  4E 80 04 21 */	bctrl 
/* 801D6FCC  48 12 96 8D */	bl getStringPtr__10J2DTextBoxCFv
/* 801D6FD0  7C 65 1B 78 */	mr r5, r3
/* 801D6FD4  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801D6FD8  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801D6FDC  7F A4 EB 78 */	mr r4, r29
/* 801D6FE0  38 C0 00 00 */	li r6, 0
/* 801D6FE4  48 04 55 61 */	bl getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
lbl_801D6FE8:
/* 801D6FE8  3B DE 00 01 */	addi r30, r30, 1
/* 801D6FEC  2C 1E 00 07 */	cmpwi r30, 7
/* 801D6FF0  3B FF 00 08 */	addi r31, r31, 8
/* 801D6FF4  41 80 FF 68 */	blt lbl_801D6F5C
/* 801D6FF8  39 61 00 20 */	addi r11, r1, 0x20
/* 801D6FFC  48 18 B2 29 */	bl _restgpr_28
/* 801D7000  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D7004  7C 08 03 A6 */	mtlr r0
/* 801D7008  38 21 00 20 */	addi r1, r1, 0x20
/* 801D700C  4E 80 00 20 */	blr 
