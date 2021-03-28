lbl_801C5D3C:
/* 801C5D3C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801C5D40  7C 08 02 A6 */	mflr r0
/* 801C5D44  90 01 00 34 */	stw r0, 0x34(r1)
/* 801C5D48  39 61 00 30 */	addi r11, r1, 0x30
/* 801C5D4C  48 19 C4 7D */	bl _savegpr_24
/* 801C5D50  7C 7F 1B 78 */	mr r31, r3
/* 801C5D54  38 60 01 18 */	li r3, 0x118
/* 801C5D58  48 10 8E F5 */	bl __nw__FUl
/* 801C5D5C  7C 60 1B 79 */	or. r0, r3, r3
/* 801C5D60  41 82 00 0C */	beq lbl_801C5D6C
/* 801C5D64  48 13 27 35 */	bl __ct__9J2DScreenFv
/* 801C5D68  7C 60 1B 78 */	mr r0, r3
lbl_801C5D6C:
/* 801C5D6C  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 801C5D70  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801C5D74  3C 80 80 39 */	lis r4, d_menu_d_menu_fishing__stringBase0@ha
/* 801C5D78  38 84 60 68 */	addi r4, r4, d_menu_d_menu_fishing__stringBase0@l
/* 801C5D7C  38 84 00 3F */	addi r4, r4, 0x3f
/* 801C5D80  3C A0 00 02 */	lis r5, 2
/* 801C5D84  80 DF 00 08 */	lwz r6, 8(r31)
/* 801C5D88  48 13 28 C1 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 801C5D8C  38 60 00 00 */	li r3, 0
/* 801C5D90  7C 65 1B 78 */	mr r5, r3
/* 801C5D94  7C 64 1B 78 */	mr r4, r3
/* 801C5D98  38 00 00 02 */	li r0, 2
/* 801C5D9C  7C 09 03 A6 */	mtctr r0
lbl_801C5DA0:
/* 801C5DA0  7C DF 1A 14 */	add r6, r31, r3
/* 801C5DA4  90 A6 00 FC */	stw r5, 0xfc(r6)
/* 801C5DA8  90 86 01 04 */	stw r4, 0x104(r6)
/* 801C5DAC  38 63 00 04 */	addi r3, r3, 4
/* 801C5DB0  42 00 FF F0 */	bdnz lbl_801C5DA0
/* 801C5DB4  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801C5DB8  48 08 F3 31 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 801C5DBC  3B 00 00 00 */	li r24, 0
/* 801C5DC0  3B C0 00 00 */	li r30, 0
/* 801C5DC4  3B A0 00 00 */	li r29, 0
/* 801C5DC8  3C 60 80 39 */	lis r3, text_a_tag@ha
/* 801C5DCC  3B 43 60 18 */	addi r26, r3, text_a_tag@l
/* 801C5DD0  3C 60 80 39 */	lis r3, text_b_tag@ha
/* 801C5DD4  3B 63 60 40 */	addi r27, r3, text_b_tag@l
/* 801C5DD8  3C 60 80 39 */	lis r3, d_menu_d_menu_fishing__stringBase0@ha
/* 801C5DDC  3B 83 60 68 */	addi r28, r3, d_menu_d_menu_fishing__stringBase0@l
lbl_801C5DE0:
/* 801C5DE0  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801C5DE4  7C 9A EA 14 */	add r4, r26, r29
/* 801C5DE8  80 A4 00 00 */	lwz r5, 0(r4)
/* 801C5DEC  80 C4 00 04 */	lwz r6, 4(r4)
/* 801C5DF0  81 83 00 00 */	lwz r12, 0(r3)
/* 801C5DF4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801C5DF8  7D 89 03 A6 */	mtctr r12
/* 801C5DFC  4E 80 04 21 */	bctrl 
/* 801C5E00  7F 3F F2 14 */	add r25, r31, r30
/* 801C5E04  90 79 00 20 */	stw r3, 0x20(r25)
/* 801C5E08  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801C5E0C  7C 9B EA 14 */	add r4, r27, r29
/* 801C5E10  80 A4 00 00 */	lwz r5, 0(r4)
/* 801C5E14  80 C4 00 04 */	lwz r6, 4(r4)
/* 801C5E18  81 83 00 00 */	lwz r12, 0(r3)
/* 801C5E1C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801C5E20  7D 89 03 A6 */	mtctr r12
/* 801C5E24  4E 80 04 21 */	bctrl 
/* 801C5E28  90 79 00 34 */	stw r3, 0x34(r25)
/* 801C5E2C  4B E4 EB C5 */	bl mDoExt_getMesgFont__Fv
/* 801C5E30  7C 64 1B 78 */	mr r4, r3
/* 801C5E34  80 79 00 20 */	lwz r3, 0x20(r25)
/* 801C5E38  81 83 00 00 */	lwz r12, 0(r3)
/* 801C5E3C  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801C5E40  7D 89 03 A6 */	mtctr r12
/* 801C5E44  4E 80 04 21 */	bctrl 
/* 801C5E48  4B E4 EB A9 */	bl mDoExt_getMesgFont__Fv
/* 801C5E4C  7C 64 1B 78 */	mr r4, r3
/* 801C5E50  80 79 00 34 */	lwz r3, 0x34(r25)
/* 801C5E54  81 83 00 00 */	lwz r12, 0(r3)
/* 801C5E58  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801C5E5C  7D 89 03 A6 */	mtctr r12
/* 801C5E60  4E 80 04 21 */	bctrl 
/* 801C5E64  80 79 00 20 */	lwz r3, 0x20(r25)
/* 801C5E68  38 80 00 20 */	li r4, 0x20
/* 801C5E6C  38 BC 00 3E */	addi r5, r28, 0x3e
/* 801C5E70  4C C6 31 82 */	crclr 6
/* 801C5E74  48 13 A8 D9 */	bl setString__10J2DTextBoxFsPCce
/* 801C5E78  80 79 00 34 */	lwz r3, 0x34(r25)
/* 801C5E7C  38 80 00 20 */	li r4, 0x20
/* 801C5E80  38 BC 00 3E */	addi r5, r28, 0x3e
/* 801C5E84  4C C6 31 82 */	crclr 6
/* 801C5E88  48 13 A8 C5 */	bl setString__10J2DTextBoxFsPCce
/* 801C5E8C  3B 18 00 01 */	addi r24, r24, 1
/* 801C5E90  2C 18 00 05 */	cmpwi r24, 5
/* 801C5E94  3B DE 00 04 */	addi r30, r30, 4
/* 801C5E98  3B BD 00 08 */	addi r29, r29, 8
/* 801C5E9C  41 80 FF 44 */	blt lbl_801C5DE0
/* 801C5EA0  39 61 00 30 */	addi r11, r1, 0x30
/* 801C5EA4  48 19 C3 71 */	bl _restgpr_24
/* 801C5EA8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801C5EAC  7C 08 03 A6 */	mtlr r0
/* 801C5EB0  38 21 00 30 */	addi r1, r1, 0x30
/* 801C5EB4  4E 80 00 20 */	blr 
