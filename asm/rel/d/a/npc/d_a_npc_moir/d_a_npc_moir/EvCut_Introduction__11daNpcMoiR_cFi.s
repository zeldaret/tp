lbl_80A802C4:
/* 80A802C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A802C8  7C 08 02 A6 */	mflr r0
/* 80A802CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A802D0  39 61 00 20 */	addi r11, r1, 0x20
/* 80A802D4  4B 8E 1F 05 */	bl _savegpr_28
/* 80A802D8  7C 7C 1B 78 */	mr r28, r3
/* 80A802DC  7C 9D 23 78 */	mr r29, r4
/* 80A802E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A802E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A802E8  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80A802EC  7F C3 F3 78 */	mr r3, r30
/* 80A802F0  3C A0 80 A8 */	lis r5, d_a_npc_moir__stringBase0@ha /* 0x80A83840@ha */
/* 80A802F4  38 A5 38 40 */	addi r5, r5, d_a_npc_moir__stringBase0@l /* 0x80A83840@l */
/* 80A802F8  38 A5 00 69 */	addi r5, r5, 0x69
/* 80A802FC  38 C0 00 03 */	li r6, 3
/* 80A80300  4B 5C 7D ED */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A80304  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A80308  40 82 00 0C */	bne lbl_80A80314
/* 80A8030C  38 60 00 00 */	li r3, 0
/* 80A80310  48 00 00 78 */	b lbl_80A80388
lbl_80A80314:
/* 80A80314  7F C3 F3 78 */	mr r3, r30
/* 80A80318  7F A4 EB 78 */	mr r4, r29
/* 80A8031C  4B 5C 7A 31 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A80320  2C 03 00 00 */	cmpwi r3, 0
/* 80A80324  41 82 00 60 */	beq lbl_80A80384
/* 80A80328  80 1F 00 00 */	lwz r0, 0(r31)
/* 80A8032C  2C 00 00 01 */	cmpwi r0, 1
/* 80A80330  41 82 00 38 */	beq lbl_80A80368
/* 80A80334  40 80 00 10 */	bge lbl_80A80344
/* 80A80338  2C 00 00 00 */	cmpwi r0, 0
/* 80A8033C  40 80 00 10 */	bge lbl_80A8034C
/* 80A80340  48 00 00 44 */	b lbl_80A80384
lbl_80A80344:
/* 80A80344  2C 00 00 03 */	cmpwi r0, 3
/* 80A80348  40 80 00 3C */	bge lbl_80A80384
lbl_80A8034C:
/* 80A8034C  A8 1C 0E 06 */	lha r0, 0xe06(r28)
/* 80A80350  2C 00 00 00 */	cmpwi r0, 0
/* 80A80354  41 82 00 0C */	beq lbl_80A80360
/* 80A80358  38 00 00 00 */	li r0, 0
/* 80A8035C  B0 1C 0E 06 */	sth r0, 0xe06(r28)
lbl_80A80360:
/* 80A80360  38 60 00 01 */	li r3, 1
/* 80A80364  48 00 00 24 */	b lbl_80A80388
lbl_80A80368:
/* 80A80368  A8 1C 0E 06 */	lha r0, 0xe06(r28)
/* 80A8036C  2C 00 00 02 */	cmpwi r0, 2
/* 80A80370  41 82 00 0C */	beq lbl_80A8037C
/* 80A80374  38 00 00 02 */	li r0, 2
/* 80A80378  B0 1C 0E 06 */	sth r0, 0xe06(r28)
lbl_80A8037C:
/* 80A8037C  38 60 00 01 */	li r3, 1
/* 80A80380  48 00 00 08 */	b lbl_80A80388
lbl_80A80384:
/* 80A80384  38 60 00 00 */	li r3, 0
lbl_80A80388:
/* 80A80388  39 61 00 20 */	addi r11, r1, 0x20
/* 80A8038C  4B 8E 1E 99 */	bl _restgpr_28
/* 80A80390  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A80394  7C 08 03 A6 */	mtlr r0
/* 80A80398  38 21 00 20 */	addi r1, r1, 0x20
/* 80A8039C  4E 80 00 20 */	blr 
