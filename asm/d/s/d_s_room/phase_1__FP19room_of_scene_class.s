lbl_8025B8A4:
/* 8025B8A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8025B8A8  7C 08 02 A6 */	mflr r0
/* 8025B8AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8025B8B0  39 61 00 20 */	addi r11, r1, 0x20
/* 8025B8B4  48 10 69 29 */	bl _savegpr_29
/* 8025B8B8  38 00 00 01 */	li r0, 1
/* 8025B8BC  98 03 01 D8 */	stb r0, 0x1d8(r3)
/* 8025B8C0  83 A3 00 B0 */	lwz r29, 0xb0(r3)
/* 8025B8C4  7F A3 EB 78 */	mr r3, r29
/* 8025B8C8  4B DD 3B F5 */	bl dComIfG_getRoomArcName__Fi
/* 8025B8CC  7C 7F 1B 78 */	mr r31, r3
/* 8025B8D0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8025B8D4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8025B8D8  3F C4 00 02 */	addis r30, r4, 2
/* 8025B8DC  38 9E D4 F8 */	addi r4, r30, -11016
/* 8025B8E0  38 A0 00 40 */	li r5, 0x40
/* 8025B8E4  3B DE C2 F8 */	addi r30, r30, -15624
/* 8025B8E8  4B DE 08 79 */	bl syncRes__14dRes_control_cFPCcP11dRes_info_ci
/* 8025B8EC  2C 03 00 00 */	cmpwi r3, 0
/* 8025B8F0  40 80 00 74 */	bge lbl_8025B964
/* 8025B8F4  7F A3 EB 78 */	mr r3, r29
/* 8025B8F8  4B DC 8A B9 */	bl getMemoryBlock__20dStage_roomControl_cFi
/* 8025B8FC  7C 7D 1B 79 */	or. r29, r3, r3
/* 8025B900  41 82 00 18 */	beq lbl_8025B918
/* 8025B904  48 07 44 61 */	bl getTotalUsedSize__10JKRExpHeapCFv
/* 8025B908  2C 03 00 00 */	cmpwi r3, 0
/* 8025B90C  41 82 00 38 */	beq lbl_8025B944
/* 8025B910  38 60 00 00 */	li r3, 0
/* 8025B914  48 00 00 54 */	b lbl_8025B968
lbl_8025B918:
/* 8025B918  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8025B91C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8025B920  85 83 4E 20 */	lwzu r12, 0x4e20(r3)
/* 8025B924  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8025B928  7D 89 03 A6 */	mtctr r12
/* 8025B92C  4E 80 04 21 */	bctrl 
/* 8025B930  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 8025B934  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 8025B938  41 82 00 0C */	beq lbl_8025B944
/* 8025B93C  4B DB 34 B1 */	bl mDoExt_getArchiveHeap__Fv
/* 8025B940  7C 7D 1B 78 */	mr r29, r3
lbl_8025B944:
/* 8025B944  7F C3 F3 78 */	mr r3, r30
/* 8025B948  7F E4 FB 78 */	mr r4, r31
/* 8025B94C  7F A5 EB 78 */	mr r5, r29
/* 8025B950  4B DE 0C 6D */	bl setStageRes__14dRes_control_cFPCcP7JKRHeap
/* 8025B954  2C 03 00 00 */	cmpwi r3, 0
/* 8025B958  40 82 00 0C */	bne lbl_8025B964
/* 8025B95C  38 60 00 05 */	li r3, 5
/* 8025B960  48 00 00 08 */	b lbl_8025B968
lbl_8025B964:
/* 8025B964  38 60 00 02 */	li r3, 2
lbl_8025B968:
/* 8025B968  39 61 00 20 */	addi r11, r1, 0x20
/* 8025B96C  48 10 68 BD */	bl _restgpr_29
/* 8025B970  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8025B974  7C 08 03 A6 */	mtlr r0
/* 8025B978  38 21 00 20 */	addi r1, r1, 0x20
/* 8025B97C  4E 80 00 20 */	blr 
