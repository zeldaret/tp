lbl_8020D9EC:
/* 8020D9EC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8020D9F0  7C 08 02 A6 */	mflr r0
/* 8020D9F4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8020D9F8  39 61 00 30 */	addi r11, r1, 0x30
/* 8020D9FC  48 15 47 D9 */	bl _savegpr_27
/* 8020DA00  7C 7F 1B 78 */	mr r31, r3
/* 8020DA04  4B FF FB 25 */	bl getMapDispSizeTypeNo__11dMeterMap_cFv
/* 8020DA08  4B FF FB 21 */	bl getMapDispSizeTypeNo__11dMeterMap_cFv
/* 8020DA0C  2C 03 00 03 */	cmpwi r3, 3
/* 8020DA10  41 82 00 58 */	beq lbl_8020DA68
/* 8020DA14  40 80 00 1C */	bge lbl_8020DA30
/* 8020DA18  2C 03 00 01 */	cmpwi r3, 1
/* 8020DA1C  41 82 00 24 */	beq lbl_8020DA40
/* 8020DA20  40 80 00 34 */	bge lbl_8020DA54
/* 8020DA24  2C 03 00 00 */	cmpwi r3, 0
/* 8020DA28  40 80 00 54 */	bge lbl_8020DA7C
/* 8020DA2C  48 00 00 74 */	b lbl_8020DAA0
lbl_8020DA30:
/* 8020DA30  2C 03 00 05 */	cmpwi r3, 5
/* 8020DA34  41 82 00 5C */	beq lbl_8020DA90
/* 8020DA38  40 80 00 68 */	bge lbl_8020DAA0
/* 8020DA3C  48 00 00 40 */	b lbl_8020DA7C
lbl_8020DA40:
/* 8020DA40  3B 80 00 D8 */	li r28, 0xd8
/* 8020DA44  3B 60 00 D8 */	li r27, 0xd8
/* 8020DA48  3B C0 00 90 */	li r30, 0x90
/* 8020DA4C  3B A0 00 90 */	li r29, 0x90
/* 8020DA50  48 00 00 50 */	b lbl_8020DAA0
lbl_8020DA54:
/* 8020DA54  3B 80 00 D8 */	li r28, 0xd8
/* 8020DA58  3B 60 00 D8 */	li r27, 0xd8
/* 8020DA5C  3B C0 00 D8 */	li r30, 0xd8
/* 8020DA60  3B A0 00 D8 */	li r29, 0xd8
/* 8020DA64  48 00 00 3C */	b lbl_8020DAA0
lbl_8020DA68:
/* 8020DA68  3B 80 00 D8 */	li r28, 0xd8
/* 8020DA6C  3B 60 00 D8 */	li r27, 0xd8
/* 8020DA70  3B C0 00 60 */	li r30, 0x60
/* 8020DA74  3B A0 00 60 */	li r29, 0x60
/* 8020DA78  48 00 00 28 */	b lbl_8020DAA0
lbl_8020DA7C:
/* 8020DA7C  3B 80 00 90 */	li r28, 0x90
/* 8020DA80  3B 60 00 90 */	li r27, 0x90
/* 8020DA84  3B C0 00 90 */	li r30, 0x90
/* 8020DA88  3B A0 00 90 */	li r29, 0x90
/* 8020DA8C  48 00 00 14 */	b lbl_8020DAA0
lbl_8020DA90:
/* 8020DA90  3B 80 00 90 */	li r28, 0x90
/* 8020DA94  3B 60 00 90 */	li r27, 0x90
/* 8020DA98  3B C0 00 60 */	li r30, 0x60
/* 8020DA9C  3B A0 00 60 */	li r29, 0x60
lbl_8020DAA0:
/* 8020DAA0  7F C0 07 34 */	extsh r0, r30
/* 8020DAA4  C8 22 AE 28 */	lfd f1, lit_4100(r2)
/* 8020DAA8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8020DAAC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8020DAB0  3C 60 43 30 */	lis r3, 0x4330
/* 8020DAB4  90 61 00 08 */	stw r3, 8(r1)
/* 8020DAB8  C8 01 00 08 */	lfd f0, 8(r1)
/* 8020DABC  EC 00 08 28 */	fsubs f0, f0, f1
/* 8020DAC0  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 8020DAC4  7F A0 07 34 */	extsh r0, r29
/* 8020DAC8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8020DACC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020DAD0  90 61 00 10 */	stw r3, 0x10(r1)
/* 8020DAD4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8020DAD8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8020DADC  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 8020DAE0  38 60 00 94 */	li r3, 0x94
/* 8020DAE4  48 0C 11 69 */	bl __nw__FUl
/* 8020DAE8  7C 60 1B 79 */	or. r0, r3, r3
/* 8020DAEC  41 82 00 1C */	beq lbl_8020DB08
/* 8020DAF0  7F C4 F3 78 */	mr r4, r30
/* 8020DAF4  7F A5 EB 78 */	mr r5, r29
/* 8020DAF8  7F 86 E3 78 */	mr r6, r28
/* 8020DAFC  7F 67 DB 78 */	mr r7, r27
/* 8020DB00  4B E1 BD 75 */	bl __ct__6dMap_cFiiii
/* 8020DB04  7C 60 1B 78 */	mr r0, r3
lbl_8020DB08:
/* 8020DB08  90 1F 00 08 */	stw r0, 8(r31)
/* 8020DB0C  38 60 01 50 */	li r3, 0x150
/* 8020DB10  48 0C 11 3D */	bl __nw__FUl
/* 8020DB14  7C 60 1B 79 */	or. r0, r3, r3
/* 8020DB18  41 82 00 14 */	beq lbl_8020DB2C
/* 8020DB1C  80 9F 00 08 */	lwz r4, 8(r31)
/* 8020DB20  80 84 00 48 */	lwz r4, 0x48(r4)
/* 8020DB24  48 0E EB E5 */	bl __ct__10J2DPictureFPC7ResTIMG
/* 8020DB28  7C 60 1B 78 */	mr r0, r3
lbl_8020DB2C:
/* 8020DB2C  90 1F 00 04 */	stw r0, 4(r31)
/* 8020DB30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8020DB34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8020DB38  3B C3 09 58 */	addi r30, r3, 0x958
/* 8020DB3C  7F C3 F3 78 */	mr r3, r30
/* 8020DB40  38 80 00 01 */	li r4, 1
/* 8020DB44  4B E2 6D F1 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 8020DB48  90 7F 00 0C */	stw r3, 0xc(r31)
/* 8020DB4C  7F C3 F3 78 */	mr r3, r30
/* 8020DB50  38 80 00 00 */	li r4, 0
/* 8020DB54  4B E2 6D E1 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 8020DB58  90 7F 00 10 */	stw r3, 0x10(r31)
/* 8020DB5C  38 00 00 00 */	li r0, 0
/* 8020DB60  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8020DB64  98 1F 00 2A */	stb r0, 0x2a(r31)
/* 8020DB68  4B E2 05 41 */	bl dComIfGp_checkMapShow__Fv
/* 8020DB6C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8020DB70  41 82 00 38 */	beq lbl_8020DBA8
/* 8020DB74  38 00 00 01 */	li r0, 1
/* 8020DB78  98 1F 00 2D */	stb r0, 0x2d(r31)
/* 8020DB7C  4B FF FA D5 */	bl isEnableDispMapAndMapDispSizeTypeNo__11dMeterMap_cFv
/* 8020DB80  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8020DB84  40 82 00 0C */	bne lbl_8020DB90
/* 8020DB88  38 00 00 00 */	li r0, 0
/* 8020DB8C  98 1F 00 2D */	stb r0, 0x2d(r31)
lbl_8020DB90:
/* 8020DB90  4B FF FD 71 */	bl isMapOpenCheck__11dMeterMap_cFv
/* 8020DB94  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8020DB98  40 82 00 18 */	bne lbl_8020DBB0
/* 8020DB9C  38 00 00 00 */	li r0, 0
/* 8020DBA0  98 1F 00 2D */	stb r0, 0x2d(r31)
/* 8020DBA4  48 00 00 0C */	b lbl_8020DBB0
lbl_8020DBA8:
/* 8020DBA8  38 00 00 00 */	li r0, 0
/* 8020DBAC  98 1F 00 2D */	stb r0, 0x2d(r31)
lbl_8020DBB0:
/* 8020DBB0  88 1F 00 2D */	lbz r0, 0x2d(r31)
/* 8020DBB4  28 00 00 00 */	cmplwi r0, 0
/* 8020DBB8  41 82 00 2C */	beq lbl_8020DBE4
/* 8020DBBC  38 00 00 01 */	li r0, 1
/* 8020DBC0  98 1F 00 2D */	stb r0, 0x2d(r31)
/* 8020DBC4  7F E3 FB 78 */	mr r3, r31
/* 8020DBC8  4B FF FC 1D */	bl getDispPosInside_OffsetX__11dMeterMap_cFv
/* 8020DBCC  B0 7F 00 28 */	sth r3, 0x28(r31)
/* 8020DBD0  38 00 00 01 */	li r0, 1
/* 8020DBD4  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8020DBD8  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8020DBDC  98 03 00 BF */	stb r0, 0xbf(r3)
/* 8020DBE0  48 00 00 28 */	b lbl_8020DC08
lbl_8020DBE4:
/* 8020DBE4  38 00 00 00 */	li r0, 0
/* 8020DBE8  98 1F 00 2D */	stb r0, 0x2d(r31)
/* 8020DBEC  7F E3 FB 78 */	mr r3, r31
/* 8020DBF0  4B FF FB FD */	bl getDispPosOutSide_OffsetX__11dMeterMap_cFv
/* 8020DBF4  B0 7F 00 28 */	sth r3, 0x28(r31)
/* 8020DBF8  38 00 00 00 */	li r0, 0
/* 8020DBFC  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8020DC00  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8020DC04  98 03 00 BF */	stb r0, 0xbf(r3)
lbl_8020DC08:
/* 8020DC08  38 00 00 00 */	li r0, 0
/* 8020DC0C  98 1F 00 2E */	stb r0, 0x2e(r31)
/* 8020DC10  B0 1F 00 28 */	sth r0, 0x28(r31)
/* 8020DC14  90 1F 00 30 */	stw r0, 0x30(r31)
/* 8020DC18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8020DC1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8020DC20  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8020DC24  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 8020DC28  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 8020DC2C  A0 84 00 EC */	lhz r4, 0xec(r4)
/* 8020DC30  4B E2 6D 8D */	bl isEventBit__11dSv_event_cCFUs
/* 8020DC34  98 7F 00 2B */	stb r3, 0x2b(r31)
/* 8020DC38  39 61 00 30 */	addi r11, r1, 0x30
/* 8020DC3C  48 15 45 E5 */	bl _restgpr_27
/* 8020DC40  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8020DC44  7C 08 03 A6 */	mtlr r0
/* 8020DC48  38 21 00 30 */	addi r1, r1, 0x30
/* 8020DC4C  4E 80 00 20 */	blr 
