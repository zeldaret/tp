lbl_8008933C:
/* 8008933C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80089340  7C 08 02 A6 */	mflr r0
/* 80089344  90 01 00 24 */	stw r0, 0x24(r1)
/* 80089348  39 61 00 20 */	addi r11, r1, 0x20
/* 8008934C  48 2D 8E 89 */	bl _savegpr_27
/* 80089350  7C 7B 1B 78 */	mr r27, r3
/* 80089354  7C 9C 23 78 */	mr r28, r4
/* 80089358  7C BD 2B 78 */	mr r29, r5
/* 8008935C  7C DE 33 78 */	mr r30, r6
/* 80089360  80 03 06 0C */	lwz r0, 0x60c(r3)
/* 80089364  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 80089368  41 82 00 40 */	beq lbl_800893A8
/* 8008936C  7F A4 EB 78 */	mr r4, r29
/* 80089370  4B FF F8 B5 */	bl searchEventArgData__9dCamera_cFPc
/* 80089374  7C 60 1B 78 */	mr r0, r3
/* 80089378  2C 00 FF FF */	cmpwi r0, -1
/* 8008937C  40 82 00 14 */	bne lbl_80089390
/* 80089380  7F 83 E3 78 */	mr r3, r28
/* 80089384  7F C4 F3 78 */	mr r4, r30
/* 80089388  48 2D F7 A5 */	bl strcpy
/* 8008938C  48 00 00 74 */	b lbl_80089400
lbl_80089390:
/* 80089390  7F 83 E3 78 */	mr r3, r28
/* 80089394  1C 00 00 18 */	mulli r0, r0, 0x18
/* 80089398  7C 9B 02 14 */	add r4, r27, r0
/* 8008939C  80 84 05 28 */	lwz r4, 0x528(r4)
/* 800893A0  48 2D F7 8D */	bl strcpy
/* 800893A4  48 00 00 5C */	b lbl_80089400
lbl_800893A8:
/* 800893A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800893AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800893B0  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 800893B4  7F E3 FB 78 */	mr r3, r31
/* 800893B8  80 9B 04 EC */	lwz r4, 0x4ec(r27)
/* 800893BC  4B FB ED 89 */	bl getMySubstanceNum__16dEvent_manager_cFiPCc
/* 800893C0  2C 03 00 00 */	cmpwi r3, 0
/* 800893C4  41 82 00 28 */	beq lbl_800893EC
/* 800893C8  7F E3 FB 78 */	mr r3, r31
/* 800893CC  80 9B 04 EC */	lwz r4, 0x4ec(r27)
/* 800893D0  7F A5 EB 78 */	mr r5, r29
/* 800893D4  38 C0 00 04 */	li r6, 4
/* 800893D8  4B FB ED 15 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 800893DC  7C 64 1B 78 */	mr r4, r3
/* 800893E0  7F 83 E3 78 */	mr r3, r28
/* 800893E4  48 2D F7 49 */	bl strcpy
/* 800893E8  48 00 00 18 */	b lbl_80089400
lbl_800893EC:
/* 800893EC  7F 83 E3 78 */	mr r3, r28
/* 800893F0  7F C4 F3 78 */	mr r4, r30
/* 800893F4  48 2D F7 39 */	bl strcpy
/* 800893F8  38 60 00 00 */	li r3, 0
/* 800893FC  48 00 00 08 */	b lbl_80089404
lbl_80089400:
/* 80089400  38 60 00 01 */	li r3, 1
lbl_80089404:
/* 80089404  39 61 00 20 */	addi r11, r1, 0x20
/* 80089408  48 2D 8E 19 */	bl _restgpr_27
/* 8008940C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80089410  7C 08 03 A6 */	mtlr r0
/* 80089414  38 21 00 20 */	addi r1, r1, 0x20
/* 80089418  4E 80 00 20 */	blr 
