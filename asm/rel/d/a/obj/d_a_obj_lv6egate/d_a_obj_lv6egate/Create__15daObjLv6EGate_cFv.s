lbl_80C82180:
/* 80C82180  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C82184  7C 08 02 A6 */	mflr r0
/* 80C82188  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C8218C  39 61 00 30 */	addi r11, r1, 0x30
/* 80C82190  4B 6E 00 3C */	b _savegpr_25
/* 80C82194  7C 7F 1B 78 */	mr r31, r3
/* 80C82198  38 1F 05 D8 */	addi r0, r31, 0x5d8
/* 80C8219C  90 03 05 04 */	stw r0, 0x504(r3)
/* 80C821A0  3C 80 80 C8 */	lis r4, l_cull_box@ha
/* 80C821A4  C4 24 2B 70 */	lfsu f1, l_cull_box@l(r4)
/* 80C821A8  C0 44 00 04 */	lfs f2, 4(r4)
/* 80C821AC  C0 64 00 08 */	lfs f3, 8(r4)
/* 80C821B0  C0 84 00 0C */	lfs f4, 0xc(r4)
/* 80C821B4  C0 A4 00 10 */	lfs f5, 0x10(r4)
/* 80C821B8  C0 C4 00 14 */	lfs f6, 0x14(r4)
/* 80C821BC  4B 39 83 8C */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80C821C0  38 7F 06 08 */	addi r3, r31, 0x608
/* 80C821C4  38 80 00 FF */	li r4, 0xff
/* 80C821C8  38 A0 00 00 */	li r5, 0
/* 80C821CC  7F E6 FB 78 */	mr r6, r31
/* 80C821D0  4B 40 16 90 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80C821D4  3B 20 00 00 */	li r25, 0
/* 80C821D8  3B C0 00 00 */	li r30, 0
/* 80C821DC  3C 60 80 C8 */	lis r3, l_at_cyl_src@ha
/* 80C821E0  3B 63 2B B4 */	addi r27, r3, l_at_cyl_src@l
/* 80C821E4  3B 9F 06 08 */	addi r28, r31, 0x608
/* 80C821E8  3B A0 00 05 */	li r29, 5
lbl_80C821EC:
/* 80C821EC  7F 5F F2 14 */	add r26, r31, r30
/* 80C821F0  38 7A 06 44 */	addi r3, r26, 0x644
/* 80C821F4  7F 64 DB 78 */	mr r4, r27
/* 80C821F8  4B 40 26 BC */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80C821FC  93 9A 06 88 */	stw r28, 0x688(r26)
/* 80C82200  9B BA 06 B9 */	stb r29, 0x6b9(r26)
/* 80C82204  3B 39 00 01 */	addi r25, r25, 1
/* 80C82208  2C 19 00 08 */	cmpwi r25, 8
/* 80C8220C  3B DE 01 3C */	addi r30, r30, 0x13c
/* 80C82210  41 80 FF DC */	blt lbl_80C821EC
/* 80C82214  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C82218  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C8221C  2C 04 00 FF */	cmpwi r4, 0xff
/* 80C82220  40 82 00 10 */	bne lbl_80C82230
/* 80C82224  7F E3 FB 78 */	mr r3, r31
/* 80C82228  48 00 01 09 */	bl onDisp__15daObjLv6EGate_cFv
/* 80C8222C  48 00 00 70 */	b lbl_80C8229C
lbl_80C82230:
/* 80C82230  54 00 C7 FF */	rlwinm. r0, r0, 0x18, 0x1f, 0x1f
/* 80C82234  41 82 00 38 */	beq lbl_80C8226C
/* 80C82238  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C8223C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C82240  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C82244  7C 05 07 74 */	extsb r5, r0
/* 80C82248  4B 3B 31 18 */	b isSwitch__10dSv_info_cCFii
/* 80C8224C  2C 03 00 00 */	cmpwi r3, 0
/* 80C82250  41 82 00 10 */	beq lbl_80C82260
/* 80C82254  7F E3 FB 78 */	mr r3, r31
/* 80C82258  48 00 00 D9 */	bl onDisp__15daObjLv6EGate_cFv
/* 80C8225C  48 00 00 40 */	b lbl_80C8229C
lbl_80C82260:
/* 80C82260  7F E3 FB 78 */	mr r3, r31
/* 80C82264  48 00 00 79 */	bl offDisp__15daObjLv6EGate_cFv
/* 80C82268  48 00 00 34 */	b lbl_80C8229C
lbl_80C8226C:
/* 80C8226C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C82270  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C82274  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C82278  7C 05 07 74 */	extsb r5, r0
/* 80C8227C  4B 3B 30 E4 */	b isSwitch__10dSv_info_cCFii
/* 80C82280  2C 03 00 00 */	cmpwi r3, 0
/* 80C82284  41 82 00 10 */	beq lbl_80C82294
/* 80C82288  7F E3 FB 78 */	mr r3, r31
/* 80C8228C  48 00 00 51 */	bl offDisp__15daObjLv6EGate_cFv
/* 80C82290  48 00 00 0C */	b lbl_80C8229C
lbl_80C82294:
/* 80C82294  7F E3 FB 78 */	mr r3, r31
/* 80C82298  48 00 00 99 */	bl onDisp__15daObjLv6EGate_cFv
lbl_80C8229C:
/* 80C8229C  38 80 00 00 */	li r4, 0
/* 80C822A0  98 9F 10 25 */	stb r4, 0x1025(r31)
/* 80C822A4  38 60 00 00 */	li r3, 0
/* 80C822A8  38 00 00 04 */	li r0, 4
/* 80C822AC  7C 09 03 A6 */	mtctr r0
lbl_80C822B0:
/* 80C822B0  38 03 10 28 */	addi r0, r3, 0x1028
/* 80C822B4  7C 9F 01 2E */	stwx r4, r31, r0
/* 80C822B8  38 63 00 04 */	addi r3, r3, 4
/* 80C822BC  42 00 FF F4 */	bdnz lbl_80C822B0
/* 80C822C0  38 60 00 01 */	li r3, 1
/* 80C822C4  39 61 00 30 */	addi r11, r1, 0x30
/* 80C822C8  4B 6D FF 50 */	b _restgpr_25
/* 80C822CC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C822D0  7C 08 03 A6 */	mtlr r0
/* 80C822D4  38 21 00 30 */	addi r1, r1, 0x30
/* 80C822D8  4E 80 00 20 */	blr 
