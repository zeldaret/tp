lbl_80259CAC:
/* 80259CAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80259CB0  7C 08 02 A6 */	mflr r0
/* 80259CB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80259CB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80259CBC  93 C1 00 08 */	stw r30, 8(r1)
/* 80259CC0  4B F4 5D 51 */	bl dKy_getdaytime_hour__Fv
/* 80259CC4  80 8D 8D E8 */	lwz r4, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80259CC8  98 64 04 C4 */	stb r3, 0x4c4(r4)
/* 80259CCC  4B F4 5D 71 */	bl dKy_getdaytime_minute__Fv
/* 80259CD0  80 8D 8D E8 */	lwz r4, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80259CD4  98 64 04 C5 */	stb r3, 0x4c5(r4)
/* 80259CD8  4B F4 EE 61 */	bl dKy_get_dayofweek__Fv
/* 80259CDC  80 8D 8D E8 */	lwz r4, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80259CE0  98 64 04 C6 */	stb r3, 0x4c6(r4)
/* 80259CE4  4B F5 28 99 */	bl dKy_darkworld_check__Fv
/* 80259CE8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80259CEC  41 82 00 18 */	beq lbl_80259D04
/* 80259CF0  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80259CF4  38 63 04 A4 */	addi r3, r3, 0x4a4
/* 80259CF8  38 80 00 01 */	li r4, 1
/* 80259CFC  48 05 CB B5 */	bl setInDarkness__10Z2SceneMgrFb
/* 80259D00  48 00 00 14 */	b lbl_80259D14
lbl_80259D04:
/* 80259D04  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80259D08  38 63 04 A4 */	addi r3, r3, 0x4a4
/* 80259D0C  38 80 00 00 */	li r4, 0
/* 80259D10  48 05 CB A1 */	bl setInDarkness__10Z2SceneMgrFb
lbl_80259D14:
/* 80259D14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80259D18  38 A3 61 C0 */	addi r5, r3, g_dComIfG_gameInfo@l
/* 80259D1C  88 05 4E 0A */	lbz r0, 0x4e0a(r5)
/* 80259D20  7C 1F 07 74 */	extsb r31, r0
/* 80259D24  3B C5 4E 00 */	addi r30, r5, 0x4e00
/* 80259D28  7F C3 F3 78 */	mr r3, r30
/* 80259D2C  7F E4 FB 78 */	mr r4, r31
/* 80259D30  88 05 4E 0B */	lbz r0, 0x4e0b(r5)
/* 80259D34  7C 05 07 74 */	extsb r5, r0
/* 80259D38  4B DD 2C 19 */	bl getLayerNo_common__14dComIfG_play_cFPCcii
/* 80259D3C  7C 65 1B 78 */	mr r5, r3
/* 80259D40  7F C3 F3 78 */	mr r3, r30
/* 80259D44  7F E4 FB 78 */	mr r4, r31
/* 80259D48  4B DA D4 75 */	bl mDoAud_setSceneName__FPCcll
/* 80259D4C  4B DA D4 AD */	bl mDoAud_load1stDynamicWave__Fv
/* 80259D50  2C 03 00 00 */	cmpwi r3, 0
/* 80259D54  40 82 00 0C */	bne lbl_80259D60
/* 80259D58  38 60 00 00 */	li r3, 0
/* 80259D5C  48 00 00 08 */	b lbl_80259D64
lbl_80259D60:
/* 80259D60  38 60 00 02 */	li r3, 2
lbl_80259D64:
/* 80259D64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80259D68  83 C1 00 08 */	lwz r30, 8(r1)
/* 80259D6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80259D70  7C 08 03 A6 */	mtlr r0
/* 80259D74  38 21 00 10 */	addi r1, r1, 0x10
/* 80259D78  4E 80 00 20 */	blr 
