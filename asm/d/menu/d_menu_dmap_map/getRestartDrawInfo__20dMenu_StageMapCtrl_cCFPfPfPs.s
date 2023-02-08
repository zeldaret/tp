lbl_801C1218:
/* 801C1218  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801C121C  7C 08 02 A6 */	mflr r0
/* 801C1220  90 01 00 34 */	stw r0, 0x34(r1)
/* 801C1224  39 61 00 30 */	addi r11, r1, 0x30
/* 801C1228  48 1A 0F B1 */	bl _savegpr_28
/* 801C122C  7C 7C 1B 78 */	mr r28, r3
/* 801C1230  7C 9D 23 78 */	mr r29, r4
/* 801C1234  7C BE 2B 78 */	mr r30, r5
/* 801C1238  7C DF 33 78 */	mr r31, r6
/* 801C123C  38 61 00 08 */	addi r3, r1, 8
/* 801C1240  4B E7 DD ED */	bl getMapRestartPos__10dMapInfo_nFv
/* 801C1244  80 61 00 08 */	lwz r3, 8(r1)
/* 801C1248  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801C124C  90 61 00 14 */	stw r3, 0x14(r1)
/* 801C1250  90 01 00 18 */	stw r0, 0x18(r1)
/* 801C1254  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801C1258  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801C125C  7F 83 E3 78 */	mr r3, r28
/* 801C1260  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 801C1264  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 801C1268  7F A4 EB 78 */	mr r4, r29
/* 801C126C  7F C5 F3 78 */	mr r5, r30
/* 801C1270  4B FF FE B9 */	bl cnvPosTo2Dpos__20dMenu_StageMapCtrl_cCFffPfPf
/* 801C1274  4B E7 DE 85 */	bl getMapRestartAngleY__10dMapInfo_nFv
/* 801C1278  28 1F 00 00 */	cmplwi r31, 0
/* 801C127C  41 82 00 08 */	beq lbl_801C1284
/* 801C1280  B0 7F 00 00 */	sth r3, 0(r31)
lbl_801C1284:
/* 801C1284  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 801C1288  38 60 00 01 */	li r3, 1
/* 801C128C  4B E7 E2 E5 */	bl calcNowStayFloorNo__10dMapInfo_cFfb
/* 801C1290  39 61 00 30 */	addi r11, r1, 0x30
/* 801C1294  48 1A 0F 91 */	bl _restgpr_28
/* 801C1298  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801C129C  7C 08 03 A6 */	mtlr r0
/* 801C12A0  38 21 00 30 */	addi r1, r1, 0x30
/* 801C12A4  4E 80 00 20 */	blr 
