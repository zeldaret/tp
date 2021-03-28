lbl_801DA754:
/* 801DA754  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 801DA758  7C 08 02 A6 */	mflr r0
/* 801DA75C  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 801DA760  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 801DA764  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, 0 /* qr0 */
/* 801DA768  DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 801DA76C  F3 C1 00 D8 */	psq_st f30, 216(r1), 0, 0 /* qr0 */
/* 801DA770  DB A1 00 C0 */	stfd f29, 0xc0(r1)
/* 801DA774  F3 A1 00 C8 */	psq_st f29, 200(r1), 0, 0 /* qr0 */
/* 801DA778  DB 81 00 B0 */	stfd f28, 0xb0(r1)
/* 801DA77C  F3 81 00 B8 */	psq_st f28, 184(r1), 0, 0 /* qr0 */
/* 801DA780  DB 61 00 A0 */	stfd f27, 0xa0(r1)
/* 801DA784  F3 61 00 A8 */	psq_st f27, 168(r1), 0, 0 /* qr0 */
/* 801DA788  DB 41 00 90 */	stfd f26, 0x90(r1)
/* 801DA78C  F3 41 00 98 */	psq_st f26, 152(r1), 0, 0 /* qr0 */
/* 801DA790  DB 21 00 80 */	stfd f25, 0x80(r1)
/* 801DA794  F3 21 00 88 */	psq_st f25, 136(r1), 0, 0 /* qr0 */
/* 801DA798  39 61 00 80 */	addi r11, r1, 0x80
/* 801DA79C  48 18 7A 21 */	bl _savegpr_21
/* 801DA7A0  7C 7F 1B 78 */	mr r31, r3
/* 801DA7A4  7C B5 2B 78 */	mr r21, r5
/* 801DA7A8  7C DE 33 78 */	mr r30, r6
/* 801DA7AC  7C FD 3B 78 */	mr r29, r7
/* 801DA7B0  3C 60 80 3C */	lis r3, __vt__19dMenu_ItemExplain_c@ha
/* 801DA7B4  38 03 D9 F4 */	addi r0, r3, __vt__19dMenu_ItemExplain_c@l
/* 801DA7B8  90 1F 00 00 */	stw r0, 0(r31)
/* 801DA7BC  90 9F 00 04 */	stw r4, 4(r31)
/* 801DA7C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801DA7C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801DA7C8  80 03 5C 98 */	lwz r0, 0x5c98(r3)
/* 801DA7CC  90 1F 00 08 */	stw r0, 8(r31)
/* 801DA7D0  93 DF 00 B8 */	stw r30, 0xb8(r31)
/* 801DA7D4  80 7F 00 04 */	lwz r3, 4(r31)
/* 801DA7D8  48 0F 3F AD */	bl getTotalFreeSize__7JKRHeapFv
/* 801DA7DC  38 00 00 00 */	li r0, 0
/* 801DA7E0  90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 801DA7E4  90 1F 00 CC */	stw r0, 0xcc(r31)
/* 801DA7E8  90 1F 00 D0 */	stw r0, 0xd0(r31)
/* 801DA7EC  90 1F 00 C4 */	stw r0, 0xc4(r31)
/* 801DA7F0  98 1F 00 E1 */	stb r0, 0xe1(r31)
/* 801DA7F4  98 1F 00 E2 */	stb r0, 0xe2(r31)
/* 801DA7F8  98 1F 00 E0 */	stb r0, 0xe0(r31)
/* 801DA7FC  98 1F 00 E7 */	stb r0, 0xe7(r31)
/* 801DA800  98 1F 00 E3 */	stb r0, 0xe3(r31)
/* 801DA804  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801DA808  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801DA80C  80 03 5C C0 */	lwz r0, 0x5cc0(r3)
/* 801DA810  7C 15 00 40 */	cmplw r21, r0
/* 801DA814  40 82 00 10 */	bne lbl_801DA824
/* 801DA818  38 00 00 02 */	li r0, 2
/* 801DA81C  98 1F 00 E5 */	stb r0, 0xe5(r31)
/* 801DA820  48 00 00 0C */	b lbl_801DA82C
lbl_801DA824:
/* 801DA824  38 00 00 01 */	li r0, 1
/* 801DA828  98 1F 00 E5 */	stb r0, 0xe5(r31)
lbl_801DA82C:
/* 801DA82C  38 80 00 00 */	li r4, 0
/* 801DA830  98 9F 00 E6 */	stb r4, 0xe6(r31)
/* 801DA834  98 9F 00 DF */	stb r4, 0xdf(r31)
/* 801DA838  98 9F 00 DE */	stb r4, 0xde(r31)
/* 801DA83C  98 9F 00 E4 */	stb r4, 0xe4(r31)
/* 801DA840  C0 02 A8 88 */	lfs f0, lit_4062(r2)
/* 801DA844  D0 1F 00 D4 */	stfs f0, 0xd4(r31)
/* 801DA848  D0 1F 00 D8 */	stfs f0, 0xd8(r31)
/* 801DA84C  90 9F 00 74 */	stw r4, 0x74(r31)
/* 801DA850  90 9F 00 14 */	stw r4, 0x14(r31)
/* 801DA854  7C 83 23 78 */	mr r3, r4
/* 801DA858  38 00 00 04 */	li r0, 4
/* 801DA85C  7C 09 03 A6 */	mtctr r0
lbl_801DA860:
/* 801DA860  38 03 00 28 */	addi r0, r3, 0x28
/* 801DA864  7C 9F 01 2E */	stwx r4, r31, r0
/* 801DA868  38 63 00 04 */	addi r3, r3, 4
/* 801DA86C  42 00 FF F4 */	bdnz lbl_801DA860
/* 801DA870  38 60 00 00 */	li r3, 0
/* 801DA874  38 80 00 00 */	li r4, 0
/* 801DA878  38 00 00 02 */	li r0, 2
/* 801DA87C  7C 09 03 A6 */	mtctr r0
lbl_801DA880:
/* 801DA880  7C BF 1A 14 */	add r5, r31, r3
/* 801DA884  90 85 00 44 */	stw r4, 0x44(r5)
/* 801DA888  90 85 00 A0 */	stw r4, 0xa0(r5)
/* 801DA88C  38 63 00 04 */	addi r3, r3, 4
/* 801DA890  42 00 FF F0 */	bdnz lbl_801DA880
/* 801DA894  38 80 00 00 */	li r4, 0
/* 801DA898  90 9F 00 50 */	stw r4, 0x50(r31)
/* 801DA89C  90 9F 00 5C */	stw r4, 0x5c(r31)
/* 801DA8A0  38 60 00 00 */	li r3, 0
/* 801DA8A4  38 00 00 03 */	li r0, 3
/* 801DA8A8  7C 09 03 A6 */	mtctr r0
lbl_801DA8AC:
/* 801DA8AC  38 03 00 60 */	addi r0, r3, 0x60
/* 801DA8B0  7C 9F 01 2E */	stwx r4, r31, r0
/* 801DA8B4  38 63 00 04 */	addi r3, r3, 4
/* 801DA8B8  42 00 FF F4 */	bdnz lbl_801DA8AC
/* 801DA8BC  38 00 00 00 */	li r0, 0
/* 801DA8C0  B0 1F 00 DC */	sth r0, 0xdc(r31)
/* 801DA8C4  38 60 00 2C */	li r3, 0x2c
/* 801DA8C8  48 0F 43 85 */	bl __nw__FUl
/* 801DA8CC  7C 60 1B 79 */	or. r0, r3, r3
/* 801DA8D0  41 82 00 10 */	beq lbl_801DA8E0
/* 801DA8D4  38 80 00 01 */	li r4, 1
/* 801DA8D8  48 06 F3 C9 */	bl __ct__12dMsgString_cFUc
/* 801DA8DC  7C 60 1B 78 */	mr r0, r3
lbl_801DA8E0:
/* 801DA8E0  90 1F 00 0C */	stw r0, 0xc(r31)
/* 801DA8E4  38 60 00 10 */	li r3, 0x10
/* 801DA8E8  48 0F 43 65 */	bl __nw__FUl
/* 801DA8EC  7C 60 1B 79 */	or. r0, r3, r3
/* 801DA8F0  41 82 00 0C */	beq lbl_801DA8FC
/* 801DA8F4  4B FD 40 45 */	bl __ct__15dKantera_icon_cFv
/* 801DA8F8  7C 60 1B 78 */	mr r0, r3
lbl_801DA8FC:
/* 801DA8FC  90 1F 00 6C */	stw r0, 0x6c(r31)
/* 801DA900  38 60 01 18 */	li r3, 0x118
/* 801DA904  48 0F 43 49 */	bl __nw__FUl
/* 801DA908  7C 60 1B 79 */	or. r0, r3, r3
/* 801DA90C  41 82 00 0C */	beq lbl_801DA918
/* 801DA910  48 11 DB 89 */	bl __ct__9J2DScreenFv
/* 801DA914  7C 60 1B 78 */	mr r0, r3
lbl_801DA918:
/* 801DA918  90 1F 00 70 */	stw r0, 0x70(r31)
/* 801DA91C  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 801DA920  3C 80 80 39 */	lis r4, d_menu_d_menu_item_explain__stringBase0@ha
/* 801DA924  38 84 69 90 */	addi r4, r4, d_menu_d_menu_item_explain__stringBase0@l
/* 801DA928  3C A0 00 02 */	lis r5, 2
/* 801DA92C  80 DF 00 08 */	lwz r6, 8(r31)
/* 801DA930  48 11 DD 19 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 801DA934  38 60 00 6C */	li r3, 0x6c
/* 801DA938  48 0F 43 15 */	bl __nw__FUl
/* 801DA93C  7C 60 1B 79 */	or. r0, r3, r3
/* 801DA940  41 82 00 24 */	beq lbl_801DA964
/* 801DA944  80 9F 00 70 */	lwz r4, 0x70(r31)
/* 801DA948  3C A0 5F 61 */	lis r5, 0x5F61 /* 0x5F616C6C@ha */
/* 801DA94C  38 C5 6C 6C */	addi r6, r5, 0x6C6C /* 0x5F616C6C@l */
/* 801DA950  38 A0 00 6E */	li r5, 0x6e
/* 801DA954  38 E0 00 02 */	li r7, 2
/* 801DA958  39 00 00 00 */	li r8, 0
/* 801DA95C  48 07 90 29 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801DA960  7C 60 1B 78 */	mr r0, r3
lbl_801DA964:
/* 801DA964  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 801DA968  38 00 00 00 */	li r0, 0
/* 801DA96C  90 1F 00 40 */	stw r0, 0x40(r31)
/* 801DA970  38 60 00 6C */	li r3, 0x6c
/* 801DA974  48 0F 42 D9 */	bl __nw__FUl
/* 801DA978  7C 60 1B 79 */	or. r0, r3, r3
/* 801DA97C  41 82 00 28 */	beq lbl_801DA9A4
/* 801DA980  80 9F 00 70 */	lwz r4, 0x70(r31)
/* 801DA984  3C A0 65 6C */	lis r5, 0x656C /* 0x656C5F6E@ha */
/* 801DA988  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x656C5F6E@l */
/* 801DA98C  3C A0 00 6C */	lis r5, 0x006C /* 0x006C6162@ha */
/* 801DA990  38 A5 61 62 */	addi r5, r5, 0x6162 /* 0x006C6162@l */
/* 801DA994  38 E0 00 00 */	li r7, 0
/* 801DA998  39 00 00 00 */	li r8, 0
/* 801DA99C  48 07 8F E9 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801DA9A0  7C 60 1B 78 */	mr r0, r3
lbl_801DA9A4:
/* 801DA9A4  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 801DA9A8  C0 02 A8 88 */	lfs f0, lit_4062(r2)
/* 801DA9AC  D0 1F 00 C0 */	stfs f0, 0xc0(r31)
/* 801DA9B0  38 00 00 00 */	li r0, 0
/* 801DA9B4  90 1F 00 78 */	stw r0, 0x78(r31)
/* 801DA9B8  C0 02 A8 8C */	lfs f0, lit_4063(r2)
/* 801DA9BC  D0 1F 00 BC */	stfs f0, 0xbc(r31)
/* 801DA9C0  38 60 00 6C */	li r3, 0x6c
/* 801DA9C4  48 0F 42 89 */	bl __nw__FUl
/* 801DA9C8  7C 60 1B 79 */	or. r0, r3, r3
/* 801DA9CC  41 82 00 28 */	beq lbl_801DA9F4
/* 801DA9D0  80 9F 00 70 */	lwz r4, 0x70(r31)
/* 801DA9D4  3C A0 65 78 */	lis r5, 0x6578 /* 0x65787431@ha */
/* 801DA9D8  38 C5 74 31 */	addi r6, r5, 0x7431 /* 0x65787431@l */
/* 801DA9DC  3C A0 00 69 */	lis r5, 0x0069 /* 0x00695F74@ha */
/* 801DA9E0  38 A5 5F 74 */	addi r5, r5, 0x5F74 /* 0x00695F74@l */
/* 801DA9E4  38 E0 00 00 */	li r7, 0
/* 801DA9E8  39 00 00 00 */	li r8, 0
/* 801DA9EC  48 07 8F 99 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801DA9F0  7C 60 1B 78 */	mr r0, r3
lbl_801DA9F4:
/* 801DA9F4  90 1F 00 10 */	stw r0, 0x10(r31)
/* 801DA9F8  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 801DA9FC  3C 80 65 78 */	lis r4, 0x6578 /* 0x65787434@ha */
/* 801DAA00  38 C4 74 34 */	addi r6, r4, 0x7434 /* 0x65787434@l */
/* 801DAA04  3C 80 00 69 */	lis r4, 0x0069 /* 0x00695F74@ha */
/* 801DAA08  38 A4 5F 74 */	addi r5, r4, 0x5F74 /* 0x00695F74@l */
/* 801DAA0C  81 83 00 00 */	lwz r12, 0(r3)
/* 801DAA10  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DAA14  7D 89 03 A6 */	mtctr r12
/* 801DAA18  4E 80 04 21 */	bctrl 
/* 801DAA1C  38 00 00 00 */	li r0, 0
/* 801DAA20  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801DAA24  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 801DAA28  82 C3 00 04 */	lwz r22, 4(r3)
/* 801DAA2C  4B E3 9F C5 */	bl mDoExt_getMesgFont__Fv
/* 801DAA30  7C 64 1B 78 */	mr r4, r3
/* 801DAA34  7E C3 B3 78 */	mr r3, r22
/* 801DAA38  81 96 00 00 */	lwz r12, 0(r22)
/* 801DAA3C  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801DAA40  7D 89 03 A6 */	mtctr r12
/* 801DAA44  4E 80 04 21 */	bctrl 
/* 801DAA48  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 801DAA4C  80 63 00 04 */	lwz r3, 4(r3)
/* 801DAA50  38 80 02 00 */	li r4, 0x200
/* 801DAA54  3C A0 80 39 */	lis r5, d_menu_d_menu_item_explain__stringBase0@ha
/* 801DAA58  38 A5 69 90 */	addi r5, r5, d_menu_d_menu_item_explain__stringBase0@l
/* 801DAA5C  38 A5 00 1B */	addi r5, r5, 0x1b
/* 801DAA60  4C C6 31 82 */	crclr 6
/* 801DAA64  48 12 5C E9 */	bl setString__10J2DTextBoxFsPCce
/* 801DAA68  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 801DAA6C  48 07 AB 5D */	bl show__13CPaneMgrAlphaFv
/* 801DAA70  3B 80 00 00 */	li r28, 0
/* 801DAA74  3B 20 00 00 */	li r25, 0
/* 801DAA78  3B 40 00 00 */	li r26, 0
/* 801DAA7C  3C 60 80 39 */	lis r3, name_tag@ha
/* 801DAA80  3A E3 69 50 */	addi r23, r3, name_tag@l
/* 801DAA84  3C 60 80 39 */	lis r3, d_menu_d_menu_item_explain__stringBase0@ha
/* 801DAA88  3A C3 69 90 */	addi r22, r3, d_menu_d_menu_item_explain__stringBase0@l
lbl_801DAA8C:
/* 801DAA8C  38 60 00 6C */	li r3, 0x6c
/* 801DAA90  48 0F 41 BD */	bl __nw__FUl
/* 801DAA94  7C 60 1B 79 */	or. r0, r3, r3
/* 801DAA98  41 82 00 2C */	beq lbl_801DAAC4
/* 801DAA9C  80 9F 00 70 */	lwz r4, 0x70(r31)
/* 801DAAA0  3C A0 80 39 */	lis r5, fame_tag@ha
/* 801DAAA4  38 05 69 70 */	addi r0, r5, fame_tag@l
/* 801DAAA8  7C C0 D2 14 */	add r6, r0, r26
/* 801DAAAC  80 A6 00 00 */	lwz r5, 0(r6)
/* 801DAAB0  80 C6 00 04 */	lwz r6, 4(r6)
/* 801DAAB4  38 E0 00 00 */	li r7, 0
/* 801DAAB8  39 00 00 00 */	li r8, 0
/* 801DAABC  48 07 8E C9 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801DAAC0  7C 60 1B 78 */	mr r0, r3
lbl_801DAAC4:
/* 801DAAC4  3B 79 00 18 */	addi r27, r25, 0x18
/* 801DAAC8  7C 1F D9 2E */	stwx r0, r31, r27
/* 801DAACC  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 801DAAD0  7C 97 D2 14 */	add r4, r23, r26
/* 801DAAD4  80 A4 00 00 */	lwz r5, 0(r4)
/* 801DAAD8  80 C4 00 04 */	lwz r6, 4(r4)
/* 801DAADC  81 83 00 00 */	lwz r12, 0(r3)
/* 801DAAE0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DAAE4  7D 89 03 A6 */	mtctr r12
/* 801DAAE8  4E 80 04 21 */	bctrl 
/* 801DAAEC  38 00 00 00 */	li r0, 0
/* 801DAAF0  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801DAAF4  7C 7F D8 2E */	lwzx r3, r31, r27
/* 801DAAF8  83 03 00 04 */	lwz r24, 4(r3)
/* 801DAAFC  4B E3 9E F5 */	bl mDoExt_getMesgFont__Fv
/* 801DAB00  7C 64 1B 78 */	mr r4, r3
/* 801DAB04  7F 03 C3 78 */	mr r3, r24
/* 801DAB08  81 98 00 00 */	lwz r12, 0(r24)
/* 801DAB0C  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801DAB10  7D 89 03 A6 */	mtctr r12
/* 801DAB14  4E 80 04 21 */	bctrl 
/* 801DAB18  7C 7F D8 2E */	lwzx r3, r31, r27
/* 801DAB1C  80 63 00 04 */	lwz r3, 4(r3)
/* 801DAB20  38 80 00 20 */	li r4, 0x20
/* 801DAB24  38 B6 00 1B */	addi r5, r22, 0x1b
/* 801DAB28  4C C6 31 82 */	crclr 6
/* 801DAB2C  48 12 5C 21 */	bl setString__10J2DTextBoxFsPCce
/* 801DAB30  3B 9C 00 01 */	addi r28, r28, 1
/* 801DAB34  2C 1C 00 04 */	cmpwi r28, 4
/* 801DAB38  3B 39 00 04 */	addi r25, r25, 4
/* 801DAB3C  3B 5A 00 08 */	addi r26, r26, 8
/* 801DAB40  41 80 FF 4C */	blt lbl_801DAA8C
/* 801DAB44  38 60 00 6C */	li r3, 0x6c
/* 801DAB48  48 0F 41 05 */	bl __nw__FUl
/* 801DAB4C  7C 60 1B 79 */	or. r0, r3, r3
/* 801DAB50  41 82 00 28 */	beq lbl_801DAB78
/* 801DAB54  80 9F 00 70 */	lwz r4, 0x70(r31)
/* 801DAB58  3C A0 6F 6E */	lis r5, 0x6F6E /* 0x6F6E5F70@ha */
/* 801DAB5C  38 C5 5F 70 */	addi r6, r5, 0x5F70 /* 0x6F6E5F70@l */
/* 801DAB60  3C A0 69 5F */	lis r5, 0x695F /* 0x695F6963@ha */
/* 801DAB64  38 A5 69 63 */	addi r5, r5, 0x6963 /* 0x695F6963@l */
/* 801DAB68  38 E0 00 00 */	li r7, 0
/* 801DAB6C  39 00 00 00 */	li r8, 0
/* 801DAB70  48 07 8E 15 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801DAB74  7C 60 1B 78 */	mr r0, r3
lbl_801DAB78:
/* 801DAB78  90 1F 00 38 */	stw r0, 0x38(r31)
/* 801DAB7C  3A A0 00 00 */	li r21, 0
/* 801DAB80  3B 20 00 00 */	li r25, 0
lbl_801DAB84:
/* 801DAB84  80 7F 00 04 */	lwz r3, 4(r31)
/* 801DAB88  38 80 0C 00 */	li r4, 0xc00
/* 801DAB8C  38 A0 00 20 */	li r5, 0x20
/* 801DAB90  48 0F 39 45 */	bl alloc__7JKRHeapFUli
/* 801DAB94  38 19 00 88 */	addi r0, r25, 0x88
/* 801DAB98  7C 7F 01 2E */	stwx r3, r31, r0
/* 801DAB9C  3A B5 00 01 */	addi r21, r21, 1
/* 801DABA0  2C 15 00 04 */	cmpwi r21, 4
/* 801DABA4  3B 39 00 04 */	addi r25, r25, 4
/* 801DABA8  41 80 FF DC */	blt lbl_801DAB84
/* 801DABAC  38 60 01 50 */	li r3, 0x150
/* 801DABB0  48 0F 40 9D */	bl __nw__FUl
/* 801DABB4  7C 76 1B 79 */	or. r22, r3, r3
/* 801DABB8  41 82 00 68 */	beq lbl_801DAC20
/* 801DABBC  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 801DABC0  80 63 00 04 */	lwz r3, 4(r3)
/* 801DABC4  38 80 00 00 */	li r4, 0
/* 801DABC8  81 83 00 00 */	lwz r12, 0(r3)
/* 801DABCC  81 8C 01 20 */	lwz r12, 0x120(r12)
/* 801DABD0  7D 89 03 A6 */	mtctr r12
/* 801DABD4  4E 80 04 21 */	bctrl 
/* 801DABD8  81 03 00 20 */	lwz r8, 0x20(r3)
/* 801DABDC  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 801DABE0  C0 23 00 38 */	lfs f1, 0x38(r3)
/* 801DABE4  C0 43 00 34 */	lfs f2, 0x34(r3)
/* 801DABE8  C0 02 A8 88 */	lfs f0, lit_4062(r2)
/* 801DABEC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 801DABF0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 801DABF4  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 801DABF8  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 801DABFC  7E C3 B3 78 */	mr r3, r22
/* 801DAC00  3C 80 6F 6E */	lis r4, 0x6F6E /* 0x6F6E5F31@ha */
/* 801DAC04  38 C4 5F 31 */	addi r6, r4, 0x5F31 /* 0x6F6E5F31@l */
/* 801DAC08  3C 80 69 5F */	lis r4, 0x695F /* 0x695F6963@ha */
/* 801DAC0C  38 A4 69 63 */	addi r5, r4, 0x6963 /* 0x695F6963@l */
/* 801DAC10  38 E1 00 38 */	addi r7, r1, 0x38
/* 801DAC14  39 20 00 00 */	li r9, 0
/* 801DAC18  48 12 1B E9 */	bl func_802FC800
/* 801DAC1C  7C 76 1B 78 */	mr r22, r3
lbl_801DAC20:
/* 801DAC20  92 DF 00 7C */	stw r22, 0x7c(r31)
/* 801DAC24  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 801DAC28  38 80 00 04 */	li r4, 4
/* 801DAC2C  48 11 CA CD */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 801DAC30  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 801DAC34  80 63 00 04 */	lwz r3, 4(r3)
/* 801DAC38  80 9F 00 7C */	lwz r4, 0x7c(r31)
/* 801DAC3C  48 11 BA 31 */	bl appendChild__7J2DPaneFP7J2DPane
/* 801DAC40  38 60 01 50 */	li r3, 0x150
/* 801DAC44  48 0F 40 09 */	bl __nw__FUl
/* 801DAC48  7C 76 1B 79 */	or. r22, r3, r3
/* 801DAC4C  41 82 00 68 */	beq lbl_801DACB4
/* 801DAC50  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 801DAC54  80 63 00 04 */	lwz r3, 4(r3)
/* 801DAC58  38 80 00 00 */	li r4, 0
/* 801DAC5C  81 83 00 00 */	lwz r12, 0(r3)
/* 801DAC60  81 8C 01 20 */	lwz r12, 0x120(r12)
/* 801DAC64  7D 89 03 A6 */	mtctr r12
/* 801DAC68  4E 80 04 21 */	bctrl 
/* 801DAC6C  81 03 00 20 */	lwz r8, 0x20(r3)
/* 801DAC70  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 801DAC74  C0 23 00 38 */	lfs f1, 0x38(r3)
/* 801DAC78  C0 43 00 34 */	lfs f2, 0x34(r3)
/* 801DAC7C  C0 02 A8 88 */	lfs f0, lit_4062(r2)
/* 801DAC80  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 801DAC84  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 801DAC88  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 801DAC8C  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 801DAC90  7E C3 B3 78 */	mr r3, r22
/* 801DAC94  3C 80 6F 6E */	lis r4, 0x6F6E /* 0x6F6E5F32@ha */
/* 801DAC98  38 C4 5F 32 */	addi r6, r4, 0x5F32 /* 0x6F6E5F32@l */
/* 801DAC9C  3C 80 69 5F */	lis r4, 0x695F /* 0x695F6963@ha */
/* 801DACA0  38 A4 69 63 */	addi r5, r4, 0x6963 /* 0x695F6963@l */
/* 801DACA4  38 E1 00 28 */	addi r7, r1, 0x28
/* 801DACA8  39 20 00 00 */	li r9, 0
/* 801DACAC  48 12 1B 55 */	bl func_802FC800
/* 801DACB0  7C 76 1B 78 */	mr r22, r3
lbl_801DACB4:
/* 801DACB4  92 DF 00 80 */	stw r22, 0x80(r31)
/* 801DACB8  80 7F 00 80 */	lwz r3, 0x80(r31)
/* 801DACBC  38 80 00 04 */	li r4, 4
/* 801DACC0  48 11 CA 39 */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 801DACC4  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 801DACC8  80 63 00 04 */	lwz r3, 4(r3)
/* 801DACCC  80 9F 00 80 */	lwz r4, 0x80(r31)
/* 801DACD0  48 11 B9 9D */	bl appendChild__7J2DPaneFP7J2DPane
/* 801DACD4  38 60 01 50 */	li r3, 0x150
/* 801DACD8  48 0F 3F 75 */	bl __nw__FUl
/* 801DACDC  7C 76 1B 79 */	or. r22, r3, r3
/* 801DACE0  41 82 00 68 */	beq lbl_801DAD48
/* 801DACE4  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 801DACE8  80 63 00 04 */	lwz r3, 4(r3)
/* 801DACEC  38 80 00 00 */	li r4, 0
/* 801DACF0  81 83 00 00 */	lwz r12, 0(r3)
/* 801DACF4  81 8C 01 20 */	lwz r12, 0x120(r12)
/* 801DACF8  7D 89 03 A6 */	mtctr r12
/* 801DACFC  4E 80 04 21 */	bctrl 
/* 801DAD00  81 03 00 20 */	lwz r8, 0x20(r3)
/* 801DAD04  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 801DAD08  C0 23 00 38 */	lfs f1, 0x38(r3)
/* 801DAD0C  C0 43 00 34 */	lfs f2, 0x34(r3)
/* 801DAD10  C0 02 A8 88 */	lfs f0, lit_4062(r2)
/* 801DAD14  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 801DAD18  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801DAD1C  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 801DAD20  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 801DAD24  7E C3 B3 78 */	mr r3, r22
/* 801DAD28  3C 80 6F 6E */	lis r4, 0x6F6E /* 0x6F6E5F33@ha */
/* 801DAD2C  38 C4 5F 33 */	addi r6, r4, 0x5F33 /* 0x6F6E5F33@l */
/* 801DAD30  3C 80 69 5F */	lis r4, 0x695F /* 0x695F6963@ha */
/* 801DAD34  38 A4 69 63 */	addi r5, r4, 0x6963 /* 0x695F6963@l */
/* 801DAD38  38 E1 00 18 */	addi r7, r1, 0x18
/* 801DAD3C  39 20 00 00 */	li r9, 0
/* 801DAD40  48 12 1A C1 */	bl func_802FC800
/* 801DAD44  7C 76 1B 78 */	mr r22, r3
lbl_801DAD48:
/* 801DAD48  92 DF 00 84 */	stw r22, 0x84(r31)
/* 801DAD4C  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 801DAD50  38 80 00 04 */	li r4, 4
/* 801DAD54  48 11 C9 A5 */	bl setBasePosition__7J2DPaneF15J2DBasePosition
/* 801DAD58  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 801DAD5C  80 63 00 04 */	lwz r3, 4(r3)
/* 801DAD60  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 801DAD64  48 11 B9 09 */	bl appendChild__7J2DPaneFP7J2DPane
/* 801DAD68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801DAD6C  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 801DAD70  82 DC 5D 30 */	lwz r22, 0x5d30(r28)
/* 801DAD74  38 60 00 00 */	li r3, 0
/* 801DAD78  48 04 35 51 */	bl dMeter2Info_getNumberTextureName__Fi
/* 801DAD7C  7C 65 1B 78 */	mr r5, r3
/* 801DAD80  7E C3 B3 78 */	mr r3, r22
/* 801DAD84  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801DAD88  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801DAD8C  81 96 00 00 */	lwz r12, 0(r22)
/* 801DAD90  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801DAD94  7D 89 03 A6 */	mtctr r12
/* 801DAD98  4E 80 04 21 */	bctrl 
/* 801DAD9C  7C 7B 1B 78 */	mr r27, r3
/* 801DADA0  3B 40 00 00 */	li r26, 0
/* 801DADA4  3B 20 00 00 */	li r25, 0
/* 801DADA8  3E C0 6F 5F */	lis r22, 0x6f5f
/* 801DADAC  3E E0 00 69 */	lis r23, 0x69
/* 801DADB0  C3 82 A8 90 */	lfs f28, lit_4064(r2)
/* 801DADB4  CB A2 A8 A0 */	lfd f29, lit_4068(r2)
/* 801DADB8  3F 00 43 30 */	lis r24, 0x4330
/* 801DADBC  C3 C2 A8 94 */	lfs f30, lit_4065(r2)
/* 801DADC0  C3 E2 A8 98 */	lfs f31, lit_4066(r2)
lbl_801DADC4:
/* 801DADC4  38 60 01 50 */	li r3, 0x150
/* 801DADC8  48 0F 3E 85 */	bl __nw__FUl
/* 801DADCC  7C 60 1B 79 */	or. r0, r3, r3
/* 801DADD0  41 82 00 10 */	beq lbl_801DADE0
/* 801DADD4  7F 64 DB 78 */	mr r4, r27
/* 801DADD8  48 12 19 31 */	bl __ct__10J2DPictureFPC7ResTIMG
/* 801DADDC  7C 60 1B 78 */	mr r0, r3
lbl_801DADE0:
/* 801DADE0  3A B9 00 A8 */	addi r21, r25, 0xa8
/* 801DADE4  7C 1F A9 2E */	stwx r0, r31, r21
/* 801DADE8  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 801DADEC  38 D6 6E 31 */	addi r6, r22, 0x6e31
/* 801DADF0  38 B7 6E 66 */	addi r5, r23, 0x6e66
/* 801DADF4  81 83 00 00 */	lwz r12, 0(r3)
/* 801DADF8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DADFC  7D 89 03 A6 */	mtctr r12
/* 801DAE00  4E 80 04 21 */	bctrl 
/* 801DAE04  7C 9F A8 2E */	lwzx r4, r31, r21
/* 801DAE08  48 11 B8 65 */	bl appendChild__7J2DPaneFP7J2DPane
/* 801DAE0C  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 801DAE10  80 63 00 04 */	lwz r3, 4(r3)
/* 801DAE14  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 801DAE18  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 801DAE1C  EF 61 00 28 */	fsubs f27, f1, f0
/* 801DAE20  48 11 C2 E1 */	bl getBounds__7J2DPaneFv
/* 801DAE24  C3 43 00 04 */	lfs f26, 4(r3)
/* 801DAE28  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 801DAE2C  80 63 00 04 */	lwz r3, 4(r3)
/* 801DAE30  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 801DAE34  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 801DAE38  EF 21 00 28 */	fsubs f25, f1, f0
/* 801DAE3C  48 11 C2 C5 */	bl getBounds__7J2DPaneFv
/* 801DAE40  C0 43 00 00 */	lfs f2, 0(r3)
/* 801DAE44  7C 7F A8 2E */	lwzx r3, r31, r21
/* 801DAE48  6F 40 80 00 */	xoris r0, r26, 0x8000
/* 801DAE4C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 801DAE50  93 01 00 48 */	stw r24, 0x48(r1)
/* 801DAE54  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 801DAE58  EC 00 E8 28 */	fsubs f0, f0, f29
/* 801DAE5C  EC 3C 00 32 */	fmuls f1, f28, f0
/* 801DAE60  EC 1E 06 72 */	fmuls f0, f30, f25
/* 801DAE64  EC 02 00 2A */	fadds f0, f2, f0
/* 801DAE68  EC 21 00 2A */	fadds f1, f1, f0
/* 801DAE6C  EC 1A D8 2A */	fadds f0, f26, f27
/* 801DAE70  EC 40 F8 28 */	fsubs f2, f0, f31
/* 801DAE74  81 83 00 00 */	lwz r12, 0(r3)
/* 801DAE78  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801DAE7C  7D 89 03 A6 */	mtctr r12
/* 801DAE80  4E 80 04 21 */	bctrl 
/* 801DAE84  7C 7F A8 2E */	lwzx r3, r31, r21
/* 801DAE88  C0 22 A8 90 */	lfs f1, lit_4064(r2)
/* 801DAE8C  FC 40 08 90 */	fmr f2, f1
/* 801DAE90  81 83 00 00 */	lwz r12, 0(r3)
/* 801DAE94  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801DAE98  7D 89 03 A6 */	mtctr r12
/* 801DAE9C  4E 80 04 21 */	bctrl 
/* 801DAEA0  3B 5A 00 01 */	addi r26, r26, 1
/* 801DAEA4  2C 1A 00 03 */	cmpwi r26, 3
/* 801DAEA8  3B 39 00 04 */	addi r25, r25, 4
/* 801DAEAC  41 80 FF 18 */	blt lbl_801DADC4
/* 801DAEB0  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 801DAEB4  28 00 00 01 */	cmplwi r0, 1
/* 801DAEB8  40 82 00 C0 */	bne lbl_801DAF78
/* 801DAEBC  80 7C 5D 30 */	lwz r3, 0x5d30(r28)
/* 801DAEC0  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801DAEC4  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801DAEC8  3C A0 80 39 */	lis r5, d_menu_d_menu_item_explain__stringBase0@ha
/* 801DAECC  38 A5 69 90 */	addi r5, r5, d_menu_d_menu_item_explain__stringBase0@l
/* 801DAED0  38 A5 00 1C */	addi r5, r5, 0x1c
/* 801DAED4  81 83 00 00 */	lwz r12, 0(r3)
/* 801DAED8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801DAEDC  7D 89 03 A6 */	mtctr r12
/* 801DAEE0  4E 80 04 21 */	bctrl 
/* 801DAEE4  7C 75 1B 78 */	mr r21, r3
/* 801DAEE8  38 60 01 50 */	li r3, 0x150
/* 801DAEEC  48 0F 3D 61 */	bl __nw__FUl
/* 801DAEF0  7C 60 1B 79 */	or. r0, r3, r3
/* 801DAEF4  41 82 00 10 */	beq lbl_801DAF04
/* 801DAEF8  7E A4 AB 78 */	mr r4, r21
/* 801DAEFC  48 12 18 0D */	bl __ct__10J2DPictureFPC7ResTIMG
/* 801DAF00  7C 60 1B 78 */	mr r0, r3
lbl_801DAF04:
/* 801DAF04  90 1F 00 B4 */	stw r0, 0xb4(r31)
/* 801DAF08  38 60 00 00 */	li r3, 0
/* 801DAF0C  98 61 00 08 */	stb r3, 8(r1)
/* 801DAF10  98 61 00 09 */	stb r3, 9(r1)
/* 801DAF14  98 61 00 0A */	stb r3, 0xa(r1)
/* 801DAF18  38 00 00 FF */	li r0, 0xff
/* 801DAF1C  98 01 00 0B */	stb r0, 0xb(r1)
/* 801DAF20  80 01 00 08 */	lwz r0, 8(r1)
/* 801DAF24  90 01 00 0C */	stw r0, 0xc(r1)
/* 801DAF28  98 61 00 10 */	stb r3, 0x10(r1)
/* 801DAF2C  98 61 00 11 */	stb r3, 0x11(r1)
/* 801DAF30  98 61 00 12 */	stb r3, 0x12(r1)
/* 801DAF34  98 61 00 13 */	stb r3, 0x13(r1)
/* 801DAF38  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801DAF3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801DAF40  80 7F 00 B4 */	lwz r3, 0xb4(r31)
/* 801DAF44  38 81 00 14 */	addi r4, r1, 0x14
/* 801DAF48  38 A1 00 0C */	addi r5, r1, 0xc
/* 801DAF4C  81 83 00 00 */	lwz r12, 0(r3)
/* 801DAF50  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 801DAF54  7D 89 03 A6 */	mtctr r12
/* 801DAF58  4E 80 04 21 */	bctrl 
/* 801DAF5C  80 7F 00 B4 */	lwz r3, 0xb4(r31)
/* 801DAF60  38 80 00 00 */	li r4, 0
/* 801DAF64  81 83 00 00 */	lwz r12, 0(r3)
/* 801DAF68  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801DAF6C  7D 89 03 A6 */	mtctr r12
/* 801DAF70  4E 80 04 21 */	bctrl 
/* 801DAF74  48 00 00 0C */	b lbl_801DAF80
lbl_801DAF78:
/* 801DAF78  38 00 00 00 */	li r0, 0
/* 801DAF7C  90 1F 00 B4 */	stw r0, 0xb4(r31)
lbl_801DAF80:
/* 801DAF80  38 00 00 00 */	li r0, 0
/* 801DAF84  90 1F 00 98 */	stw r0, 0x98(r31)
/* 801DAF88  28 1E 00 00 */	cmplwi r30, 0
/* 801DAF8C  41 82 00 0C */	beq lbl_801DAF98
/* 801DAF90  90 1F 00 9C */	stw r0, 0x9c(r31)
/* 801DAF94  48 00 00 08 */	b lbl_801DAF9C
lbl_801DAF98:
/* 801DAF98  90 1F 00 9C */	stw r0, 0x9c(r31)
lbl_801DAF9C:
/* 801DAF9C  7F E3 FB 78 */	mr r3, r31
/* 801DAFA0  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, 0 /* qr0 */
/* 801DAFA4  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 801DAFA8  E3 C1 00 D8 */	psq_l f30, 216(r1), 0, 0 /* qr0 */
/* 801DAFAC  CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 801DAFB0  E3 A1 00 C8 */	psq_l f29, 200(r1), 0, 0 /* qr0 */
/* 801DAFB4  CB A1 00 C0 */	lfd f29, 0xc0(r1)
/* 801DAFB8  E3 81 00 B8 */	psq_l f28, 184(r1), 0, 0 /* qr0 */
/* 801DAFBC  CB 81 00 B0 */	lfd f28, 0xb0(r1)
/* 801DAFC0  E3 61 00 A8 */	psq_l f27, 168(r1), 0, 0 /* qr0 */
/* 801DAFC4  CB 61 00 A0 */	lfd f27, 0xa0(r1)
/* 801DAFC8  E3 41 00 98 */	psq_l f26, 152(r1), 0, 0 /* qr0 */
/* 801DAFCC  CB 41 00 90 */	lfd f26, 0x90(r1)
/* 801DAFD0  E3 21 00 88 */	psq_l f25, 136(r1), 0, 0 /* qr0 */
/* 801DAFD4  CB 21 00 80 */	lfd f25, 0x80(r1)
/* 801DAFD8  39 61 00 80 */	addi r11, r1, 0x80
/* 801DAFDC  48 18 72 2D */	bl _restgpr_21
/* 801DAFE0  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 801DAFE4  7C 08 03 A6 */	mtlr r0
/* 801DAFE8  38 21 00 F0 */	addi r1, r1, 0xf0
/* 801DAFEC  4E 80 00 20 */	blr 
