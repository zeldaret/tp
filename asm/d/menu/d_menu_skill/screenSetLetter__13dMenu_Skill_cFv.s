lbl_801F8A18:
/* 801F8A18  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801F8A1C  7C 08 02 A6 */	mflr r0
/* 801F8A20  90 01 00 44 */	stw r0, 0x44(r1)
/* 801F8A24  39 61 00 40 */	addi r11, r1, 0x40
/* 801F8A28  48 16 97 A1 */	bl _savegpr_24
/* 801F8A2C  7C 7F 1B 78 */	mr r31, r3
/* 801F8A30  38 60 01 18 */	li r3, 0x118
/* 801F8A34  48 0D 62 19 */	bl __nw__FUl
/* 801F8A38  7C 60 1B 79 */	or. r0, r3, r3
/* 801F8A3C  41 82 00 0C */	beq lbl_801F8A48
/* 801F8A40  48 0F FA 59 */	bl __ct__9J2DScreenFv
/* 801F8A44  7C 60 1B 78 */	mr r0, r3
lbl_801F8A48:
/* 801F8A48  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 801F8A4C  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801F8A50  3C 80 80 39 */	lis r4, d_menu_d_menu_skill__stringBase0@ha
/* 801F8A54  38 84 7D B8 */	addi r4, r4, d_menu_d_menu_skill__stringBase0@l
/* 801F8A58  38 84 00 30 */	addi r4, r4, 0x30
/* 801F8A5C  3C A0 00 02 */	lis r5, 2
/* 801F8A60  80 DF 00 08 */	lwz r6, 8(r31)
/* 801F8A64  48 0F FB E5 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 801F8A68  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801F8A6C  48 05 C6 7D */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 801F8A70  38 60 00 6C */	li r3, 0x6c
/* 801F8A74  48 0D 61 D9 */	bl __nw__FUl
/* 801F8A78  7C 60 1B 79 */	or. r0, r3, r3
/* 801F8A7C  41 82 00 28 */	beq lbl_801F8AA4
/* 801F8A80  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 801F8A84  3C A0 34 6C */	lis r5, 0x346C /* 0x346C696E@ha */
/* 801F8A88  38 C5 69 6E */	addi r6, r5, 0x696E /* 0x346C696E@l */
/* 801F8A8C  3C A0 6D 67 */	lis r5, 0x6D67 /* 0x6D675F65@ha */
/* 801F8A90  38 A5 5F 65 */	addi r5, r5, 0x5F65 /* 0x6D675F65@l */
/* 801F8A94  38 E0 00 00 */	li r7, 0
/* 801F8A98  39 00 00 00 */	li r8, 0
/* 801F8A9C  48 05 AE E9 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801F8AA0  7C 60 1B 78 */	mr r0, r3
lbl_801F8AA4:
/* 801F8AA4  90 1F 01 80 */	stw r0, 0x180(r31)
/* 801F8AA8  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801F8AAC  3C 80 6C 69 */	lis r4, 0x6C69 /* 0x6C696E65@ha */
/* 801F8AB0  38 C4 6E 65 */	addi r6, r4, 0x6E65 /* 0x6C696E65@l */
/* 801F8AB4  3C 80 00 6E */	lis r4, 0x006E /* 0x006E5F33@ha */
/* 801F8AB8  38 A4 5F 33 */	addi r5, r4, 0x5F33 /* 0x006E5F33@l */
/* 801F8ABC  81 83 00 00 */	lwz r12, 0(r3)
/* 801F8AC0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801F8AC4  7D 89 03 A6 */	mtctr r12
/* 801F8AC8  4E 80 04 21 */	bctrl 
/* 801F8ACC  38 00 00 00 */	li r0, 0
/* 801F8AD0  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801F8AD4  38 60 00 6C */	li r3, 0x6c
/* 801F8AD8  48 0D 61 75 */	bl __nw__FUl
/* 801F8ADC  7C 60 1B 79 */	or. r0, r3, r3
/* 801F8AE0  41 82 00 28 */	beq lbl_801F8B08
/* 801F8AE4  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 801F8AE8  3C A0 65 6C */	lis r5, 0x656C /* 0x656C5F6E@ha */
/* 801F8AEC  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x656C5F6E@l */
/* 801F8AF0  3C A0 00 6C */	lis r5, 0x006C /* 0x006C6162@ha */
/* 801F8AF4  38 A5 61 62 */	addi r5, r5, 0x6162 /* 0x006C6162@l */
/* 801F8AF8  38 E0 00 00 */	li r7, 0
/* 801F8AFC  39 00 00 00 */	li r8, 0
/* 801F8B00  48 05 AE 85 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801F8B04  7C 60 1B 78 */	mr r0, r3
lbl_801F8B08:
/* 801F8B08  90 1F 01 84 */	stw r0, 0x184(r31)
/* 801F8B0C  80 7F 01 80 */	lwz r3, 0x180(r31)
/* 801F8B10  83 43 00 04 */	lwz r26, 4(r3)
/* 801F8B14  4B E1 BE DD */	bl mDoExt_getMesgFont__Fv
/* 801F8B18  7C 64 1B 78 */	mr r4, r3
/* 801F8B1C  7F 43 D3 78 */	mr r3, r26
/* 801F8B20  81 9A 00 00 */	lwz r12, 0(r26)
/* 801F8B24  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801F8B28  7D 89 03 A6 */	mtctr r12
/* 801F8B2C  4E 80 04 21 */	bctrl 
/* 801F8B30  80 7F 01 80 */	lwz r3, 0x180(r31)
/* 801F8B34  80 63 00 04 */	lwz r3, 4(r3)
/* 801F8B38  38 80 02 00 */	li r4, 0x200
/* 801F8B3C  3C A0 80 39 */	lis r5, d_menu_d_menu_skill__stringBase0@ha
/* 801F8B40  38 A5 7D B8 */	addi r5, r5, d_menu_d_menu_skill__stringBase0@l
/* 801F8B44  38 A5 00 2F */	addi r5, r5, 0x2f
/* 801F8B48  4C C6 31 82 */	crclr 6
/* 801F8B4C  48 10 7C 01 */	bl setString__10J2DTextBoxFsPCce
/* 801F8B50  3B 00 00 00 */	li r24, 0
/* 801F8B54  3B C0 00 00 */	li r30, 0
/* 801F8B58  3B A0 00 00 */	li r29, 0
/* 801F8B5C  3C 60 80 39 */	lis r3, fame_tag@ha
/* 801F8B60  3B 43 7D 10 */	addi r26, r3, fame_tag@l
/* 801F8B64  3C 60 80 39 */	lis r3, name_tag@ha
/* 801F8B68  3B 63 7C F0 */	addi r27, r3, name_tag@l
/* 801F8B6C  3C 60 80 39 */	lis r3, d_menu_d_menu_skill__stringBase0@ha
/* 801F8B70  3B 83 7D B8 */	addi r28, r3, d_menu_d_menu_skill__stringBase0@l
lbl_801F8B74:
/* 801F8B74  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801F8B78  7C 9A EA 14 */	add r4, r26, r29
/* 801F8B7C  80 A4 00 00 */	lwz r5, 0(r4)
/* 801F8B80  80 C4 00 04 */	lwz r6, 4(r4)
/* 801F8B84  81 83 00 00 */	lwz r12, 0(r3)
/* 801F8B88  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801F8B8C  7D 89 03 A6 */	mtctr r12
/* 801F8B90  4E 80 04 21 */	bctrl 
/* 801F8B94  3B 3E 01 48 */	addi r25, r30, 0x148
/* 801F8B98  7C 7F C9 2E */	stwx r3, r31, r25
/* 801F8B9C  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801F8BA0  7C 9B EA 14 */	add r4, r27, r29
/* 801F8BA4  80 A4 00 00 */	lwz r5, 0(r4)
/* 801F8BA8  80 C4 00 04 */	lwz r6, 4(r4)
/* 801F8BAC  81 83 00 00 */	lwz r12, 0(r3)
/* 801F8BB0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801F8BB4  7D 89 03 A6 */	mtctr r12
/* 801F8BB8  4E 80 04 21 */	bctrl 
/* 801F8BBC  38 00 00 00 */	li r0, 0
/* 801F8BC0  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801F8BC4  4B E1 BE 2D */	bl mDoExt_getMesgFont__Fv
/* 801F8BC8  7C 64 1B 78 */	mr r4, r3
/* 801F8BCC  7C 7F C8 2E */	lwzx r3, r31, r25
/* 801F8BD0  81 83 00 00 */	lwz r12, 0(r3)
/* 801F8BD4  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801F8BD8  7D 89 03 A6 */	mtctr r12
/* 801F8BDC  4E 80 04 21 */	bctrl 
/* 801F8BE0  7C 7F C8 2E */	lwzx r3, r31, r25
/* 801F8BE4  38 80 00 40 */	li r4, 0x40
/* 801F8BE8  38 BC 00 2F */	addi r5, r28, 0x2f
/* 801F8BEC  4C C6 31 82 */	crclr 6
/* 801F8BF0  48 10 7B 5D */	bl setString__10J2DTextBoxFsPCce
/* 801F8BF4  3B 18 00 01 */	addi r24, r24, 1
/* 801F8BF8  2C 18 00 04 */	cmpwi r24, 4
/* 801F8BFC  3B DE 00 04 */	addi r30, r30, 4
/* 801F8C00  3B BD 00 08 */	addi r29, r29, 8
/* 801F8C04  41 80 FF 70 */	blt lbl_801F8B74
/* 801F8C08  38 60 00 6C */	li r3, 0x6c
/* 801F8C0C  48 0D 60 41 */	bl __nw__FUl
/* 801F8C10  7C 60 1B 79 */	or. r0, r3, r3
/* 801F8C14  41 82 00 24 */	beq lbl_801F8C38
/* 801F8C18  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 801F8C1C  3C A0 5F 61 */	lis r5, 0x5F61 /* 0x5F616C6C@ha */
/* 801F8C20  38 C5 6C 6C */	addi r6, r5, 0x6C6C /* 0x5F616C6C@l */
/* 801F8C24  38 A0 00 6E */	li r5, 0x6e
/* 801F8C28  38 E0 00 02 */	li r7, 2
/* 801F8C2C  39 00 00 00 */	li r8, 0
/* 801F8C30  48 05 AD 55 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801F8C34  7C 60 1B 78 */	mr r0, r3
lbl_801F8C38:
/* 801F8C38  90 1F 01 7C */	stw r0, 0x17c(r31)
/* 801F8C3C  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 801F8C40  C0 22 AA 88 */	lfs f1, lit_3808(r2)
/* 801F8C44  48 05 CB 8D */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801F8C48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801F8C4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801F8C50  80 63 5D 30 */	lwz r3, 0x5d30(r3)
/* 801F8C54  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801F8C58  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801F8C5C  3C A0 80 39 */	lis r5, d_menu_d_menu_skill__stringBase0@ha
/* 801F8C60  38 A5 7D B8 */	addi r5, r5, d_menu_d_menu_skill__stringBase0@l
/* 801F8C64  38 A5 00 44 */	addi r5, r5, 0x44
/* 801F8C68  81 83 00 00 */	lwz r12, 0(r3)
/* 801F8C6C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801F8C70  7D 89 03 A6 */	mtctr r12
/* 801F8C74  4E 80 04 21 */	bctrl 
/* 801F8C78  7C 78 1B 78 */	mr r24, r3
/* 801F8C7C  38 60 01 50 */	li r3, 0x150
/* 801F8C80  48 0D 5F CD */	bl __nw__FUl
/* 801F8C84  7C 60 1B 79 */	or. r0, r3, r3
/* 801F8C88  41 82 00 10 */	beq lbl_801F8C98
/* 801F8C8C  7F 04 C3 78 */	mr r4, r24
/* 801F8C90  48 10 3A 79 */	bl __ct__10J2DPictureFPC7ResTIMG
/* 801F8C94  7C 60 1B 78 */	mr r0, r3
lbl_801F8C98:
/* 801F8C98  90 1F 01 58 */	stw r0, 0x158(r31)
/* 801F8C9C  38 60 00 00 */	li r3, 0
/* 801F8CA0  98 61 00 08 */	stb r3, 8(r1)
/* 801F8CA4  98 61 00 09 */	stb r3, 9(r1)
/* 801F8CA8  98 61 00 0A */	stb r3, 0xa(r1)
/* 801F8CAC  38 00 00 FF */	li r0, 0xff
/* 801F8CB0  98 01 00 0B */	stb r0, 0xb(r1)
/* 801F8CB4  80 01 00 08 */	lwz r0, 8(r1)
/* 801F8CB8  90 01 00 0C */	stw r0, 0xc(r1)
/* 801F8CBC  98 61 00 10 */	stb r3, 0x10(r1)
/* 801F8CC0  98 61 00 11 */	stb r3, 0x11(r1)
/* 801F8CC4  98 61 00 12 */	stb r3, 0x12(r1)
/* 801F8CC8  98 61 00 13 */	stb r3, 0x13(r1)
/* 801F8CCC  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801F8CD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F8CD4  80 7F 01 58 */	lwz r3, 0x158(r31)
/* 801F8CD8  38 81 00 14 */	addi r4, r1, 0x14
/* 801F8CDC  38 A1 00 0C */	addi r5, r1, 0xc
/* 801F8CE0  81 83 00 00 */	lwz r12, 0(r3)
/* 801F8CE4  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 801F8CE8  7D 89 03 A6 */	mtctr r12
/* 801F8CEC  4E 80 04 21 */	bctrl 
/* 801F8CF0  80 7F 01 58 */	lwz r3, 0x158(r31)
/* 801F8CF4  38 80 00 00 */	li r4, 0
/* 801F8CF8  81 83 00 00 */	lwz r12, 0(r3)
/* 801F8CFC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801F8D00  7D 89 03 A6 */	mtctr r12
/* 801F8D04  4E 80 04 21 */	bctrl 
/* 801F8D08  39 61 00 40 */	addi r11, r1, 0x40
/* 801F8D0C  48 16 95 09 */	bl _restgpr_24
/* 801F8D10  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801F8D14  7C 08 03 A6 */	mtlr r0
/* 801F8D18  38 21 00 40 */	addi r1, r1, 0x40
/* 801F8D1C  4E 80 00 20 */	blr 
