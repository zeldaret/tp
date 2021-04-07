lbl_8025B980:
/* 8025B980  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8025B984  7C 08 02 A6 */	mflr r0
/* 8025B988  90 01 00 24 */	stw r0, 0x24(r1)
/* 8025B98C  39 61 00 20 */	addi r11, r1, 0x20
/* 8025B990  48 10 68 49 */	bl _savegpr_28
/* 8025B994  7C 7C 1B 78 */	mr r28, r3
/* 8025B998  80 63 00 B0 */	lwz r3, 0xb0(r3)
/* 8025B99C  4B DD 3B 21 */	bl dComIfG_getRoomArcName__Fi
/* 8025B9A0  7C 7F 1B 78 */	mr r31, r3
/* 8025B9A4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8025B9A8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8025B9AC  3C 84 00 02 */	addis r4, r4, 2
/* 8025B9B0  3B C4 D4 F8 */	addi r30, r4, -11016
/* 8025B9B4  7F C4 F3 78 */	mr r4, r30
/* 8025B9B8  38 A0 00 40 */	li r5, 0x40
/* 8025B9BC  4B DE 07 A5 */	bl syncRes__14dRes_control_cFPCcP11dRes_info_ci
/* 8025B9C0  2C 03 00 00 */	cmpwi r3, 0
/* 8025B9C4  40 80 00 0C */	bge lbl_8025B9D0
/* 8025B9C8  38 60 00 05 */	li r3, 5
/* 8025B9CC  48 00 00 C8 */	b lbl_8025BA94
lbl_8025B9D0:
/* 8025B9D0  41 82 00 0C */	beq lbl_8025B9DC
/* 8025B9D4  38 60 00 00 */	li r3, 0
/* 8025B9D8  48 00 00 BC */	b lbl_8025BA94
lbl_8025B9DC:
/* 8025B9DC  83 BC 00 B0 */	lwz r29, 0xb0(r28)
/* 8025B9E0  7F A3 EB 78 */	mr r3, r29
/* 8025B9E4  4B DD 1F CD */	bl getZoneNo__20dStage_roomControl_cFi
/* 8025B9E8  2C 03 00 00 */	cmpwi r3, 0
/* 8025B9EC  40 80 00 20 */	bge lbl_8025BA0C
/* 8025B9F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8025B9F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8025B9F8  7F A4 EB 78 */	mr r4, r29
/* 8025B9FC  4B DD 97 A9 */	bl createZone__10dSv_info_cFi
/* 8025BA00  7C 64 1B 78 */	mr r4, r3
/* 8025BA04  7F A3 EB 78 */	mr r3, r29
/* 8025BA08  48 00 00 A5 */	bl setZoneNo__20dStage_roomControl_cFii
lbl_8025BA0C:
/* 8025BA0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8025BA10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8025BA14  38 63 4E C4 */	addi r3, r3, 0x4ec4
/* 8025BA18  7F A4 EB 78 */	mr r4, r29
/* 8025BA1C  4B DC 89 69 */	bl getStatusRoomDt__20dStage_roomControl_cFi
/* 8025BA20  90 7C 01 D0 */	stw r3, 0x1d0(r28)
/* 8025BA24  80 7C 01 D0 */	lwz r3, 0x1d0(r28)
/* 8025BA28  9B A3 00 04 */	stb r29, 4(r3)
/* 8025BA2C  7F E3 FB 78 */	mr r3, r31
/* 8025BA30  3C 80 80 3A */	lis r4, d_s_d_s_room__stringBase0@ha /* 0x8039A388@ha */
/* 8025BA34  38 84 A3 88 */	addi r4, r4, d_s_d_s_room__stringBase0@l /* 0x8039A388@l */
/* 8025BA38  38 84 00 42 */	addi r4, r4, 0x42
/* 8025BA3C  7F C5 F3 78 */	mr r5, r30
/* 8025BA40  38 C0 00 40 */	li r6, 0x40
/* 8025BA44  4B DE 09 39 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 8025BA48  90 7C 01 CC */	stw r3, 0x1cc(r28)
/* 8025BA4C  80 7C 01 CC */	lwz r3, 0x1cc(r28)
/* 8025BA50  28 03 00 00 */	cmplwi r3, 0
/* 8025BA54  41 82 00 10 */	beq lbl_8025BA64
/* 8025BA58  80 9C 01 D0 */	lwz r4, 0x1d0(r28)
/* 8025BA5C  7F A5 EB 78 */	mr r5, r29
/* 8025BA60  4B DC B1 5D */	bl dStage_dt_c_roomLoader__FPvP11dStage_dt_ci
lbl_8025BA64:
/* 8025BA64  3B C0 00 00 */	li r30, 0
/* 8025BA68  7F A3 EB 78 */	mr r3, r29
/* 8025BA6C  4B DC 89 45 */	bl getMemoryBlock__20dStage_roomControl_cFi
/* 8025BA70  28 03 00 00 */	cmplwi r3, 0
/* 8025BA74  41 82 00 0C */	beq lbl_8025BA80
/* 8025BA78  4B DB 37 55 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 8025BA7C  7C 7E 1B 78 */	mr r30, r3
lbl_8025BA80:
/* 8025BA80  28 1E 00 00 */	cmplwi r30, 0
/* 8025BA84  41 82 00 0C */	beq lbl_8025BA90
/* 8025BA88  7F C3 F3 78 */	mr r3, r30
/* 8025BA8C  4B DB 37 41 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
lbl_8025BA90:
/* 8025BA90  38 60 00 02 */	li r3, 2
lbl_8025BA94:
/* 8025BA94  39 61 00 20 */	addi r11, r1, 0x20
/* 8025BA98  48 10 67 8D */	bl _restgpr_28
/* 8025BA9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8025BAA0  7C 08 03 A6 */	mtlr r0
/* 8025BAA4  38 21 00 20 */	addi r1, r1, 0x20
/* 8025BAA8  4E 80 00 20 */	blr 
