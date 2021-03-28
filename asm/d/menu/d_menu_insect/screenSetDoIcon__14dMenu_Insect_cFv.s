lbl_801D9BD0:
/* 801D9BD0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801D9BD4  7C 08 02 A6 */	mflr r0
/* 801D9BD8  90 01 00 34 */	stw r0, 0x34(r1)
/* 801D9BDC  39 61 00 30 */	addi r11, r1, 0x30
/* 801D9BE0  48 18 85 E9 */	bl _savegpr_24
/* 801D9BE4  7C 7F 1B 78 */	mr r31, r3
/* 801D9BE8  38 60 01 18 */	li r3, 0x118
/* 801D9BEC  48 0F 50 61 */	bl __nw__FUl
/* 801D9BF0  7C 60 1B 79 */	or. r0, r3, r3
/* 801D9BF4  41 82 00 0C */	beq lbl_801D9C00
/* 801D9BF8  48 11 E8 A1 */	bl __ct__9J2DScreenFv
/* 801D9BFC  7C 60 1B 78 */	mr r0, r3
lbl_801D9C00:
/* 801D9C00  90 1F 00 28 */	stw r0, 0x28(r31)
/* 801D9C04  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 801D9C08  3C 80 80 39 */	lis r4, d_menu_d_menu_insect__stringBase0@ha
/* 801D9C0C  38 84 68 C0 */	addi r4, r4, d_menu_d_menu_insect__stringBase0@l
/* 801D9C10  38 84 00 66 */	addi r4, r4, 0x66
/* 801D9C14  3C A0 00 02 */	lis r5, 2
/* 801D9C18  80 DF 00 08 */	lwz r6, 8(r31)
/* 801D9C1C  48 11 EA 2D */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 801D9C20  38 60 00 00 */	li r3, 0
/* 801D9C24  7C 65 1B 78 */	mr r5, r3
/* 801D9C28  7C 64 1B 78 */	mr r4, r3
/* 801D9C2C  38 00 00 02 */	li r0, 2
/* 801D9C30  7C 09 03 A6 */	mtctr r0
lbl_801D9C34:
/* 801D9C34  7C DF 1A 14 */	add r6, r31, r3
/* 801D9C38  90 A6 00 D8 */	stw r5, 0xd8(r6)
/* 801D9C3C  90 86 00 E0 */	stw r4, 0xe0(r6)
/* 801D9C40  38 63 00 04 */	addi r3, r3, 4
/* 801D9C44  42 00 FF F0 */	bdnz lbl_801D9C34
/* 801D9C48  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 801D9C4C  48 07 B4 9D */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 801D9C50  3B 00 00 00 */	li r24, 0
/* 801D9C54  3B C0 00 00 */	li r30, 0
/* 801D9C58  3B A0 00 00 */	li r29, 0
/* 801D9C5C  3C 60 80 39 */	lis r3, text_a_tag@ha
/* 801D9C60  3B 43 68 10 */	addi r26, r3, text_a_tag@l
/* 801D9C64  3C 60 80 39 */	lis r3, text_b_tag@ha
/* 801D9C68  3B 63 68 38 */	addi r27, r3, text_b_tag@l
/* 801D9C6C  3C 60 80 39 */	lis r3, d_menu_d_menu_insect__stringBase0@ha
/* 801D9C70  3B 83 68 C0 */	addi r28, r3, d_menu_d_menu_insect__stringBase0@l
lbl_801D9C74:
/* 801D9C74  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 801D9C78  7C 9A EA 14 */	add r4, r26, r29
/* 801D9C7C  80 A4 00 00 */	lwz r5, 0(r4)
/* 801D9C80  80 C4 00 04 */	lwz r6, 4(r4)
/* 801D9C84  81 83 00 00 */	lwz r12, 0(r3)
/* 801D9C88  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D9C8C  7D 89 03 A6 */	mtctr r12
/* 801D9C90  4E 80 04 21 */	bctrl 
/* 801D9C94  7F 3F F2 14 */	add r25, r31, r30
/* 801D9C98  90 79 00 2C */	stw r3, 0x2c(r25)
/* 801D9C9C  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 801D9CA0  7C 9B EA 14 */	add r4, r27, r29
/* 801D9CA4  80 A4 00 00 */	lwz r5, 0(r4)
/* 801D9CA8  80 C4 00 04 */	lwz r6, 4(r4)
/* 801D9CAC  81 83 00 00 */	lwz r12, 0(r3)
/* 801D9CB0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801D9CB4  7D 89 03 A6 */	mtctr r12
/* 801D9CB8  4E 80 04 21 */	bctrl 
/* 801D9CBC  90 79 00 40 */	stw r3, 0x40(r25)
/* 801D9CC0  4B E3 AD 31 */	bl mDoExt_getMesgFont__Fv
/* 801D9CC4  7C 64 1B 78 */	mr r4, r3
/* 801D9CC8  80 79 00 2C */	lwz r3, 0x2c(r25)
/* 801D9CCC  81 83 00 00 */	lwz r12, 0(r3)
/* 801D9CD0  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801D9CD4  7D 89 03 A6 */	mtctr r12
/* 801D9CD8  4E 80 04 21 */	bctrl 
/* 801D9CDC  4B E3 AD 15 */	bl mDoExt_getMesgFont__Fv
/* 801D9CE0  7C 64 1B 78 */	mr r4, r3
/* 801D9CE4  80 79 00 40 */	lwz r3, 0x40(r25)
/* 801D9CE8  81 83 00 00 */	lwz r12, 0(r3)
/* 801D9CEC  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801D9CF0  7D 89 03 A6 */	mtctr r12
/* 801D9CF4  4E 80 04 21 */	bctrl 
/* 801D9CF8  80 79 00 2C */	lwz r3, 0x2c(r25)
/* 801D9CFC  38 80 00 20 */	li r4, 0x20
/* 801D9D00  38 BC 00 32 */	addi r5, r28, 0x32
/* 801D9D04  4C C6 31 82 */	crclr 6
/* 801D9D08  48 12 6A 45 */	bl setString__10J2DTextBoxFsPCce
/* 801D9D0C  80 79 00 40 */	lwz r3, 0x40(r25)
/* 801D9D10  38 80 00 20 */	li r4, 0x20
/* 801D9D14  38 BC 00 32 */	addi r5, r28, 0x32
/* 801D9D18  4C C6 31 82 */	crclr 6
/* 801D9D1C  48 12 6A 31 */	bl setString__10J2DTextBoxFsPCce
/* 801D9D20  3B 18 00 01 */	addi r24, r24, 1
/* 801D9D24  2C 18 00 05 */	cmpwi r24, 5
/* 801D9D28  3B DE 00 04 */	addi r30, r30, 4
/* 801D9D2C  3B BD 00 08 */	addi r29, r29, 8
/* 801D9D30  41 80 FF 44 */	blt lbl_801D9C74
/* 801D9D34  39 61 00 30 */	addi r11, r1, 0x30
/* 801D9D38  48 18 84 DD */	bl _restgpr_24
/* 801D9D3C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801D9D40  7C 08 03 A6 */	mtlr r0
/* 801D9D44  38 21 00 30 */	addi r1, r1, 0x30
/* 801D9D48  4E 80 00 20 */	blr 
