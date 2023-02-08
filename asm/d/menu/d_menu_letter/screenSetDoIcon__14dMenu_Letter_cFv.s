lbl_801E09A8:
/* 801E09A8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801E09AC  7C 08 02 A6 */	mflr r0
/* 801E09B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 801E09B4  39 61 00 30 */	addi r11, r1, 0x30
/* 801E09B8  48 18 18 11 */	bl _savegpr_24
/* 801E09BC  7C 7F 1B 78 */	mr r31, r3
/* 801E09C0  38 60 01 18 */	li r3, 0x118
/* 801E09C4  48 0E E2 89 */	bl __nw__FUl
/* 801E09C8  7C 60 1B 79 */	or. r0, r3, r3
/* 801E09CC  41 82 00 0C */	beq lbl_801E09D8
/* 801E09D0  48 11 7A C9 */	bl __ct__9J2DScreenFv
/* 801E09D4  7C 60 1B 78 */	mr r0, r3
lbl_801E09D8:
/* 801E09D8  90 1F 00 30 */	stw r0, 0x30(r31)
/* 801E09DC  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 801E09E0  3C 80 80 39 */	lis r4, d_menu_d_menu_letter__stringBase0@ha /* 0x80396DC0@ha */
/* 801E09E4  38 84 6D C0 */	addi r4, r4, d_menu_d_menu_letter__stringBase0@l /* 0x80396DC0@l */
/* 801E09E8  38 84 00 C2 */	addi r4, r4, 0xc2
/* 801E09EC  3C A0 00 02 */	lis r5, 2
/* 801E09F0  80 DF 00 08 */	lwz r6, 8(r31)
/* 801E09F4  48 11 7C 55 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 801E09F8  38 60 00 00 */	li r3, 0
/* 801E09FC  7C 65 1B 78 */	mr r5, r3
/* 801E0A00  7C 64 1B 78 */	mr r4, r3
/* 801E0A04  38 00 00 02 */	li r0, 2
/* 801E0A08  7C 09 03 A6 */	mtctr r0
lbl_801E0A0C:
/* 801E0A0C  7C DF 1A 14 */	add r6, r31, r3
/* 801E0A10  90 A6 02 FC */	stw r5, 0x2fc(r6)
/* 801E0A14  90 86 03 04 */	stw r4, 0x304(r6)
/* 801E0A18  38 63 00 04 */	addi r3, r3, 4
/* 801E0A1C  42 00 FF F0 */	bdnz lbl_801E0A0C
/* 801E0A20  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 801E0A24  48 07 46 C5 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 801E0A28  3B 00 00 00 */	li r24, 0
/* 801E0A2C  3B C0 00 00 */	li r30, 0
/* 801E0A30  3B A0 00 00 */	li r29, 0
/* 801E0A34  3C 60 80 39 */	lis r3, text_a_tag@ha /* 0x80396D70@ha */
/* 801E0A38  3B 43 6D 70 */	addi r26, r3, text_a_tag@l /* 0x80396D70@l */
/* 801E0A3C  3C 60 80 39 */	lis r3, text_b_tag@ha /* 0x80396D98@ha */
/* 801E0A40  3B 63 6D 98 */	addi r27, r3, text_b_tag@l /* 0x80396D98@l */
/* 801E0A44  3C 60 80 39 */	lis r3, d_menu_d_menu_letter__stringBase0@ha /* 0x80396DC0@ha */
/* 801E0A48  3B 83 6D C0 */	addi r28, r3, d_menu_d_menu_letter__stringBase0@l /* 0x80396DC0@l */
lbl_801E0A4C:
/* 801E0A4C  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 801E0A50  7C 9A EA 14 */	add r4, r26, r29
/* 801E0A54  80 A4 00 00 */	lwz r5, 0(r4)
/* 801E0A58  80 C4 00 04 */	lwz r6, 4(r4)
/* 801E0A5C  81 83 00 00 */	lwz r12, 0(r3)
/* 801E0A60  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E0A64  7D 89 03 A6 */	mtctr r12
/* 801E0A68  4E 80 04 21 */	bctrl 
/* 801E0A6C  7F 3F F2 14 */	add r25, r31, r30
/* 801E0A70  90 79 02 8C */	stw r3, 0x28c(r25)
/* 801E0A74  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 801E0A78  7C 9B EA 14 */	add r4, r27, r29
/* 801E0A7C  80 A4 00 00 */	lwz r5, 0(r4)
/* 801E0A80  80 C4 00 04 */	lwz r6, 4(r4)
/* 801E0A84  81 83 00 00 */	lwz r12, 0(r3)
/* 801E0A88  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801E0A8C  7D 89 03 A6 */	mtctr r12
/* 801E0A90  4E 80 04 21 */	bctrl 
/* 801E0A94  90 79 02 A0 */	stw r3, 0x2a0(r25)
/* 801E0A98  4B E3 3F 59 */	bl mDoExt_getMesgFont__Fv
/* 801E0A9C  7C 64 1B 78 */	mr r4, r3
/* 801E0AA0  80 79 02 8C */	lwz r3, 0x28c(r25)
/* 801E0AA4  81 83 00 00 */	lwz r12, 0(r3)
/* 801E0AA8  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801E0AAC  7D 89 03 A6 */	mtctr r12
/* 801E0AB0  4E 80 04 21 */	bctrl 
/* 801E0AB4  4B E3 3F 3D */	bl mDoExt_getMesgFont__Fv
/* 801E0AB8  7C 64 1B 78 */	mr r4, r3
/* 801E0ABC  80 79 02 A0 */	lwz r3, 0x2a0(r25)
/* 801E0AC0  81 83 00 00 */	lwz r12, 0(r3)
/* 801E0AC4  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801E0AC8  7D 89 03 A6 */	mtctr r12
/* 801E0ACC  4E 80 04 21 */	bctrl 
/* 801E0AD0  80 79 02 8C */	lwz r3, 0x28c(r25)
/* 801E0AD4  38 80 00 20 */	li r4, 0x20
/* 801E0AD8  38 BC 00 3B */	addi r5, r28, 0x3b
/* 801E0ADC  4C C6 31 82 */	crclr 6
/* 801E0AE0  48 11 FC 6D */	bl setString__10J2DTextBoxFsPCce
/* 801E0AE4  80 79 02 A0 */	lwz r3, 0x2a0(r25)
/* 801E0AE8  38 80 00 20 */	li r4, 0x20
/* 801E0AEC  38 BC 00 3B */	addi r5, r28, 0x3b
/* 801E0AF0  4C C6 31 82 */	crclr 6
/* 801E0AF4  48 11 FC 59 */	bl setString__10J2DTextBoxFsPCce
/* 801E0AF8  3B 18 00 01 */	addi r24, r24, 1
/* 801E0AFC  2C 18 00 05 */	cmpwi r24, 5
/* 801E0B00  3B DE 00 04 */	addi r30, r30, 4
/* 801E0B04  3B BD 00 08 */	addi r29, r29, 8
/* 801E0B08  41 80 FF 44 */	blt lbl_801E0A4C
/* 801E0B0C  39 61 00 30 */	addi r11, r1, 0x30
/* 801E0B10  48 18 17 05 */	bl _restgpr_24
/* 801E0B14  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801E0B18  7C 08 03 A6 */	mtlr r0
/* 801E0B1C  38 21 00 30 */	addi r1, r1, 0x30
/* 801E0B20  4E 80 00 20 */	blr 
