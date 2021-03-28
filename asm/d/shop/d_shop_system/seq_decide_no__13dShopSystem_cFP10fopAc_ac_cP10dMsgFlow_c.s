lbl_80199FA4:
/* 80199FA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80199FA8  7C 08 02 A6 */	mflr r0
/* 80199FAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80199FB0  39 61 00 20 */	addi r11, r1, 0x20
/* 80199FB4  48 1C 82 29 */	bl _savegpr_29
/* 80199FB8  7C 7D 1B 78 */	mr r29, r3
/* 80199FBC  7C 9E 23 78 */	mr r30, r4
/* 80199FC0  7C BF 2B 78 */	mr r31, r5
/* 80199FC4  80 83 0F 58 */	lwz r4, 0xf58(r3)
/* 80199FC8  38 A0 00 02 */	li r5, 2
/* 80199FCC  4B FF E4 79 */	bl moveCursor__13dShopSystem_cFiUc
/* 80199FD0  7C 66 1B 78 */	mr r6, r3
/* 80199FD4  7F E3 FB 78 */	mr r3, r31
/* 80199FD8  7F C4 F3 78 */	mr r4, r30
/* 80199FDC  38 A0 00 00 */	li r5, 0
/* 80199FE0  48 0B 02 F9 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80199FE4  2C 03 00 00 */	cmpwi r3, 0
/* 80199FE8  41 82 00 1C */	beq lbl_8019A004
/* 80199FEC  7F A3 EB 78 */	mr r3, r29
/* 80199FF0  38 80 00 08 */	li r4, 8
/* 80199FF4  4B FF D5 E9 */	bl offFlag__13dShopSystem_cFi
/* 80199FF8  7F A3 EB 78 */	mr r3, r29
/* 80199FFC  38 80 00 02 */	li r4, 2
/* 8019A000  48 00 03 45 */	bl setSeq__13dShopSystem_cFUc
lbl_8019A004:
/* 8019A004  38 60 00 00 */	li r3, 0
/* 8019A008  39 61 00 20 */	addi r11, r1, 0x20
/* 8019A00C  48 1C 82 1D */	bl _restgpr_29
/* 8019A010  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8019A014  7C 08 03 A6 */	mtlr r0
/* 8019A018  38 21 00 20 */	addi r1, r1, 0x20
/* 8019A01C  4E 80 00 20 */	blr 
