lbl_801B8A0C:
/* 801B8A0C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801B8A10  7C 08 02 A6 */	mflr r0
/* 801B8A14  90 01 00 34 */	stw r0, 0x34(r1)
/* 801B8A18  39 61 00 30 */	addi r11, r1, 0x30
/* 801B8A1C  48 1A 97 A5 */	bl _savegpr_22
/* 801B8A20  7C 7E 1B 78 */	mr r30, r3
/* 801B8A24  3C 60 80 39 */	lis r3, cont_at_4145@ha
/* 801B8A28  3B E3 55 18 */	addi r31, r3, cont_at_4145@l
/* 801B8A2C  38 60 01 18 */	li r3, 0x118
/* 801B8A30  48 11 62 1D */	bl __nw__FUl
/* 801B8A34  7C 60 1B 79 */	or. r0, r3, r3
/* 801B8A38  41 82 00 0C */	beq lbl_801B8A44
/* 801B8A3C  48 13 FA 5D */	bl __ct__9J2DScreenFv
/* 801B8A40  7C 60 1B 78 */	mr r0, r3
lbl_801B8A44:
/* 801B8A44  90 1E 0C B4 */	stw r0, 0xcb4(r30)
/* 801B8A48  80 7E 0C B4 */	lwz r3, 0xcb4(r30)
/* 801B8A4C  3C 80 80 39 */	lis r4, d_menu_d_menu_dmap__stringBase0@ha
/* 801B8A50  38 84 57 60 */	addi r4, r4, d_menu_d_menu_dmap__stringBase0@l
/* 801B8A54  38 84 00 4D */	addi r4, r4, 0x4d
/* 801B8A58  3C A0 00 02 */	lis r5, 2
/* 801B8A5C  3C C0 80 40 */	lis r6, g_dComIfG_gameInfo@ha
/* 801B8A60  38 C6 61 C0 */	addi r6, r6, g_dComIfG_gameInfo@l
/* 801B8A64  80 C6 5C C0 */	lwz r6, 0x5cc0(r6)
/* 801B8A68  48 13 FB E1 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 801B8A6C  80 7E 0C B4 */	lwz r3, 0xcb4(r30)
/* 801B8A70  48 09 C6 79 */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 801B8A74  38 00 00 00 */	li r0, 0
/* 801B8A78  90 1E 0C B8 */	stw r0, 0xcb8(r30)
/* 801B8A7C  90 1E 0C DC */	stw r0, 0xcdc(r30)
/* 801B8A80  80 7E 0C B4 */	lwz r3, 0xcb4(r30)
/* 801B8A84  3C 80 73 70 */	lis r4, 0x7370 /* 0x73706F74@ha */
/* 801B8A88  38 C4 6F 74 */	addi r6, r4, 0x6F74 /* 0x73706F74@l */
/* 801B8A8C  38 A0 77 5F */	li r5, 0x775f
/* 801B8A90  81 83 00 00 */	lwz r12, 0(r3)
/* 801B8A94  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B8A98  7D 89 03 A6 */	mtctr r12
/* 801B8A9C  4E 80 04 21 */	bctrl 
/* 801B8AA0  38 00 00 00 */	li r0, 0
/* 801B8AA4  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B8AA8  80 7E 0C B4 */	lwz r3, 0xcb4(r30)
/* 801B8AAC  3C 80 6F 74 */	lis r4, 0x6F74 /* 0x6F743030@ha */
/* 801B8AB0  38 C4 30 30 */	addi r6, r4, 0x3030 /* 0x6F743030@l */
/* 801B8AB4  38 A0 73 70 */	li r5, 0x7370
/* 801B8AB8  81 83 00 00 */	lwz r12, 0(r3)
/* 801B8ABC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B8AC0  7D 89 03 A6 */	mtctr r12
/* 801B8AC4  4E 80 04 21 */	bctrl 
/* 801B8AC8  38 00 00 00 */	li r0, 0
/* 801B8ACC  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B8AD0  80 7E 0C B4 */	lwz r3, 0xcb4(r30)
/* 801B8AD4  3C 80 6F 74 */	lis r4, 0x6F74 /* 0x6F743031@ha */
/* 801B8AD8  38 C4 30 31 */	addi r6, r4, 0x3031 /* 0x6F743031@l */
/* 801B8ADC  38 A0 73 70 */	li r5, 0x7370
/* 801B8AE0  81 83 00 00 */	lwz r12, 0(r3)
/* 801B8AE4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B8AE8  7D 89 03 A6 */	mtctr r12
/* 801B8AEC  4E 80 04 21 */	bctrl 
/* 801B8AF0  38 00 00 00 */	li r0, 0
/* 801B8AF4  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B8AF8  38 60 00 2C */	li r3, 0x2c
/* 801B8AFC  48 11 61 51 */	bl __nw__FUl
/* 801B8B00  7C 60 1B 79 */	or. r0, r3, r3
/* 801B8B04  41 82 00 24 */	beq lbl_801B8B28
/* 801B8B08  80 9E 0C B4 */	lwz r4, 0xcb4(r30)
/* 801B8B0C  3C A0 52 4F */	lis r5, 0x524F /* 0x524F4F54@ha */
/* 801B8B10  38 C5 4F 54 */	addi r6, r5, 0x4F54 /* 0x524F4F54@l */
/* 801B8B14  38 A0 00 00 */	li r5, 0
/* 801B8B18  38 E0 00 02 */	li r7, 2
/* 801B8B1C  39 00 00 00 */	li r8, 0
/* 801B8B20  48 09 D1 49 */	bl __ct__17CPaneMgrAlphaMorfFP9J2DScreenUxUcP10JKRExpHeap
/* 801B8B24  7C 60 1B 78 */	mr r0, r3
lbl_801B8B28:
/* 801B8B28  90 1E 0C D8 */	stw r0, 0xcd8(r30)
/* 801B8B2C  38 60 00 00 */	li r3, 0
/* 801B8B30  7C 65 1B 78 */	mr r5, r3
/* 801B8B34  7C 64 1B 78 */	mr r4, r3
/* 801B8B38  38 00 00 02 */	li r0, 2
/* 801B8B3C  7C 09 03 A6 */	mtctr r0
lbl_801B8B40:
/* 801B8B40  7C DE 1A 14 */	add r6, r30, r3
/* 801B8B44  90 A6 0D 08 */	stw r5, 0xd08(r6)
/* 801B8B48  90 86 0D 10 */	stw r4, 0xd10(r6)
/* 801B8B4C  38 63 00 04 */	addi r3, r3, 4
/* 801B8B50  42 00 FF F0 */	bdnz lbl_801B8B40
/* 801B8B54  38 60 00 1C */	li r3, 0x1c
/* 801B8B58  48 11 60 F5 */	bl __nw__FUl
/* 801B8B5C  7C 60 1B 79 */	or. r0, r3, r3
/* 801B8B60  41 82 00 24 */	beq lbl_801B8B84
/* 801B8B64  80 9E 0C B4 */	lwz r4, 0xcb4(r30)
/* 801B8B68  3C A0 5F 62 */	lis r5, 0x5F62 /* 0x5F62746E@ha */
/* 801B8B6C  38 C5 74 6E */	addi r6, r5, 0x746E /* 0x5F62746E@l */
/* 801B8B70  38 A0 00 63 */	li r5, 0x63
/* 801B8B74  38 E0 00 02 */	li r7, 2
/* 801B8B78  39 00 00 00 */	li r8, 0
/* 801B8B7C  48 09 C8 81 */	bl __ct__13CPaneMgrAlphaFP9J2DScreenUxUcP10JKRExpHeap
/* 801B8B80  7C 60 1B 78 */	mr r0, r3
lbl_801B8B84:
/* 801B8B84  90 1E 0C E8 */	stw r0, 0xce8(r30)
/* 801B8B88  38 00 00 00 */	li r0, 0
/* 801B8B8C  90 1E 0C EC */	stw r0, 0xcec(r30)
/* 801B8B90  3A C0 00 00 */	li r22, 0
/* 801B8B94  3B A0 00 00 */	li r29, 0
/* 801B8B98  3C 60 80 39 */	lis r3, d_menu_d_menu_dmap__stringBase0@ha
/* 801B8B9C  3B 43 57 60 */	addi r26, r3, d_menu_d_menu_dmap__stringBase0@l
/* 801B8BA0  3B 7F 00 00 */	addi r27, r31, 0
/* 801B8BA4  3B 9F 00 28 */	addi r28, r31, 0x28
lbl_801B8BA8:
/* 801B8BA8  4B E5 BE 49 */	bl mDoExt_getMesgFont__Fv
/* 801B8BAC  7C 79 1B 78 */	mr r25, r3
/* 801B8BB0  80 7E 0C B4 */	lwz r3, 0xcb4(r30)
/* 801B8BB4  3B 1F 00 50 */	addi r24, r31, 0x50
/* 801B8BB8  7F 18 EA 14 */	add r24, r24, r29
/* 801B8BBC  80 B8 00 00 */	lwz r5, 0(r24)
/* 801B8BC0  80 D8 00 04 */	lwz r6, 4(r24)
/* 801B8BC4  81 83 00 00 */	lwz r12, 0(r3)
/* 801B8BC8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B8BCC  7D 89 03 A6 */	mtctr r12
/* 801B8BD0  4E 80 04 21 */	bctrl 
/* 801B8BD4  7F 24 CB 78 */	mr r4, r25
/* 801B8BD8  81 83 00 00 */	lwz r12, 0(r3)
/* 801B8BDC  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801B8BE0  7D 89 03 A6 */	mtctr r12
/* 801B8BE4  4E 80 04 21 */	bctrl 
/* 801B8BE8  4B E5 BE 09 */	bl mDoExt_getMesgFont__Fv
/* 801B8BEC  7C 79 1B 78 */	mr r25, r3
/* 801B8BF0  80 7E 0C B4 */	lwz r3, 0xcb4(r30)
/* 801B8BF4  3A FF 00 78 */	addi r23, r31, 0x78
/* 801B8BF8  7E F7 EA 14 */	add r23, r23, r29
/* 801B8BFC  80 B7 00 00 */	lwz r5, 0(r23)
/* 801B8C00  80 D7 00 04 */	lwz r6, 4(r23)
/* 801B8C04  81 83 00 00 */	lwz r12, 0(r3)
/* 801B8C08  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B8C0C  7D 89 03 A6 */	mtctr r12
/* 801B8C10  4E 80 04 21 */	bctrl 
/* 801B8C14  7F 24 CB 78 */	mr r4, r25
/* 801B8C18  81 83 00 00 */	lwz r12, 0(r3)
/* 801B8C1C  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801B8C20  7D 89 03 A6 */	mtctr r12
/* 801B8C24  4E 80 04 21 */	bctrl 
/* 801B8C28  80 7E 0C B4 */	lwz r3, 0xcb4(r30)
/* 801B8C2C  80 B8 00 00 */	lwz r5, 0(r24)
/* 801B8C30  80 D8 00 04 */	lwz r6, 4(r24)
/* 801B8C34  81 83 00 00 */	lwz r12, 0(r3)
/* 801B8C38  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B8C3C  7D 89 03 A6 */	mtctr r12
/* 801B8C40  4E 80 04 21 */	bctrl 
/* 801B8C44  38 80 00 20 */	li r4, 0x20
/* 801B8C48  38 BA 00 6F */	addi r5, r26, 0x6f
/* 801B8C4C  4C C6 31 82 */	crclr 6
/* 801B8C50  48 14 7A FD */	bl setString__10J2DTextBoxFsPCce
/* 801B8C54  80 7E 0C B4 */	lwz r3, 0xcb4(r30)
/* 801B8C58  80 B7 00 00 */	lwz r5, 0(r23)
/* 801B8C5C  80 D7 00 04 */	lwz r6, 4(r23)
/* 801B8C60  81 83 00 00 */	lwz r12, 0(r3)
/* 801B8C64  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B8C68  7D 89 03 A6 */	mtctr r12
/* 801B8C6C  4E 80 04 21 */	bctrl 
/* 801B8C70  38 80 00 20 */	li r4, 0x20
/* 801B8C74  38 BA 00 6F */	addi r5, r26, 0x6f
/* 801B8C78  4C C6 31 82 */	crclr 6
/* 801B8C7C  48 14 7A D1 */	bl setString__10J2DTextBoxFsPCce
/* 801B8C80  80 7E 0C B4 */	lwz r3, 0xcb4(r30)
/* 801B8C84  7C DB EA 14 */	add r6, r27, r29
/* 801B8C88  80 A6 00 00 */	lwz r5, 0(r6)
/* 801B8C8C  80 C6 00 04 */	lwz r6, 4(r6)
/* 801B8C90  81 83 00 00 */	lwz r12, 0(r3)
/* 801B8C94  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B8C98  7D 89 03 A6 */	mtctr r12
/* 801B8C9C  4E 80 04 21 */	bctrl 
/* 801B8CA0  38 00 00 00 */	li r0, 0
/* 801B8CA4  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B8CA8  80 7E 0C B4 */	lwz r3, 0xcb4(r30)
/* 801B8CAC  7C DC EA 14 */	add r6, r28, r29
/* 801B8CB0  80 A6 00 00 */	lwz r5, 0(r6)
/* 801B8CB4  80 C6 00 04 */	lwz r6, 4(r6)
/* 801B8CB8  81 83 00 00 */	lwz r12, 0(r3)
/* 801B8CBC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B8CC0  7D 89 03 A6 */	mtctr r12
/* 801B8CC4  4E 80 04 21 */	bctrl 
/* 801B8CC8  38 00 00 00 */	li r0, 0
/* 801B8CCC  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B8CD0  3A D6 00 01 */	addi r22, r22, 1
/* 801B8CD4  2C 16 00 05 */	cmpwi r22, 5
/* 801B8CD8  3B BD 00 08 */	addi r29, r29, 8
/* 801B8CDC  41 80 FE CC */	blt lbl_801B8BA8
/* 801B8CE0  38 60 00 6C */	li r3, 0x6c
/* 801B8CE4  48 11 5F 69 */	bl __nw__FUl
/* 801B8CE8  7C 60 1B 79 */	or. r0, r3, r3
/* 801B8CEC  41 82 00 24 */	beq lbl_801B8D10
/* 801B8CF0  80 9E 0C B4 */	lwz r4, 0xcb4(r30)
/* 801B8CF4  3C A0 00 63 */	lis r5, 0x0063 /* 0x00635F6E@ha */
/* 801B8CF8  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x00635F6E@l */
/* 801B8CFC  38 A0 00 00 */	li r5, 0
/* 801B8D00  38 E0 00 02 */	li r7, 2
/* 801B8D04  39 00 00 00 */	li r8, 0
/* 801B8D08  48 09 AC 7D */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801B8D0C  7C 60 1B 78 */	mr r0, r3
lbl_801B8D10:
/* 801B8D10  90 1E 0C F4 */	stw r0, 0xcf4(r30)
/* 801B8D14  38 00 00 00 */	li r0, 0
/* 801B8D18  90 1E 0C F8 */	stw r0, 0xcf8(r30)
/* 801B8D1C  3A E0 00 00 */	li r23, 0
/* 801B8D20  3B A0 00 00 */	li r29, 0
/* 801B8D24  3B 9F 00 A0 */	addi r28, r31, 0xa0
/* 801B8D28  3C 60 80 39 */	lis r3, d_menu_d_menu_dmap__stringBase0@ha
/* 801B8D2C  3B E3 57 60 */	addi r31, r3, d_menu_d_menu_dmap__stringBase0@l
lbl_801B8D30:
/* 801B8D30  80 7E 0C B4 */	lwz r3, 0xcb4(r30)
/* 801B8D34  7C DC EA 14 */	add r6, r28, r29
/* 801B8D38  80 A6 00 00 */	lwz r5, 0(r6)
/* 801B8D3C  80 C6 00 04 */	lwz r6, 4(r6)
/* 801B8D40  81 83 00 00 */	lwz r12, 0(r3)
/* 801B8D44  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B8D48  7D 89 03 A6 */	mtctr r12
/* 801B8D4C  4E 80 04 21 */	bctrl 
/* 801B8D50  7C 76 1B 78 */	mr r22, r3
/* 801B8D54  4B E5 BC 9D */	bl mDoExt_getMesgFont__Fv
/* 801B8D58  7C 64 1B 78 */	mr r4, r3
/* 801B8D5C  7E C3 B3 78 */	mr r3, r22
/* 801B8D60  81 96 00 00 */	lwz r12, 0(r22)
/* 801B8D64  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801B8D68  7D 89 03 A6 */	mtctr r12
/* 801B8D6C  4E 80 04 21 */	bctrl 
/* 801B8D70  7E C3 B3 78 */	mr r3, r22
/* 801B8D74  38 80 00 20 */	li r4, 0x20
/* 801B8D78  38 BF 00 6F */	addi r5, r31, 0x6f
/* 801B8D7C  4C C6 31 82 */	crclr 6
/* 801B8D80  48 14 79 CD */	bl setString__10J2DTextBoxFsPCce
/* 801B8D84  3A F7 00 01 */	addi r23, r23, 1
/* 801B8D88  2C 17 00 02 */	cmpwi r23, 2
/* 801B8D8C  3B BD 00 08 */	addi r29, r29, 8
/* 801B8D90  41 80 FF A0 */	blt lbl_801B8D30
/* 801B8D94  80 7E 0C F4 */	lwz r3, 0xcf4(r30)
/* 801B8D98  28 03 00 00 */	cmplwi r3, 0
/* 801B8D9C  41 82 00 08 */	beq lbl_801B8DA4
/* 801B8DA0  48 09 C8 29 */	bl show__13CPaneMgrAlphaFv
lbl_801B8DA4:
/* 801B8DA4  80 7E 0C F8 */	lwz r3, 0xcf8(r30)
/* 801B8DA8  28 03 00 00 */	cmplwi r3, 0
/* 801B8DAC  41 82 00 10 */	beq lbl_801B8DBC
/* 801B8DB0  C0 22 A6 04 */	lfs f1, lit_4191(r2)
/* 801B8DB4  C0 42 A5 E8 */	lfs f2, lit_3962(r2)
/* 801B8DB8  48 09 B7 F9 */	bl paneTrans__8CPaneMgrFff
lbl_801B8DBC:
/* 801B8DBC  80 7E 0C F4 */	lwz r3, 0xcf4(r30)
/* 801B8DC0  C0 22 A6 08 */	lfs f1, lit_4192(r2)
/* 801B8DC4  C0 42 A5 E8 */	lfs f2, lit_3962(r2)
/* 801B8DC8  48 09 B7 E9 */	bl paneTrans__8CPaneMgrFff
/* 801B8DCC  39 61 00 30 */	addi r11, r1, 0x30
/* 801B8DD0  48 1A 94 3D */	bl _restgpr_22
/* 801B8DD4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801B8DD8  7C 08 03 A6 */	mtlr r0
/* 801B8DDC  38 21 00 30 */	addi r1, r1, 0x30
/* 801B8DE0  4E 80 00 20 */	blr 
