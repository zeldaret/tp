lbl_8009C27C:
/* 8009C27C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8009C280  7C 08 02 A6 */	mflr r0
/* 8009C284  90 01 00 24 */	stw r0, 0x24(r1)
/* 8009C288  39 61 00 20 */	addi r11, r1, 0x20
/* 8009C28C  48 2C 5F 4D */	bl _savegpr_28
/* 8009C290  7C 7C 1B 79 */	or. r28, r3, r3
/* 8009C294  40 82 00 0C */	bne lbl_8009C2A0
/* 8009C298  38 60 00 00 */	li r3, 0
/* 8009C29C  48 00 00 AC */	b lbl_8009C348
lbl_8009C2A0:
/* 8009C2A0  3B A0 00 00 */	li r29, 0
/* 8009C2A4  38 00 00 00 */	li r0, 0
/* 8009C2A8  90 1C 00 00 */	stw r0, 0(r28)
/* 8009C2AC  38 60 00 03 */	li r3, 3
/* 8009C2B0  48 00 00 B1 */	bl getFirstData__7dTres_cFUc
/* 8009C2B4  7C 7F 1B 79 */	or. r31, r3, r3
/* 8009C2B8  41 82 00 8C */	beq lbl_8009C344
/* 8009C2BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009C2C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009C2C4  3B C3 09 58 */	addi r30, r3, 0x958
/* 8009C2C8  7F C3 F3 78 */	mr r3, r30
/* 8009C2CC  38 80 00 01 */	li r4, 1
/* 8009C2D0  4B F9 86 65 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 8009C2D4  2C 03 00 00 */	cmpwi r3, 0
/* 8009C2D8  41 82 00 6C */	beq lbl_8009C344
/* 8009C2DC  88 1F 00 10 */	lbz r0, 0x10(r31)
/* 8009C2E0  28 00 00 FF */	cmplwi r0, 0xff
/* 8009C2E4  41 82 00 2C */	beq lbl_8009C310
/* 8009C2E8  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8009C2EC  28 04 00 FF */	cmplwi r4, 0xff
/* 8009C2F0  41 82 00 54 */	beq lbl_8009C344
/* 8009C2F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009C2F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009C2FC  88 1F 00 01 */	lbz r0, 1(r31)
/* 8009C300  7C 05 07 74 */	extsb r5, r0
/* 8009C304  4B F9 90 5D */	bl isSwitch__10dSv_info_cCFii
/* 8009C308  2C 03 00 00 */	cmpwi r3, 0
/* 8009C30C  41 82 00 38 */	beq lbl_8009C344
lbl_8009C310:
/* 8009C310  7F C3 F3 78 */	mr r3, r30
/* 8009C314  38 80 00 03 */	li r4, 3
/* 8009C318  4B F9 86 1D */	bl isDungeonItem__12dSv_memBit_cCFi
/* 8009C31C  2C 03 00 00 */	cmpwi r3, 0
/* 8009C320  40 82 00 24 */	bne lbl_8009C344
/* 8009C324  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8009C328  38 60 00 01 */	li r3, 1
/* 8009C32C  88 1F 00 01 */	lbz r0, 1(r31)
/* 8009C330  7C 04 07 74 */	extsb r4, r0
/* 8009C334  4B FA 30 D9 */	bl calcFloorNo__10dMapInfo_cFfbi
/* 8009C338  7C 60 07 74 */	extsb r0, r3
/* 8009C33C  90 1C 00 00 */	stw r0, 0(r28)
/* 8009C340  3B A0 00 01 */	li r29, 1
lbl_8009C344:
/* 8009C344  7F A3 EB 78 */	mr r3, r29
lbl_8009C348:
/* 8009C348  39 61 00 20 */	addi r11, r1, 0x20
/* 8009C34C  48 2C 5E D9 */	bl _restgpr_28
/* 8009C350  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8009C354  7C 08 03 A6 */	mtlr r0
/* 8009C358  38 21 00 20 */	addi r1, r1, 0x20
/* 8009C35C  4E 80 00 20 */	blr 
