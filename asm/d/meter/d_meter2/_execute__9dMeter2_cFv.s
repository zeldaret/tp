lbl_8021F128:
/* 8021F128  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8021F12C  7C 08 02 A6 */	mflr r0
/* 8021F130  90 01 00 24 */	stw r0, 0x24(r1)
/* 8021F134  39 61 00 20 */	addi r11, r1, 0x20
/* 8021F138  48 14 30 A5 */	bl _savegpr_29
/* 8021F13C  7C 7D 1B 78 */	mr r29, r3
/* 8021F140  80 63 01 00 */	lwz r3, 0x100(r3)
/* 8021F144  4B DF 00 89 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 8021F148  7C 7F 1B 78 */	mr r31, r3
/* 8021F14C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021F150  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021F154  3B C3 01 00 */	addi r30, r3, 0x100
/* 8021F158  7F C3 F3 78 */	mr r3, r30
/* 8021F15C  38 80 00 00 */	li r4, 0
/* 8021F160  4B E1 51 31 */	bl isCollectMirror__20dSv_player_collect_cCFUc
/* 8021F164  2C 03 00 00 */	cmpwi r3, 0
/* 8021F168  40 82 00 2C */	bne lbl_8021F194
/* 8021F16C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021F170  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021F174  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8021F178  38 80 54 20 */	li r4, 0x5420
/* 8021F17C  4B E1 58 41 */	bl isEventBit__11dSv_event_cCFUs
/* 8021F180  2C 03 00 00 */	cmpwi r3, 0
/* 8021F184  41 82 00 10 */	beq lbl_8021F194
/* 8021F188  7F C3 F3 78 */	mr r3, r30
/* 8021F18C  38 80 00 00 */	li r4, 0
/* 8021F190  4B E1 50 E1 */	bl onCollectMirror__20dSv_player_collect_cFUc
lbl_8021F194:
/* 8021F194  7F C3 F3 78 */	mr r3, r30
/* 8021F198  38 80 00 03 */	li r4, 3
/* 8021F19C  4B E1 50 B1 */	bl isCollectCrystal__20dSv_player_collect_cCFUc
/* 8021F1A0  2C 03 00 00 */	cmpwi r3, 0
/* 8021F1A4  40 82 00 2C */	bne lbl_8021F1D0
/* 8021F1A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021F1AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021F1B0  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8021F1B4  38 80 54 10 */	li r4, 0x5410
/* 8021F1B8  4B E1 58 05 */	bl isEventBit__11dSv_event_cCFUs
/* 8021F1BC  2C 03 00 00 */	cmpwi r3, 0
/* 8021F1C0  41 82 00 10 */	beq lbl_8021F1D0
/* 8021F1C4  7F C3 F3 78 */	mr r3, r30
/* 8021F1C8  38 80 00 03 */	li r4, 3
/* 8021F1CC  4B E1 50 61 */	bl onCollectCrystal__20dSv_player_collect_cFUc
lbl_8021F1D0:
/* 8021F1D0  7F A3 EB 78 */	mr r3, r29
/* 8021F1D4  48 00 05 DD */	bl checkStatus__9dMeter2_cFv
/* 8021F1D8  80 7D 01 0C */	lwz r3, 0x10c(r29)
/* 8021F1DC  80 9D 01 24 */	lwz r4, 0x124(r29)
/* 8021F1E0  4B FF 21 7D */	bl exec__13dMeter2Draw_cFUl
/* 8021F1E4  7F A3 EB 78 */	mr r3, r29
/* 8021F1E8  48 00 0B 79 */	bl moveLife__9dMeter2_cFv
/* 8021F1EC  7F A3 EB 78 */	mr r3, r29
/* 8021F1F0  48 00 0F 91 */	bl moveKantera__9dMeter2_cFv
/* 8021F1F4  7F A3 EB 78 */	mr r3, r29
/* 8021F1F8  48 00 13 25 */	bl moveOxygen__9dMeter2_cFv
/* 8021F1FC  7F A3 EB 78 */	mr r3, r29
/* 8021F200  48 00 16 89 */	bl moveLightDrop__9dMeter2_cFv
/* 8021F204  7F A3 EB 78 */	mr r3, r29
/* 8021F208  48 00 1A 29 */	bl moveRupee__9dMeter2_cFv
/* 8021F20C  7F A3 EB 78 */	mr r3, r29
/* 8021F210  48 00 1E 9D */	bl moveKey__9dMeter2_cFv
/* 8021F214  7F A3 EB 78 */	mr r3, r29
/* 8021F218  48 00 33 01 */	bl moveButtonXY__9dMeter2_cFv
/* 8021F21C  7F A3 EB 78 */	mr r3, r29
/* 8021F220  48 00 20 25 */	bl moveButtonA__9dMeter2_cFv
/* 8021F224  7F A3 EB 78 */	mr r3, r29
/* 8021F228  48 00 25 CD */	bl moveButtonB__9dMeter2_cFv
/* 8021F22C  7F A3 EB 78 */	mr r3, r29
/* 8021F230  48 00 2C 99 */	bl moveButtonR__9dMeter2_cFv
/* 8021F234  7F A3 EB 78 */	mr r3, r29
/* 8021F238  48 00 2D C9 */	bl moveButtonZ__9dMeter2_cFv
/* 8021F23C  7F A3 EB 78 */	mr r3, r29
/* 8021F240  48 00 30 61 */	bl moveButton3D__9dMeter2_cFv
/* 8021F244  7F A3 EB 78 */	mr r3, r29
/* 8021F248  48 00 31 1D */	bl moveButtonC__9dMeter2_cFv
/* 8021F24C  7F A3 EB 78 */	mr r3, r29
/* 8021F250  48 00 32 45 */	bl moveButtonS__9dMeter2_cFv
/* 8021F254  7F A3 EB 78 */	mr r3, r29
/* 8021F258  48 00 3C 31 */	bl moveButtonCross__9dMeter2_cFv
/* 8021F25C  7F A3 EB 78 */	mr r3, r29
/* 8021F260  48 00 3E 99 */	bl moveTouchSubMenu__9dMeter2_cFv
/* 8021F264  7F A3 EB 78 */	mr r3, r29
/* 8021F268  48 00 4B 99 */	bl moveBombNum__9dMeter2_cFv
/* 8021F26C  7F A3 EB 78 */	mr r3, r29
/* 8021F270  48 00 50 E5 */	bl moveArrowNum__9dMeter2_cFv
/* 8021F274  7F A3 EB 78 */	mr r3, r29
/* 8021F278  48 00 54 09 */	bl movePachinkoNum__9dMeter2_cFv
/* 8021F27C  7F A3 EB 78 */	mr r3, r29
/* 8021F280  48 00 4F D9 */	bl moveBottleNum__9dMeter2_cFv
/* 8021F284  80 7D 01 20 */	lwz r3, 0x120(r29)
/* 8021F288  28 03 00 00 */	cmplwi r3, 0
/* 8021F28C  41 82 00 10 */	beq lbl_8021F29C
/* 8021F290  80 9D 01 24 */	lwz r4, 0x124(r29)
/* 8021F294  4B FE EA 51 */	bl _move__11dMeterMap_cFUl
/* 8021F298  48 00 00 0C */	b lbl_8021F2A4
lbl_8021F29C:
/* 8021F29C  80 7D 01 24 */	lwz r3, 0x124(r29)
/* 8021F2A0  4B FE F4 B5 */	bl meter_map_move__11dMeterMap_cFUl
lbl_8021F2A4:
/* 8021F2A4  7F A3 EB 78 */	mr r3, r29
/* 8021F2A8  48 00 3E 55 */	bl moveSubContents__9dMeter2_cFv
/* 8021F2AC  7F A3 EB 78 */	mr r3, r29
/* 8021F2B0  48 00 3F 19 */	bl move2DContents__9dMeter2_cFv
/* 8021F2B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021F2B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021F2BC  88 03 5E B5 */	lbz r0, 0x5eb5(r3)
/* 8021F2C0  28 00 00 00 */	cmplwi r0, 0
/* 8021F2C4  40 82 00 1C */	bne lbl_8021F2E0
/* 8021F2C8  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8021F2CC  28 00 00 00 */	cmplwi r0, 0
/* 8021F2D0  40 82 00 10 */	bne lbl_8021F2E0
/* 8021F2D4  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 8021F2D8  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 8021F2DC  4B FF EA 05 */	bl decHotSpringTimer__13dMeter2Info_cFv
lbl_8021F2E0:
/* 8021F2E0  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 8021F2E4  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 8021F2E8  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 8021F2EC  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 8021F2F0  B0 03 00 AE */	sth r0, 0xae(r3)
/* 8021F2F4  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8021F2F8  54 00 05 66 */	rlwinm r0, r0, 0, 0x15, 0x13
/* 8021F2FC  B0 03 00 AE */	sth r0, 0xae(r3)
/* 8021F300  38 00 00 00 */	li r0, 0
/* 8021F304  B0 03 00 B0 */	sth r0, 0xb0(r3)
/* 8021F308  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021F30C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021F310  98 03 5E 1F */	stb r0, 0x5e1f(r3)
/* 8021F314  98 03 5E 28 */	stb r0, 0x5e28(r3)
/* 8021F318  98 03 5E 45 */	stb r0, 0x5e45(r3)
/* 8021F31C  98 03 5E 21 */	stb r0, 0x5e21(r3)
/* 8021F320  98 03 5E 2A */	stb r0, 0x5e2a(r3)
/* 8021F324  98 03 5E 47 */	stb r0, 0x5e47(r3)
/* 8021F328  98 03 5E 64 */	stb r0, 0x5e64(r3)
/* 8021F32C  98 03 5E 65 */	stb r0, 0x5e65(r3)
/* 8021F330  98 03 5E 68 */	stb r0, 0x5e68(r3)
/* 8021F334  98 03 5E 69 */	stb r0, 0x5e69(r3)
/* 8021F338  98 03 5E 20 */	stb r0, 0x5e20(r3)
/* 8021F33C  98 03 5E 46 */	stb r0, 0x5e46(r3)
/* 8021F340  98 03 5E 2F */	stb r0, 0x5e2f(r3)
/* 8021F344  98 03 5E 30 */	stb r0, 0x5e30(r3)
/* 8021F348  98 03 5E 4C */	stb r0, 0x5e4c(r3)
/* 8021F34C  7F E3 FB 78 */	mr r3, r31
/* 8021F350  4B DE FE 7D */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 8021F354  38 60 00 01 */	li r3, 1
/* 8021F358  39 61 00 20 */	addi r11, r1, 0x20
/* 8021F35C  48 14 2E CD */	bl _restgpr_29
/* 8021F360  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8021F364  7C 08 03 A6 */	mtlr r0
/* 8021F368  38 21 00 20 */	addi r1, r1, 0x20
/* 8021F36C  4E 80 00 20 */	blr 
