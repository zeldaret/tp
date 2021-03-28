lbl_801DC3C8:
/* 801DC3C8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801DC3CC  7C 08 02 A6 */	mflr r0
/* 801DC3D0  90 01 00 34 */	stw r0, 0x34(r1)
/* 801DC3D4  39 61 00 30 */	addi r11, r1, 0x30
/* 801DC3D8  48 18 5D E9 */	bl _savegpr_22
/* 801DC3DC  7C 77 1B 78 */	mr r23, r3
/* 801DC3E0  7C 98 23 78 */	mr r24, r4
/* 801DC3E4  7C B9 2B 78 */	mr r25, r5
/* 801DC3E8  7C DA 33 78 */	mr r26, r6
/* 801DC3EC  7C FB 3B 78 */	mr r27, r7
/* 801DC3F0  7D 1C 43 78 */	mr r28, r8
/* 801DC3F4  7F 1E C3 78 */	mr r30, r24
/* 801DC3F8  3B A0 00 00 */	li r29, 0
/* 801DC3FC  3A C0 00 00 */	li r22, 0
/* 801DC400  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801DC404  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801DC408  3B E3 4E 20 */	addi r31, r3, 0x4e20
/* 801DC40C  7F E3 FB 78 */	mr r3, r31
/* 801DC410  81 9F 00 00 */	lwz r12, 0(r31)
/* 801DC414  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 801DC418  7D 89 03 A6 */	mtctr r12
/* 801DC41C  4E 80 04 21 */	bctrl 
/* 801DC420  88 03 00 09 */	lbz r0, 9(r3)
/* 801DC424  54 00 FE FE */	rlwinm r0, r0, 0x1f, 0x1b, 0x1f
/* 801DC428  2C 00 00 11 */	cmpwi r0, 0x11
/* 801DC42C  40 82 00 60 */	bne lbl_801DC48C
/* 801DC430  57 00 06 3E */	clrlwi r0, r24, 0x18
/* 801DC434  28 00 00 26 */	cmplwi r0, 0x26
/* 801DC438  40 82 00 54 */	bne lbl_801DC48C
/* 801DC43C  3B C0 00 00 */	li r30, 0
lbl_801DC440:
/* 801DC440  38 1E 00 F9 */	addi r0, r30, 0xf9
/* 801DC444  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 801DC448  38 80 00 01 */	li r4, 1
/* 801DC44C  4B EB BA 95 */	bl checkItemGet__FUci
/* 801DC450  2C 03 00 00 */	cmpwi r3, 0
/* 801DC454  41 82 00 08 */	beq lbl_801DC45C
/* 801DC458  3A D6 00 01 */	addi r22, r22, 1
lbl_801DC45C:
/* 801DC45C  3B DE 00 01 */	addi r30, r30, 1
/* 801DC460  2C 1E 00 03 */	cmpwi r30, 3
/* 801DC464  41 80 FF DC */	blt lbl_801DC440
/* 801DC468  2C 16 00 01 */	cmpwi r22, 1
/* 801DC46C  41 81 00 0C */	bgt lbl_801DC478
/* 801DC470  3B C0 00 F9 */	li r30, 0xf9
/* 801DC474  48 00 00 18 */	b lbl_801DC48C
lbl_801DC478:
/* 801DC478  2C 16 00 02 */	cmpwi r22, 2
/* 801DC47C  41 81 00 0C */	bgt lbl_801DC488
/* 801DC480  3B C0 00 FA */	li r30, 0xfa
/* 801DC484  48 00 00 08 */	b lbl_801DC48C
lbl_801DC488:
/* 801DC488  3B C0 00 FD */	li r30, 0xfd
lbl_801DC48C:
/* 801DC48C  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 801DC490  28 00 00 50 */	cmplwi r0, 0x50
/* 801DC494  40 82 00 38 */	bne lbl_801DC4CC
/* 801DC498  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801DC49C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801DC4A0  38 63 00 CC */	addi r3, r3, 0xcc
/* 801DC4A4  38 80 00 4F */	li r4, 0x4f
/* 801DC4A8  4B E5 7A 21 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 801DC4AC  2C 03 00 00 */	cmpwi r3, 0
/* 801DC4B0  41 82 00 1C */	beq lbl_801DC4CC
/* 801DC4B4  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801DC4B8  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801DC4BC  88 03 00 DC */	lbz r0, 0xdc(r3)
/* 801DC4C0  28 00 00 FF */	cmplwi r0, 0xff
/* 801DC4C4  40 82 00 08 */	bne lbl_801DC4CC
/* 801DC4C8  3B C0 00 4F */	li r30, 0x4f
lbl_801DC4CC:
/* 801DC4CC  88 77 00 E0 */	lbz r3, 0xe0(r23)
/* 801DC4D0  28 03 00 00 */	cmplwi r3, 0
/* 801DC4D4  40 82 01 60 */	bne lbl_801DC634
/* 801DC4D8  38 00 00 01 */	li r0, 1
/* 801DC4DC  98 17 00 E0 */	stb r0, 0xe0(r23)
/* 801DC4E0  9B 17 00 E1 */	stb r24, 0xe1(r23)
/* 801DC4E4  57 D8 06 3E */	clrlwi r24, r30, 0x18
/* 801DC4E8  38 18 01 65 */	addi r0, r24, 0x165
/* 801DC4EC  90 17 00 CC */	stw r0, 0xcc(r23)
/* 801DC4F0  7F E3 FB 78 */	mr r3, r31
/* 801DC4F4  81 9F 00 00 */	lwz r12, 0(r31)
/* 801DC4F8  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 801DC4FC  7D 89 03 A6 */	mtctr r12
/* 801DC500  4E 80 04 21 */	bctrl 
/* 801DC504  88 03 00 09 */	lbz r0, 9(r3)
/* 801DC508  54 00 FE FE */	rlwinm r0, r0, 0x1f, 0x1b, 0x1f
/* 801DC50C  2C 00 00 14 */	cmpwi r0, 0x14
/* 801DC510  40 82 00 18 */	bne lbl_801DC528
/* 801DC514  7F 00 C3 78 */	mr r0, r24
/* 801DC518  28 00 00 23 */	cmplwi r0, 0x23
/* 801DC51C  40 82 00 0C */	bne lbl_801DC528
/* 801DC520  38 00 05 BF */	li r0, 0x5bf
/* 801DC524  90 17 00 CC */	stw r0, 0xcc(r23)
lbl_801DC528:
/* 801DC528  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 801DC52C  28 00 00 25 */	cmplwi r0, 0x25
/* 801DC530  40 82 00 1C */	bne lbl_801DC54C
/* 801DC534  38 60 00 16 */	li r3, 0x16
/* 801DC538  4B E5 13 41 */	bl dComIfGs_isDungeonItemWarp__Fi
/* 801DC53C  2C 03 00 00 */	cmpwi r3, 0
/* 801DC540  41 82 00 0C */	beq lbl_801DC54C
/* 801DC544  38 00 02 51 */	li r0, 0x251
/* 801DC548  90 17 00 CC */	stw r0, 0xcc(r23)
lbl_801DC54C:
/* 801DC54C  38 18 02 65 */	addi r0, r24, 0x265
/* 801DC550  90 17 00 C8 */	stw r0, 0xc8(r23)
/* 801DC554  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801DC558  38 83 01 88 */	addi r4, r3, g_meter2_info@l
/* 801DC55C  88 A4 00 DC */	lbz r5, 0xdc(r4)
/* 801DC560  28 05 00 FF */	cmplwi r5, 0xff
/* 801DC564  41 82 00 4C */	beq lbl_801DC5B0
/* 801DC568  57 83 06 3E */	clrlwi r3, r28, 0x18
/* 801DC56C  38 05 00 0F */	addi r0, r5, 0xf
/* 801DC570  7C 03 00 00 */	cmpw r3, r0
/* 801DC574  40 82 00 3C */	bne lbl_801DC5B0
/* 801DC578  38 00 01 6D */	li r0, 0x16d
/* 801DC57C  90 17 00 CC */	stw r0, 0xcc(r23)
/* 801DC580  88 84 00 DC */	lbz r4, 0xdc(r4)
/* 801DC584  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801DC588  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801DC58C  38 63 00 EC */	addi r3, r3, 0xec
/* 801DC590  4B E5 79 ED */	bl getBombNum__24dSv_player_item_record_cCFUc
/* 801DC594  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DC598  41 82 00 10 */	beq lbl_801DC5A8
/* 801DC59C  38 00 02 6D */	li r0, 0x26d
/* 801DC5A0  90 17 00 C8 */	stw r0, 0xc8(r23)
/* 801DC5A4  48 00 00 0C */	b lbl_801DC5B0
lbl_801DC5A8:
/* 801DC5A8  38 00 02 6E */	li r0, 0x26e
/* 801DC5AC  90 17 00 C8 */	stw r0, 0xc8(r23)
lbl_801DC5B0:
/* 801DC5B0  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 801DC5B4  28 00 00 46 */	cmplwi r0, 0x46
/* 801DC5B8  40 82 00 30 */	bne lbl_801DC5E8
/* 801DC5BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801DC5C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801DC5C4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 801DC5C8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 801DC5CC  81 8C 02 A0 */	lwz r12, 0x2a0(r12)
/* 801DC5D0  7D 89 03 A6 */	mtctr r12
/* 801DC5D4  4E 80 04 21 */	bctrl 
/* 801DC5D8  2C 03 00 00 */	cmpwi r3, 0
/* 801DC5DC  40 82 00 0C */	bne lbl_801DC5E8
/* 801DC5E0  38 00 02 B2 */	li r0, 0x2b2
/* 801DC5E4  90 17 00 C8 */	stw r0, 0xc8(r23)
lbl_801DC5E8:
/* 801DC5E8  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 801DC5EC  28 00 00 25 */	cmplwi r0, 0x25
/* 801DC5F0  40 82 00 1C */	bne lbl_801DC60C
/* 801DC5F4  38 60 00 16 */	li r3, 0x16
/* 801DC5F8  4B E5 12 81 */	bl dComIfGs_isDungeonItemWarp__Fi
/* 801DC5FC  2C 03 00 00 */	cmpwi r3, 0
/* 801DC600  41 82 00 0C */	beq lbl_801DC60C
/* 801DC604  38 00 03 51 */	li r0, 0x351
/* 801DC608  90 17 00 C8 */	stw r0, 0xc8(r23)
lbl_801DC60C:
/* 801DC60C  38 00 00 00 */	li r0, 0
/* 801DC610  98 17 00 E7 */	stb r0, 0xe7(r23)
/* 801DC614  9B 37 00 DE */	stb r25, 0xde(r23)
/* 801DC618  9B 57 00 DF */	stb r26, 0xdf(r23)
/* 801DC61C  7E E3 BB 78 */	mr r3, r23
/* 801DC620  4B FF F2 01 */	bl open_init__19dMenu_ItemExplain_cFv
/* 801DC624  7E E3 BB 78 */	mr r3, r23
/* 801DC628  48 00 05 95 */	bl setScale__19dMenu_ItemExplain_cFv
/* 801DC62C  3B A0 00 01 */	li r29, 1
/* 801DC630  48 00 00 EC */	b lbl_801DC71C
lbl_801DC634:
/* 801DC634  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 801DC638  41 82 00 E4 */	beq lbl_801DC71C
/* 801DC63C  28 03 00 01 */	cmplwi r3, 1
/* 801DC640  41 82 00 0C */	beq lbl_801DC64C
/* 801DC644  28 03 00 02 */	cmplwi r3, 2
/* 801DC648  40 82 00 D4 */	bne lbl_801DC71C
lbl_801DC64C:
/* 801DC64C  9B 17 00 E1 */	stb r24, 0xe1(r23)
/* 801DC650  57 D8 06 3E */	clrlwi r24, r30, 0x18
/* 801DC654  38 18 01 65 */	addi r0, r24, 0x165
/* 801DC658  90 17 00 CC */	stw r0, 0xcc(r23)
/* 801DC65C  28 18 00 25 */	cmplwi r24, 0x25
/* 801DC660  40 82 00 1C */	bne lbl_801DC67C
/* 801DC664  38 60 00 16 */	li r3, 0x16
/* 801DC668  4B E5 12 11 */	bl dComIfGs_isDungeonItemWarp__Fi
/* 801DC66C  2C 03 00 00 */	cmpwi r3, 0
/* 801DC670  41 82 00 0C */	beq lbl_801DC67C
/* 801DC674  38 00 02 51 */	li r0, 0x251
/* 801DC678  90 17 00 CC */	stw r0, 0xcc(r23)
lbl_801DC67C:
/* 801DC67C  38 18 02 65 */	addi r0, r24, 0x265
/* 801DC680  90 17 00 C8 */	stw r0, 0xc8(r23)
/* 801DC684  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801DC688  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801DC68C  88 83 00 DC */	lbz r4, 0xdc(r3)
/* 801DC690  28 04 00 FF */	cmplwi r4, 0xff
/* 801DC694  41 82 00 40 */	beq lbl_801DC6D4
/* 801DC698  57 83 06 3E */	clrlwi r3, r28, 0x18
/* 801DC69C  38 04 00 0F */	addi r0, r4, 0xf
/* 801DC6A0  7C 03 00 00 */	cmpw r3, r0
/* 801DC6A4  40 82 00 30 */	bne lbl_801DC6D4
/* 801DC6A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801DC6AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801DC6B0  38 63 00 EC */	addi r3, r3, 0xec
/* 801DC6B4  4B E5 78 C9 */	bl getBombNum__24dSv_player_item_record_cCFUc
/* 801DC6B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801DC6BC  41 82 00 10 */	beq lbl_801DC6CC
/* 801DC6C0  38 00 02 6D */	li r0, 0x26d
/* 801DC6C4  90 17 00 C8 */	stw r0, 0xc8(r23)
/* 801DC6C8  48 00 00 0C */	b lbl_801DC6D4
lbl_801DC6CC:
/* 801DC6CC  38 00 02 6E */	li r0, 0x26e
/* 801DC6D0  90 17 00 C8 */	stw r0, 0xc8(r23)
lbl_801DC6D4:
/* 801DC6D4  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 801DC6D8  28 00 00 25 */	cmplwi r0, 0x25
/* 801DC6DC  40 82 00 1C */	bne lbl_801DC6F8
/* 801DC6E0  38 60 00 16 */	li r3, 0x16
/* 801DC6E4  4B E5 11 95 */	bl dComIfGs_isDungeonItemWarp__Fi
/* 801DC6E8  2C 03 00 00 */	cmpwi r3, 0
/* 801DC6EC  41 82 00 0C */	beq lbl_801DC6F8
/* 801DC6F0  38 00 03 51 */	li r0, 0x351
/* 801DC6F4  90 17 00 C8 */	stw r0, 0xc8(r23)
lbl_801DC6F8:
/* 801DC6F8  38 00 00 00 */	li r0, 0
/* 801DC6FC  98 17 00 E7 */	stb r0, 0xe7(r23)
/* 801DC700  9B 37 00 DE */	stb r25, 0xde(r23)
/* 801DC704  9B 57 00 DF */	stb r26, 0xdf(r23)
/* 801DC708  7E E3 BB 78 */	mr r3, r23
/* 801DC70C  4B FF F1 15 */	bl open_init__19dMenu_ItemExplain_cFv
/* 801DC710  7E E3 BB 78 */	mr r3, r23
/* 801DC714  48 00 04 A9 */	bl setScale__19dMenu_ItemExplain_cFv
/* 801DC718  3B A0 00 01 */	li r29, 1
lbl_801DC71C:
/* 801DC71C  7F A3 EB 78 */	mr r3, r29
/* 801DC720  39 61 00 30 */	addi r11, r1, 0x30
/* 801DC724  48 18 5A E9 */	bl _restgpr_22
/* 801DC728  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801DC72C  7C 08 03 A6 */	mtlr r0
/* 801DC730  38 21 00 30 */	addi r1, r1, 0x30
/* 801DC734  4E 80 00 20 */	blr 
