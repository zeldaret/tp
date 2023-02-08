lbl_801F8D20:
/* 801F8D20  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801F8D24  7C 08 02 A6 */	mflr r0
/* 801F8D28  90 01 00 34 */	stw r0, 0x34(r1)
/* 801F8D2C  39 61 00 30 */	addi r11, r1, 0x30
/* 801F8D30  48 16 94 99 */	bl _savegpr_24
/* 801F8D34  7C 7F 1B 78 */	mr r31, r3
/* 801F8D38  38 60 01 18 */	li r3, 0x118
/* 801F8D3C  48 0D 5F 11 */	bl __nw__FUl
/* 801F8D40  7C 60 1B 79 */	or. r0, r3, r3
/* 801F8D44  41 82 00 0C */	beq lbl_801F8D50
/* 801F8D48  48 0F F7 51 */	bl __ct__9J2DScreenFv
/* 801F8D4C  7C 60 1B 78 */	mr r0, r3
lbl_801F8D50:
/* 801F8D50  90 1F 00 20 */	stw r0, 0x20(r31)
/* 801F8D54  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801F8D58  3C 80 80 39 */	lis r4, d_menu_d_menu_skill__stringBase0@ha /* 0x80397DB8@ha */
/* 801F8D5C  38 84 7D B8 */	addi r4, r4, d_menu_d_menu_skill__stringBase0@l /* 0x80397DB8@l */
/* 801F8D60  38 84 00 54 */	addi r4, r4, 0x54
/* 801F8D64  3C A0 00 02 */	lis r5, 2
/* 801F8D68  80 DF 00 08 */	lwz r6, 8(r31)
/* 801F8D6C  48 0F F8 DD */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 801F8D70  38 60 00 00 */	li r3, 0
/* 801F8D74  7C 65 1B 78 */	mr r5, r3
/* 801F8D78  7C 64 1B 78 */	mr r4, r3
/* 801F8D7C  38 00 00 02 */	li r0, 2
/* 801F8D80  7C 09 03 A6 */	mtctr r0
lbl_801F8D84:
/* 801F8D84  7C DF 1A 14 */	add r6, r31, r3
/* 801F8D88  90 A6 01 88 */	stw r5, 0x188(r6)
/* 801F8D8C  90 86 01 90 */	stw r4, 0x190(r6)
/* 801F8D90  38 63 00 04 */	addi r3, r3, 4
/* 801F8D94  42 00 FF F0 */	bdnz lbl_801F8D84
/* 801F8D98  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801F8D9C  48 05 C3 4D */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 801F8DA0  3B 00 00 00 */	li r24, 0
/* 801F8DA4  3B C0 00 00 */	li r30, 0
/* 801F8DA8  3B A0 00 00 */	li r29, 0
/* 801F8DAC  3C 60 80 39 */	lis r3, text_a_tag@ha /* 0x80397D30@ha */
/* 801F8DB0  3B 43 7D 30 */	addi r26, r3, text_a_tag@l /* 0x80397D30@l */
/* 801F8DB4  3C 60 80 39 */	lis r3, text_b_tag@ha /* 0x80397D58@ha */
/* 801F8DB8  3B 63 7D 58 */	addi r27, r3, text_b_tag@l /* 0x80397D58@l */
/* 801F8DBC  3C 60 80 39 */	lis r3, d_menu_d_menu_skill__stringBase0@ha /* 0x80397DB8@ha */
/* 801F8DC0  3B 83 7D B8 */	addi r28, r3, d_menu_d_menu_skill__stringBase0@l /* 0x80397DB8@l */
lbl_801F8DC4:
/* 801F8DC4  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801F8DC8  7C 9A EA 14 */	add r4, r26, r29
/* 801F8DCC  80 A4 00 00 */	lwz r5, 0(r4)
/* 801F8DD0  80 C4 00 04 */	lwz r6, 4(r4)
/* 801F8DD4  81 83 00 00 */	lwz r12, 0(r3)
/* 801F8DD8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801F8DDC  7D 89 03 A6 */	mtctr r12
/* 801F8DE0  4E 80 04 21 */	bctrl 
/* 801F8DE4  7F 3F F2 14 */	add r25, r31, r30
/* 801F8DE8  90 79 01 20 */	stw r3, 0x120(r25)
/* 801F8DEC  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801F8DF0  7C 9B EA 14 */	add r4, r27, r29
/* 801F8DF4  80 A4 00 00 */	lwz r5, 0(r4)
/* 801F8DF8  80 C4 00 04 */	lwz r6, 4(r4)
/* 801F8DFC  81 83 00 00 */	lwz r12, 0(r3)
/* 801F8E00  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801F8E04  7D 89 03 A6 */	mtctr r12
/* 801F8E08  4E 80 04 21 */	bctrl 
/* 801F8E0C  90 79 01 34 */	stw r3, 0x134(r25)
/* 801F8E10  4B E1 BB E1 */	bl mDoExt_getMesgFont__Fv
/* 801F8E14  7C 64 1B 78 */	mr r4, r3
/* 801F8E18  80 79 01 20 */	lwz r3, 0x120(r25)
/* 801F8E1C  81 83 00 00 */	lwz r12, 0(r3)
/* 801F8E20  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801F8E24  7D 89 03 A6 */	mtctr r12
/* 801F8E28  4E 80 04 21 */	bctrl 
/* 801F8E2C  4B E1 BB C5 */	bl mDoExt_getMesgFont__Fv
/* 801F8E30  7C 64 1B 78 */	mr r4, r3
/* 801F8E34  80 79 01 34 */	lwz r3, 0x134(r25)
/* 801F8E38  81 83 00 00 */	lwz r12, 0(r3)
/* 801F8E3C  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801F8E40  7D 89 03 A6 */	mtctr r12
/* 801F8E44  4E 80 04 21 */	bctrl 
/* 801F8E48  80 79 01 20 */	lwz r3, 0x120(r25)
/* 801F8E4C  38 80 00 20 */	li r4, 0x20
/* 801F8E50  38 BC 00 2F */	addi r5, r28, 0x2f
/* 801F8E54  4C C6 31 82 */	crclr 6
/* 801F8E58  48 10 78 F5 */	bl setString__10J2DTextBoxFsPCce
/* 801F8E5C  80 79 01 34 */	lwz r3, 0x134(r25)
/* 801F8E60  38 80 00 20 */	li r4, 0x20
/* 801F8E64  38 BC 00 2F */	addi r5, r28, 0x2f
/* 801F8E68  4C C6 31 82 */	crclr 6
/* 801F8E6C  48 10 78 E1 */	bl setString__10J2DTextBoxFsPCce
/* 801F8E70  3B 18 00 01 */	addi r24, r24, 1
/* 801F8E74  2C 18 00 05 */	cmpwi r24, 5
/* 801F8E78  3B DE 00 04 */	addi r30, r30, 4
/* 801F8E7C  3B BD 00 08 */	addi r29, r29, 8
/* 801F8E80  41 80 FF 44 */	blt lbl_801F8DC4
/* 801F8E84  39 61 00 30 */	addi r11, r1, 0x30
/* 801F8E88  48 16 93 8D */	bl _restgpr_24
/* 801F8E8C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801F8E90  7C 08 03 A6 */	mtlr r0
/* 801F8E94  38 21 00 30 */	addi r1, r1, 0x30
/* 801F8E98  4E 80 00 20 */	blr 
