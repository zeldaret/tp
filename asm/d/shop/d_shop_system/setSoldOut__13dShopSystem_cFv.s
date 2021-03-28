lbl_8019A364:
/* 8019A364  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8019A368  7C 08 02 A6 */	mflr r0
/* 8019A36C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8019A370  39 61 00 20 */	addi r11, r1, 0x20
/* 8019A374  48 1C 7E 69 */	bl _savegpr_29
/* 8019A378  7C 7E 1B 78 */	mr r30, r3
/* 8019A37C  88 63 0F 73 */	lbz r3, 0xf73(r3)
/* 8019A380  28 03 00 FF */	cmplwi r3, 0xff
/* 8019A384  41 82 01 58 */	beq lbl_8019A4DC
/* 8019A388  80 1E 0F 60 */	lwz r0, 0xf60(r30)
/* 8019A38C  2C 00 00 00 */	cmpwi r0, 0
/* 8019A390  40 80 00 50 */	bge lbl_8019A3E0
/* 8019A394  54 60 15 BA */	rlwinm r0, r3, 2, 0x16, 0x1d
/* 8019A398  3C 60 80 3C */	lis r3, dShopSystem_itemActor@ha
/* 8019A39C  38 63 B8 A4 */	addi r3, r3, dShopSystem_itemActor@l
/* 8019A3A0  7C 63 00 2E */	lwzx r3, r3, r0
/* 8019A3A4  A8 03 04 B8 */	lha r0, 0x4b8(r3)
/* 8019A3A8  54 1F 06 3E */	clrlwi r31, r0, 0x18
/* 8019A3AC  28 1F 00 FF */	cmplwi r31, 0xff
/* 8019A3B0  41 82 00 30 */	beq lbl_8019A3E0
/* 8019A3B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8019A3B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8019A3BC  3B A3 09 58 */	addi r29, r3, 0x958
/* 8019A3C0  7F A3 EB 78 */	mr r3, r29
/* 8019A3C4  7F E4 FB 78 */	mr r4, r31
/* 8019A3C8  4B E9 A4 99 */	bl isSwitch__12dSv_memBit_cCFi
/* 8019A3CC  2C 03 00 00 */	cmpwi r3, 0
/* 8019A3D0  40 82 00 10 */	bne lbl_8019A3E0
/* 8019A3D4  7F A3 EB 78 */	mr r3, r29
/* 8019A3D8  7F E4 FB 78 */	mr r4, r31
/* 8019A3DC  4B E9 A4 35 */	bl onSwitch__12dSv_memBit_cFi
lbl_8019A3E0:
/* 8019A3E0  8B FE 0F 73 */	lbz r31, 0xf73(r30)
/* 8019A3E4  38 80 00 FF */	li r4, 0xff
/* 8019A3E8  98 9E 0F 73 */	stb r4, 0xf73(r30)
/* 8019A3EC  80 1E 0F 60 */	lwz r0, 0xf60(r30)
/* 8019A3F0  2C 00 00 00 */	cmpwi r0, 0
/* 8019A3F4  41 80 00 2C */	blt lbl_8019A420
/* 8019A3F8  57 E0 10 3A */	slwi r0, r31, 2
/* 8019A3FC  7F BE 02 14 */	add r29, r30, r0
/* 8019A400  80 7D 0E 4C */	lwz r3, 0xe4c(r29)
/* 8019A404  4B E7 F8 B5 */	bl fopAcM_delete__FUi
/* 8019A408  38 00 FF FF */	li r0, -1
/* 8019A40C  90 1D 0E 4C */	stw r0, 0xe4c(r29)
/* 8019A410  7F C3 F3 78 */	mr r3, r30
/* 8019A414  7F E4 FB 78 */	mr r4, r31
/* 8019A418  4B FF D1 A9 */	bl onFlag__13dShopSystem_cFi
/* 8019A41C  48 00 00 C0 */	b lbl_8019A4DC
lbl_8019A420:
/* 8019A420  2C 1F 00 00 */	cmpwi r31, 0
/* 8019A424  40 82 00 20 */	bne lbl_8019A444
/* 8019A428  38 00 00 00 */	li r0, 0
/* 8019A42C  3C 60 80 3C */	lis r3, dShopSystem_itemActor@ha
/* 8019A430  90 03 B8 A4 */	stw r0, dShopSystem_itemActor@l(r3)
/* 8019A434  98 8D 81 68 */	stb r4, dShopSystem_itemNo(r13)
/* 8019A438  38 00 00 02 */	li r0, 2
/* 8019A43C  90 0D 8A DC */	stw r0, dShopSystem_item_count(r13)
/* 8019A440  48 00 00 84 */	b lbl_8019A4C4
lbl_8019A444:
/* 8019A444  2C 1F 00 01 */	cmpwi r31, 1
/* 8019A448  40 82 00 28 */	bne lbl_8019A470
/* 8019A44C  38 00 00 00 */	li r0, 0
/* 8019A450  3C 60 80 3C */	lis r3, dShopSystem_itemActor@ha
/* 8019A454  38 63 B8 A4 */	addi r3, r3, dShopSystem_itemActor@l
/* 8019A458  90 03 00 04 */	stw r0, 4(r3)
/* 8019A45C  38 6D 81 68 */	la r3, dShopSystem_itemNo(r13) /* 804506E8-_SDA_BASE_ */
/* 8019A460  98 83 00 01 */	stb r4, 1(r3)
/* 8019A464  38 00 00 02 */	li r0, 2
/* 8019A468  90 0D 8A DC */	stw r0, dShopSystem_item_count(r13)
/* 8019A46C  48 00 00 58 */	b lbl_8019A4C4
lbl_8019A470:
/* 8019A470  2C 1F 00 02 */	cmpwi r31, 2
/* 8019A474  40 82 00 28 */	bne lbl_8019A49C
/* 8019A478  38 00 00 00 */	li r0, 0
/* 8019A47C  3C 60 80 3C */	lis r3, dShopSystem_itemActor@ha
/* 8019A480  38 63 B8 A4 */	addi r3, r3, dShopSystem_itemActor@l
/* 8019A484  90 03 00 08 */	stw r0, 8(r3)
/* 8019A488  38 6D 81 68 */	la r3, dShopSystem_itemNo(r13) /* 804506E8-_SDA_BASE_ */
/* 8019A48C  98 83 00 02 */	stb r4, 2(r3)
/* 8019A490  38 00 00 02 */	li r0, 2
/* 8019A494  90 0D 8A DC */	stw r0, dShopSystem_item_count(r13)
/* 8019A498  48 00 00 2C */	b lbl_8019A4C4
lbl_8019A49C:
/* 8019A49C  2C 1F 00 06 */	cmpwi r31, 6
/* 8019A4A0  40 82 00 24 */	bne lbl_8019A4C4
/* 8019A4A4  38 00 00 00 */	li r0, 0
/* 8019A4A8  3C 60 80 3C */	lis r3, dShopSystem_itemActor@ha
/* 8019A4AC  38 63 B8 A4 */	addi r3, r3, dShopSystem_itemActor@l
/* 8019A4B0  90 03 00 18 */	stw r0, 0x18(r3)
/* 8019A4B4  38 6D 81 68 */	la r3, dShopSystem_itemNo(r13) /* 804506E8-_SDA_BASE_ */
/* 8019A4B8  98 83 00 06 */	stb r4, 6(r3)
/* 8019A4BC  38 00 00 06 */	li r0, 6
/* 8019A4C0  90 0D 8A DC */	stw r0, dShopSystem_item_count(r13)
lbl_8019A4C4:
/* 8019A4C4  88 1E 0F 76 */	lbz r0, 0xf76(r30)
/* 8019A4C8  28 00 00 00 */	cmplwi r0, 0
/* 8019A4CC  41 82 00 10 */	beq lbl_8019A4DC
/* 8019A4D0  7F C3 F3 78 */	mr r3, r30
/* 8019A4D4  7F E4 FB 78 */	mr r4, r31
/* 8019A4D8  4B FF D0 E9 */	bl onFlag__13dShopSystem_cFi
lbl_8019A4DC:
/* 8019A4DC  39 61 00 20 */	addi r11, r1, 0x20
/* 8019A4E0  48 1C 7D 49 */	bl _restgpr_29
/* 8019A4E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8019A4E8  7C 08 03 A6 */	mtlr r0
/* 8019A4EC  38 21 00 20 */	addi r1, r1, 0x20
/* 8019A4F0  4E 80 00 20 */	blr 
